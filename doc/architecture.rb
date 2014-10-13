# This is an overview of what the basic architecture of tramea should look like,
# from the perspective of the objects and methods involved in the ORM (if any).

# NOTE: this is a "read-only" concept of EoL, and doesn't include many of the
# features that we'll eventually need with users and collections and the like.

# NOTE: the "ENUM" fields here are actually somewhat dynamic. ...I'm not sure
# how to best handle this. I don't want to use globalize to translate them for
# each row, that's ridiculous. Translations really need to be in the YAML. But
# when a new value comes in from a source, we DO want to be able to handle that.
# We'll have to have part of the import process review those additions and
# schedule them for inclusion in the code (or perhaps even dynamically add them
# somehow, though I worry that might introduce garbage).

# TODO: rails g closure_tree:migration concept  ... I couldn't get this to work.
# and rails g closure_tree:migration section
# TODO: run things and build the migrations.
# TODO: Come up with MySQL queries for converting old data to this schema.
# TODO: Benchmark some of the expected complex queries...
# TODO: Develop some basic Solr (or whatever) caching and benchmark that...
# TODO: Perhaps "Overview" should be its own resource. Imports could
# automatically add relationships to data this way, and managing the resource
# would be much cleaner. Nice.
# TODO: Capture links. (User added links.)
# TODO: Generalize external resource links (did you start that?)


# This INCLUDES the idea of a "classification." No need to separate them now.
# LATER: relationship to (many) users
# LATER: contact emails (by type)
# LATER: auto-vetted status
# LATER: archived boolean
# LATER: active boolean (default true)
# LATER: harvesting schedule
# LATER: harvesting status
source.
  name # Intended to be the "short" name throughout the site.
  # full_name is the long and "proper" name. About half our CPs use this.
  full_name
  abbr # A really (!) short name, essentially. i.e.: ITIS, CoL, NCBI...
  description
  private_notes
  admin_notes
  icon # Paperclip (this is the original file, which we'll resize to our largest
       # allowable size, then resize again to small with a new name)
  url # This is their homepage, which we link to a lot.
  concepts
  links # There can be many other urls, each with its own name/title.
# rails g scaffold source name:string full_name:string abbr:string description:text private_notes:text admin_notes:text icon:attachment url:string

link.
  belongs_to :source
  acts_as_list scope: :source
  # NOTE: name is not I18n'ed; the source gets to specify these and use their
  # own language; this is not something that will be seen often, anyway.
  name 
  url
# rails g scaffold link source_id:integer name:string url:string position:integer

# This is ONE source's concept of a collection of data (around a set of names)
concept.
  acts_as_tree dependent: :destroy
  belongs_to :source
  belongs_to :synth
  original_id # This is the (string) identifier the source gave us that they use
              # internally to refer to this concept.
  associations
# rails g scaffold concept source_id:integer:index parent_id:integer original_id:string synth_id:integer
# As per https://github.com/mceachen/closure_tree :
# rails g closure_tree:migration concept

# synth = SynthesizedConcept, but that's anoying to type and the idea is going
# to be ubiquitous, so the short name should be adequate.
synth.
  sources # Through concepts
  concepts
  traits # see the filters from concept, above.
  associations # To media, including names.
# Yes, there's nothing here except an id. That's because it's just a simple
# collection of concepts:
# rails g scaffold synth 

# This reference is for "simple" references, stored only as a string
literature_reference.
  parent # POLY: medium or name
  string # What we want the reference to appear as
# rails g scaffold literature_reference parent_type:string parent_id:integer string:string
# add_index :literature_references, [:parent_type, :parent_id]

appearance.
  name
  publication
  page # Note this is actually a string.
  url_snippet
# rails g scaffold appearance name_id:integer publication_id:integer page:string url_snippet:string

publication.
  title
  url
  appearance_url_template # Includes the string :appearance, which will be
    # replaced with the appearance.url_snippet
  details
  year # Note this is actually a string.
# rails g scaffold publication title:string url:string appearance_url_template:string details:string year:string

# I'm *slightly* worried about this being confusing with all the "name"
# attributes, but I don't think it's worth giving this some obscure name (heh)
# to avoid that problem.
name.
  string
  type # ENUM - scientific, synonym, common, parents, Ambiguous synonym, etc...
  locale # Might as well make this nil for scientific names.
  preview?
  appearances # BHL
  literature_references
  associations
# rails g scaffold name string:string type:integer locale:integer:index preview:boolean

# THIS IS AN ABSTRACT CLASS: it's implemented by image, video, sound, map, and
# article.
class Medium
  # Attribute: guid
  # Attribute: locale # includes a special string for "scientific" as a language.
  # LATER: preview?
  has_many :associations
  has_many :translations
  has_many :literature_references
end

image.
  title
  description
  copyright
  license
  original_url # Meaning, where we downloaded it from.
  full_size_url
  crop_url # This is the mid-size, March-of-life image.
  thumbnail_url
  old_images
  collection_attributions
# rails g scaffold image guid:string locale:integer:index preview:boolean title:string description:text copyright:string license_id:integer original_url:string full_size_url:string crop_url:string thumbnail_url:string
# rails g scaffold old_image guid:string locale:integer preview:boolean title:string description:text copyright:string license_id:integer original_url:string full_size_url:string crop_url:string thumbnail_url:string image_id:integer

video.
  title
  description
  copyright
  license
  original_url # Meaning, where we downloaded it from.
  url # You'll play this
  javascript
  stylesheet
  collection_attributions
  old_videos
# rails g scaffold video guid:string locale:integer:index preview:boolean title:string description:text copyright:string license_id:integer original_url:string url:string javascript_id:integer stylesheet_id:integer
# rails g scaffold old_video guid:string locale:integer preview:boolean title:string description:text copyright:string license_id:integer original_url:string url:string javascript_id:integer stylesheet_id:integer video_id:integer

sound.
  title
  description
  copyright
  license
  original_url
  url
  javascript
  stylesheet
  collection_attributions
  old_sounds
# rails g scaffold sound guid:string locale:integer:index preview:boolean title:string description:text copyright:string license_id:integer original_url:string url:string javascript_id:integer stylesheet_id:integer
# rails g scaffold old_sound guid:string locale:integer preview:boolean title:string description:text copyright:string license_id:integer original_url:string url:string javascript_id:integer stylesheet_id:integer sound_id:integer

article.
  title
  body
  copyright
  license
  original_url
  javascript
  stylesheet
  section # Where in the TOC it shows up (only for aritcles)
  collection_attributions
  old_articles
  def toc
    # This should essentially be something like select(:section_id).uniq ...
    # ...and, really, we want this defined on an ActiveRecord::Association for
    # this class, kind of like a scope, but not...
  end
# rails g scaffold article guid:string locale:integer:index preview:boolean section_id:integer title:string body:text copyright:string license_id:integer original_url:string javascript_id:integer stylesheet_id:integer
# rails g scaffold old_article guid:string locale:integer preview:boolean section_id:integer title:string body:text copyright:string license_id:integer original_url:string javascript_id:integer stylesheet_id:integer article_id:integer

map.
  title
  description
  copyright
  license
  original_url
  full_size_url
  crop_url # This is the mid-size, March-of-life image.
  thumbnail_url
  javascript
  stylesheet
  old_maps
# rails g scaffold map guid:string locale:integer:index preview:boolean title:string description:text copyright:string license_id:integer original_url:string full_size_url:string crop_url:string thumbnail_url:string javascript_id:integer stylesheet_id:integer 
# rails g scaffold old_map guid:string locale:integer preview:boolean title:string description:text copyright:string license_id:integer original_url:string full_size_url:string crop_url:string thumbnail_url:string javascript_id:integer stylesheet_id:integer map_id:integer

# These guys are exceptions because they don't store most of the media
trait
  subject # POLY: either an association (normal data) or a trait (metadata).
  original_predicate_name # We want to store the source's preferred name, here
  predicate_uri
  def object
    value || text || object_uri
  end
  value # can be nil; Numerical information, but note that it's stored as a
        # string so we don't have to assert type information.
  text # can be nil; if we have a value, THIS WILL BE THE ORIGINAL IMPORTED
    # STRING (in original_units). ...So be careful! Always read value first!
  object_uri # can be nil
  traits # Metadata.
  units # Normalized. ENUM I18n
# rails g scaffold trait subject_type:string subject_id:integer original_predicate_name:string predicate_uri_id:integer value:string text:string object_uri_id:integer units:integer original_units_uri_id:integer
# add_index :traits, [:subject_type, :subject_id]

translation
  of_medium # POLY
  to_medium # POLY
# rails g scaffold translation of_medium_type:string of_medium_id:integer to_medium_type:string to_medium_id:integer
# add_index :translations, [:of_medium_type, :of_medium_id]

collection_attribution.
  medium # POLY
  who
  belongs_to :role
# rails g scaffold collection_attribution medium_type:integer:string medium_id:integer:index who:string url:string role_id:integer

# Source, photographer, editor, etc, etc... generalized solution.
role.
  name # ENUM
# rails g scaffold roles name:integer

uri.
  translates :name, :description
  string # alias to_s; Unique by locale
  locale
  name
  description
  # important_metadata will be extracted from metadata and shown in the
  # predicate column (i.e.: lifestage and statistical methods).
  important_metadata?
  show_in_glossary?
  # NOTE: list has no scope, we want to know the overall priority (for, q.v.,
  # the overview.)
  acts_as_list
  has_and_belongs_to_many :sections
# rails g scaffold uri string:string locale:integer:index position:integer show_in_glossary:boolean important_metadata:boolean
# NOTE: cannot use #change in migration. Add:
# Uri.create_translation_table! name: :string, description: :text 
# Uri.drop_translation_table!
# rails g migration create_sections_uris uri_id:integer:index section_id:integer:index

# Sections are stored as a kind of enumeration. However, each of those IDs also
# need to have an order and can be nested in a tree. This table handles those
# two aspects of a section; the name is handled in the YAML (though it uses type
# as a hard-coded string for readability).
section.
  type # ENUM
  def name ; I18n.t("table_of_contents_sections.#{type}") ; end
  acts_as_tree order: 'position'
# rails g scaffold section type:integer position:integer parent_id:integer
# As per https://github.com/mceachen/closure_tree :
# rails g closure_tree:migration section

# LATER: These two will allow us to store user-added data (associated "from" a
# synth)
# LATER: user_site_id 
# LATER: user_id
# NOTE: the relationships to higher-level taxa will need special consideration
# for denormalization (i.e.: through Solr or neo4j).
association.
  # NOTE: in our "read-only" starting state, "parent" will ALWAYS be a concept...
  # it's only once users are added that it can be a synth:
  parent # POLY: either a synth or a concept
  child # POLY: medium, trait, or name
  trusted
  reviewed
  visible
  overview?
  # NOTE: rating is *legacy*. Tramea will not allow object ratings, only
  # ordering:
  rating
  # num_ratings will help us display *whether* something was actually rated, and
  # how many times:
  num_ratings
  # The list order here is a replacement for "ratings" (which IMO never worked):
  acts_as_list scope: [:parent]
  # Scopes:
  by_locale
  overview
  images
  maps
  articles
  videos
  sounds
  names
  visible
  hidden
  unreviewed
  trusted
  untrusted
# rails g scaffold association parent_type:string parent_id:integer child_type:string child_id:integer trusted:boolean reviewed:boolean visible:boolean overview:boolean position:integer rating:float num_ratings:integer
# add_index :associations, [:parent_type, :parent_id]
# add_index :associations, [:child_type, :child_id]

license.
  type # ENUM
  icon
  def abbr 
    I18n.t("licenses.#{type}.abbr")
  end
  def name
    I18n.t("licenses.#{type}.name")
  end
  def description
    I18n.t("licenses.#{type}.description")
  end
# rails g scaffold license type:integer icon:attachment 

# Javascripts and stylesheets are stored on the server, so these tables just
# point to the script. Note that the EOL Repository *could* tell us about a
# new script, in which case we'll have to upload it to the server as well as
# adding an entry here.
javascript.
  name
# rails g scaffold javascript name:string

stylesheet.
  name
# rails g scaffold stylesheet name:string

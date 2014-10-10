# This is an overview of what the basic architecture of tramea should look like,
# from the perspective of the objects and methods involved in the ORM (if any).

# NOTE: this is a "read-only" concept of EoL, and doesn't include many of the
# features that we'll eventually need with users and collections and the like.

# This INCLUDES the idea of a "classification." No need to separate them now.
source.
  name # Intended to be the "short" name throughout the site.
  full_name
  abbr # A really (!) short name, essentially.  :)
  description
  private_description # Needed?
  admin_description # Needed?
  concepts.
    roots
  # partner - will add this later. For now, don't care.
  icon # Paperclip (this is the original file, which we'll resize to our largest
       # allowable size, then resize again to small with a new name)
  small_icon_url
  url # This is their homepage, which we link to a lot.
  links # There are any other urls.
# rails g scaffold source name:string:index full_name:string abbr:string description:text icon:attachment url:string small_icon_url:string

link.
  belongs_to :source
  name # I18n
  url
  acts_as_list scope: :source
# rails g scaffold link source_id:integer name:string url:string position:integer

# This is ONE source's concept of a collection of data (around a set of names)
concept.
  acts_as_tree # And all the methods that come with it...
  source
  original_id # This is the (string) identifier the source gave us that they use
              # internally to refer to this concept.
  associations
# concept source_id:integer:index parent_id:integer original_id:string
# As per https://github.com/mceachen/closure_tree :
# rails g migration create_concepts_hierarchies 

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

# This reference is for
literature_reference.
  is_for # POLY: either medium or name
  appears_as # What we want the reference to appear as
# rails g scaffold literature_reference is_for_type:string is_for_id:integer locale:integer:index appears_as:string
# add_index :literature_references, [:is_for_type, :is_for_id]

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
  type # I18n
  locale # Might as well make this nil for scientific names.
  preview?
  appearances # BHL
  literature_references
  associations
# rails g scaffold name string:string locale:integer:index preview:boolean

# THIS IS AN ABSTRACT CLASS: it's implemented by image, video, sound, map, and
# article.
class Medium
  attr_accessor :guid
  attr_accessor :locale # includes a special string for "scientific" as a language.
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
  collection_details
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
  collection_details
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
  collection_details
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
  collection_details
  old_articles
# rails g scaffold article guid:string locale:integer:index preview:boolean section_id:integer title:string body:text copyright:string license_id:integer original_url:string javascript_id:integer stylesheet_id:integer section_id:integer
# rails g scaffold old_article guid:string locale:integer preview:boolean section_id:integer title:string body:text copyright:string license_id:integer original_url:string javascript_id:integer stylesheet_id:integer section_id:integer article_id:integer

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
  predicate # alias #known_uri
  def object
    value || text || uri
  end
  value # can be nil; Numerical information, but note that it's stored as a
        # string so we don't have to assert type information.
  text # can be nil; if we have a value, THIS WILL BE THE ORIGINAL IMPORTED
    # STRING (in original_units). ...So be careful! Always read value first!
  uri # can be nil
  traits # Metadata.
  units # Normalized. ENUM I18n
  original_units
  statistical_method
  lifestage
# rails g scaffold trait subject_type:string subject_id:integer original_predicate_name:string known_uri_id:integer value:string text:string uri:string units:integer original_units:string statistical_method:string source_id:integer lifestage:string
# add_index :traits, [:subject_type, :subject_id]

translation
  of_medium # POLY
  to_medium # POLY
# rails g scaffold translation of_medium_type:string of_medium_id:integer to_medium_type:string to_medium_id:integer
# add_index :translations, [:of_medium_type, :of_medium_id]

collection_detail.
  medium # POLY
  who
  belongs_to role
# rails g scaffold collection_detail medium_type:integer:string medium_id:integer:index who:string url:string role_id:integer

# Source, photographer, editor, etc, etc... generalized solution.
role
  name # I18n

known_uri.
  uri # Unique by locale
  locale
  name
  description
  # NOTE: list has no scope, we want to know the overall priority (for, q.v.,
  # the overview.)
  acts_as_list
  has_and_belongs_to_many :sections
# rails g scaffold known_uri uri:string locale:integer:index name:string description:text position:integer
# rails g migration create_known_uris_sections known_uri_id:integer:index section_id:integer:index

# Items in a TOC
section.
  name
  acts_as_tree
  acts_as_list
# rails g scaffold secion name:string position:integer parent_id:integer
# As per https://github.com/mceachen/closure_tree :
# rails g migration create_sections_hierarchies 

# TODO: how will we handle the relationships to higher-level taxa?
association.
  # NOTE: in our "read-only" starting state, "from" will ALWAYS be a concept...
  # it's only once users are added that it can be a synth:
  parent # POLY: either a synth or a concept
  child # POLY: medium, trait, or name
  # LATER: These two will allow us to store user-added data (associated "from" a
  # synth)
  # LATER: user_site_id 
  # LATER: user_id
  trusted
  reviewed
  visible
  overview?
  # The list order here is a replacement for "ratings" (which IMO never worked):
  acts_as_list scope: [:from]
  # Scopes:
    by_locale
    overview
    images
    maps
    articles.
      toc # AKA table of contents
    videos
    sounds
    names.
      by_locale
      related.
        parents
        children
        common.
          by_locale
        synonym
    visible
    hidden
    unreviewed
    trusted
    untrusted
# rails g scaffold association parent_type:string parent_id:integer child_type:string child_id:integer by_type:string by_id:integer type:integer trusted:boolean reviewed:boolean visible:boolean overview:boolean subtype:integer position:integer
# add_index :associations, [:parent_type, :parent_id]
# add_index :associations, [:child_type, :child_id]

# Grrr. I wish this could be enumerable, but we don't want to block the
# repository from telling us about a new license...
license.
  abbr # i.e. "cc-by-nc"
  name # i.e. "Creative Commons Attribution Non-commercial" # I18n
  description
  icon

# Javascripts and stylesheets are stored on the server, so these tables just
# point to the script. Note that the EOL Repository *could* tell us about a
# new script, in which case we'll have to upload it to the server as well as
# adding an entry here.
javascript.
  name

stylesheet.
  name

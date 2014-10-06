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
  concepts.
    roots
  # partner - will add this later. For now, don't care.
  icon # Paperclip (this is the original file, which we'll resize to larger.)
  small_icon_url
  url # This is their homepage, which we link to a lot.
  links # There are any other urls.
# source name:string:index full_name:string abbr:string description:text icon::attachment url:string small_icon_url:string

link.
  source
  name
  url
  position
# link source_id:integer name:string url:string position:integer

# This is ONE source's concept of a collection of data.
concept.
  acts_as_tree # And all the methods that come with it...
  source
  associations.
    # See associations under "synth", below. Same filters.
  traits.
    toc
    ranges
    glossary
# concept source_id:integer:index parent_id:integer
# As per https://github.com/mceachen/closure_tree :
# rails g migration create_concepts_hierarchies 

# synth = SynthesizedConcept, but that's anoying to type and the idea is going
# to be ubiquitous, so the short name should be adequate.
synth.
  sources
  concepts # ...Do we even really need this? :S It doesn't show up anywhere.
  traits # see the filters from concept, above.
  associations. # To media, including names.
  literature_references # Just store as strings for now...
  bhl_references
# Yes, there's nothing here except an id. That's because it's just a simple
# collection of concepts:
# synth 

literature_reference.
  synth # DENORM
  medium # The source where this ref came from.
  locale
  string
# literature_reference synth_id:integer:index medium_id:integer locale:string string:string

bhl_reference.
  synth
  publication_title
  publication_url
  year # Note this is actually a string.
  page # Note this is actually a string.
  details
  url
# bhl_reference synth_id:integer:index publication_title:string publication_url:string year:string page:string details:string url:string

medium.
  concept
  string # alias #title
  description # alias #body
  synth # I haven't decided on whether we want to do this. Need to measure it...
        # And to do that, it's easier to start WITH it... So, we have DUPLICATES
        # in this table; but, hey, this *is* the DENORM EOL!
  guid
  locale # includes a special string for "scientific" as a language.
  associations
  translations
  copyright
  license # In some cases, this is N/A, but that's fine. ENUM
  source_url # Meaning, where we downloaded it from.
  source_id # What they originally tagged it with.
  javascript # ENUM - any extra JS that must be loaded to display this
  stylesheet # ENUM - any extra styles that must be loaded to display this
  revisions. # via GUID
    latest
  collection_details
  preview?
  literature_references # Just stored as strings for now.
  section # Where in the TOC it shows up (only for aritcles)
  full_size_url # This is also used for videos and sounds to play it.
  thumbnail_url
  crop_url # This is the mid-size, March-of-life image.
# medium concept_id:integer:index string:string description:text synth_id:integer:index guid:string locale:string copyright:string license:integer source_url:string source_id:string preview:boolean section_id:integer full_size_url:string thumbnail_url:string crop_url:string javascript:integer stylesheet:integer

# These guys are exceptions because they don't store most of the media
trait
  subject # Polymorphic: either an association or a trait.
  original_predicate_name # We want to store the source's preferred name, here
  predicate # alias #known_uri
  object # Checks value first, then text, then uri.
  value # can be nil; Numerical information, but note that it's stored as a
        # string so we don't have to assert type information.
  text # can be nil; if we have a value, THIS WILL BE THE ORIGINAL IMPORTED
    # STRING (in original_units). ...So be careful! Always read value first!
  uri # can be nil
  traits # Metadata.
  units # Normalized. ENUM
  original_units
  statistical_method # ENUM
  source
# trait subject_type:string subject_id:integer original_predicate_name:string known_uri_id:integer value:string text:string uri:string units:integer original_units:string statistical_method:integer source_id:integer
# NOTE: add_index :traits, [:subject_type, :subject_id]

translation
  of # source medium
  to # translated medium
# translation of_medium_id:integer:index to_medium_id:integer

collection_detail.
  medium
  who
  url # If "as" is "source", then this would be the link to the source's page.
  role # Source, photographer, editor, etc, etc... generalized solution. ENUM
# collection_detail medium_id:integer:index who:string url:string role:integer

known_uri.
  of # Unique by locale
  locale
  name
  description
  position
# known_uri of:string locale:string name:string description:text position:integer

# TODO - we should generalize the Biomedical terms and Nucleotide Sequence types

# Items in a TOC
section.
  name
  acts_as_tree
  position
# secion name:string position:integer parent_id:integer

association.
  from # polymorphic: either a synth or a concept
  to # polymorphic: either a medium or a trait
  by # polymorphic: source... or ... uhh... LATER it will be user... :\
  type # ENUM 
  subtype # ENUM This is used (at least) by names, i.e.: "Ambiguous synonym"
  trusted
  reviewed
  visible
  overview? # Let's overload this for "preferred" with names.
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
# association from_type:string from_id:integer to_type:string to_id:integer by_type:string by_id:integer type:integer trusted:boolean reviewed:boolean visible:boolean overview:boolean subtype:integer

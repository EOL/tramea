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
  partner
  icon
  url # This is their homepage, which we link to a lot.
  urls # There are any other urls.

icon.
  small_url
  large_url

# This is ONE source's concept of a collection of data.
concept.
  source
  classification
  associations.
    # See associations under "synth", below. Same filters.

# synth = SynthesizedConcept, but that's anoying to type and the idea is going
# to be ubiquitous, so the short name should be adequate.
synth.
  sources
  concepts # ...Do we even really need this? :S It doesn't show up anywhere.
  associations. # To media, including names.
    by_locale
    overview
    count # Applies to all filters too, of course.
    images
    maps.
      interactive
    articles.
      toc # AKA table of contents
    videos
    sounds
    traits.
      toc
      ranges
      glossary
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
  reindex # Will enqueue a process to rebuild the synth from the original data.
  classifications # Through sources.
  literature_references # Just store as strings for now...
  bhl_references

literature_reference.
  medium # The source where this ref came from.
  locale
  text

bhl_reference.
  publication_title
  publication_url
  year
  page # Note this is actually a string.
  details
  url

# Perhaps this is abstract, perhaps there is a media table and the extra info is
# stored in another place. I haven't decided.  :D
medium.
  guid
  locale # includes a special string for "scientific" as a language.
  associations
  translations
  copyright
  license # In some cases, this is N/A, but that's fine.
  source_url # Meaning, where we downloaded it from.
  source_id # What they originally tagged it with.
  revisions. # via GUID
    latest
  collected_by
  preview?
  literature_references # Just stored as strings for now.

translation
  of # source medium
  to # translated medium
  by # Not sure how to store this; let's use a string for now.

collection_detail.
  who
  url # If "as" is "source", then this would be the link to the source's page.
  as # Source, photographer, editor, etc, etc... generalized solution. ENUM

article.
  title
  body
  section # Where in the TOC it shows up

image.
  title
  attribution # The exact string we want to show up.
  description
  full_size_url
  thumbnail_url
  crop_url # This is the mid-size, March-of-life image.

video.
  title
  attribution # The exact string we want to show up.
  description
  full_size_url
  thumbnail_url

sound.
  title
  attribution # The exact string we want to show up.
  description
  url

name
  text

trait
  subject # Either a synth or a trait.
  original_predicate_name # We want to store the source's preferred name, here
  predicate # is a Uri
  object # Checks value first, then text, then uri.
  value # can be nil; Numerical information.
  text # can be nil; if we have a value, THIS WILL BE THE ORIGINAL IMPORTED
    # STRING (in original_units). ...So be careful! Always read value first!
  uri # can be nil
  traits # Metadata.
  units # Normalized. ENUM
  original_units
  statistical_method
  source

uri.
  url # Unique by locale
  locale
  name
  description
  order
  synths

map.
  interactive?

# TODO - we should generalize the Biomedical terms and Nucleotide Sequence types

# Items in a TOC
section.
  name
  order

association.
  from
  to
  by # source, usually
  as # ENUM This is used (at least) by names, i.e.: "Ambiguous synonym"
  trusted
  reviewed
  visible
  overview? # Let's overload this for "preferred" with names.

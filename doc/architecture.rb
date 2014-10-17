# NOTE: This was NOT WORTH KEEPING UP TO DATE, so I removed all but the notes,
# which I'm still using.

# NOTE: the "ENUM" fields here are actually somewhat dynamic. ...I'm not sure
# how to best handle this. I don't want to use globalize to translate them for
# each row, that's ridiculous. Translations really need to be in the YAML. But
# when a new value comes in from a source, we DO want to be able to handle that.
# We'll have to have part of the import process review those additions and
# schedule them for inclusion in the code (or perhaps even dynamically add them
# somehow, though I worry that might introduce garbage).

# TODO: Perhaps "Overview" should be its own resource. Imports could
# automatically add relationships to data this way, and managing the resource
# would be much cleaner. Nice.
# TODO: Capture links. (User added links.)
# TODO: Generalize external resource links (did you start that?)


# This INCLUDES the idea of a "classification." No need to separate them now.
# source:
# LATER: relationship to (many) users
# LATER: contact emails (by type)
# LATER: auto-vetted status
# LATER: archived boolean
# LATER: active boolean (default true)
# LATER: harvesting schedule
# LATER: harvesting status

# Associations:
# LATER: These two will allow us to store user-added data (associated "from" a
# synth)
# LATER: user_site_id 
# LATER: user_id
# NOTE: the relationships to higher-level taxa will need special consideration
# for denormalization (i.e.: through Solr or neo4j).

class Node < ActiveRecord::Base
  belongs_to :dataset
  belongs_to :synth

  has_many :associations, as: :parent

  acts_as_tree dependent: :destroy

  # NOTE: Yes, this is HUGE and obnoxious. But I do believe this is is the best
  # way to deal with ranks. :\
  # NOTE: normalized using:
  # map {|s| s.gsub(/[\W]+/, '_').gsub(/_$/, '').gsub(/^_/, # '').downcase.
  #   sub("sub_", "sub").sub("super_", "super") }.sort.uniq
  # NOTE: I also removed things that I thought weren't ranks and things that
  # were abbreviations or duplicates; this list WILL change once we hear from SPG.
  # NOTE: added _rank to those which use reserved names. :|
  enum rank: [
    :class_rank, :cohort, :convar, :cultivar, :division, :family, :form, :forma,
    :genus, :hybrid, :hybrid_formula, :informal, :infraclass, :infradivision,
    :infrakingdom, :infraorder, :infraspecies, :infraspecificname,
    :infrasubspecificname, :kingdom, :lusus, :microgene, :monster, :mutant,
    :nothoform, :nothogenus, :nothospecies, :nothosubspecies, :nothotaxon,
    :nothovariety, :order_rank, :parvorder, :phylum, :prole, :pseudovariety, :race,
    :section, :series, :species, :species_group, :species_subgroup, :status,
    :stirps, :subclass, :subdivision, :subfamily, :subform, :subgenus,
    :subkingdom, :suborder, :subphylum, :subsection, :subseries, :subspecies,
    :subsubf, :subtaxon, :subtribe, :subvariety, :sugenus, :supercohort,
    :superclass_rank, :superfamily, :superkingdom, :superorder, :superphylum,
    :supertribe, :tax_vag, :taxon, :tribe, :unranked, :variety
  ]

  # This is an alternative to closure_tree's .rebuild!, which mysteriously seems
  # to abort without doing anything.
  def self.rebuild_all
    Rails.logger.info "** #{Time.now.strftime('%Y-%m-%d %I:%M%p')}: Starting Node.rebuild_all"
    Node.where(parent_id: 0).find_each do |node|
      Rails.logger.info "** #{Time.now.strftime('%Y-%m-%d %I:%M%p')}: Rebuilding Node ##{node.id} (Synth ##{node.synth_id})"
      node.rebuild!
    end
    Rails.logger.info "** #{Time.now.strftime('%Y-%m-%d %I:%M%p')}: Node.rebuild_all complete."
  end

end

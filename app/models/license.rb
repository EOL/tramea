class License < ActiveRecord::Base
  # TODO: (for many classes, only mentioned here.) We need a way to add enums.
  # ...Namely, when we import things from partners, we *can* get new enumerable
  # values. So we'll need a system--probably a rake task--that actually adds
  # that data to the database AND to the associated class! ...A little scary,
  # and it needs thought, but having these as enums is REALLY helpful (in terms
  # of translations and storing integers in the DB).
  enum type: [:public_domain, :all_right_reserved, :cc, :by_sa, :by_nc,
    :by_nc_sa, :cc_zero, :no_known_restrictions, :na]
  # TODO: fix the attachment arguments:
  has_attached_file :icon,
    styles: { :medium => "300x300>", :thumb => "100x100>" },
    default_url: "/images/:style/missing.png"

  def abbr 
    I18n.t("licenses.#{type}.abbr")
  end
  def name
    I18n.t("licenses.#{type}.name")
  end
  def description
    I18n.t("licenses.#{type}.description")
  end
end

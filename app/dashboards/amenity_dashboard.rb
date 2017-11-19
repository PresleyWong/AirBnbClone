require "administrate/base_dashboard"

class AmenityDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    place: Field::BelongsTo,
    id: Field::Number,
    air_conditiong: Field::Boolean,
    cable_tv: Field::Boolean,
    carbon_monoxide_detector: Field::Boolean,
    dryer: Field::Boolean,
    elevator: Field::Boolean,
    essentials: Field::Boolean,
    family_friendly: Field::Boolean,
    first_aid_kit: Field::Boolean,
    gym: Field::Boolean,
    handicap_accessible: Field::Boolean,
    heating: Field::Boolean,
    hot_tub: Field::Boolean,
    indoor_fireplace: Field::Boolean,
    internet: Field::Boolean,
    kitchen: Field::Boolean,
    pets_allowed: Field::Boolean,
    pool: Field::Boolean,
    shampoo: Field::Boolean,
    smoke_detector: Field::Boolean,
    smoking_allowed: Field::Boolean,
    tv: Field::Boolean,
    washer: Field::Boolean,
    wireless_internet: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :place,
    :id,
    :air_conditiong,
    :cable_tv,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :place,
    :id,
    :air_conditiong,
    :cable_tv,
    :carbon_monoxide_detector,
    :dryer,
    :elevator,
    :essentials,
    :family_friendly,
    :first_aid_kit,
    :gym,
    :handicap_accessible,
    :heating,
    :hot_tub,
    :indoor_fireplace,
    :internet,
    :kitchen,
    :pets_allowed,
    :pool,
    :shampoo,
    :smoke_detector,
    :smoking_allowed,
    :tv,
    :washer,
    :wireless_internet,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :place,
    :air_conditiong,
    :cable_tv,
    :carbon_monoxide_detector,
    :dryer,
    :elevator,
    :essentials,
    :family_friendly,
    :first_aid_kit,
    :gym,
    :handicap_accessible,
    :heating,
    :hot_tub,
    :indoor_fireplace,
    :internet,
    :kitchen,
    :pets_allowed,
    :pool,
    :shampoo,
    :smoke_detector,
    :smoking_allowed,
    :tv,
    :washer,
    :wireless_internet,
  ].freeze

  # Overwrite this method to customize how amenities are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(amenity)
  #   "Amenity ##{amenity.id}"
  # end
end

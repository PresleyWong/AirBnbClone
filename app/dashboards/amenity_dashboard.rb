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
    kitchen: Field::Boolean,
    internet: Field::Boolean,
    tv: Field::Boolean,
    cable_tv: Field::Boolean,
    washer: Field::Boolean,
    gym: Field::Boolean,
    handicap_accessible: Field::Boolean,
    smoking_allowed: Field::Boolean,
    indoor_fireplace: Field::Boolean,
    air_conditiong: Field::Boolean,
    heating: Field::Boolean,
    dryer: Field::Boolean,
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
    :kitchen,
    :internet,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :place,
    :id,
    :kitchen,
    :internet,
    :tv,
    :cable_tv,
    :washer,
    :gym,
    :handicap_accessible,
    :smoking_allowed,
    :indoor_fireplace,
    :air_conditiong,
    :heating,
    :dryer,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :place,
    :kitchen,
    :internet,
    :tv,
    :cable_tv,
    :washer,
    :gym,
    :handicap_accessible,
    :smoking_allowed,
    :indoor_fireplace,
    :air_conditiong,
    :heating,
    :dryer,
  ].freeze

  # Overwrite this method to customize how amenities are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(amenity)
  #   "Amenity ##{amenity.id}"
  # end
end

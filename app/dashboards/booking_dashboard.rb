require "administrate/base_dashboard"

class BookingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    place: Field::BelongsTo,
    id: Field::Number,
    num_adult: Field::Number,
    num_child: Field::Number,
    total_price: Field::String.with_options(searchable: false),
    check_in_date: Field::DateTime,
    check_out_date: Field::DateTime,
    confirmation: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :place,
    :id,
    :num_adult,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :place,
    :id,
    :num_adult,
    :num_child,
    :total_price,
    :check_in_date,
    :check_out_date,
    :confirmation,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :place,
    :num_adult,
    :num_child,
    :total_price,
    :check_in_date,
    :check_out_date,
    :confirmation,
  ].freeze

  # Overwrite this method to customize how bookings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(booking)
  #   "Booking ##{booking.id}"
  # end
end

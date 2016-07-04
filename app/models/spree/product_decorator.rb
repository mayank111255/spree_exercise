Spree::Product.class_eval do
  scope :publishable, -> { where(publishable: true) }
end

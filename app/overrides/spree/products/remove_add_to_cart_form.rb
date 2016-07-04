Deface::Override.new(
  virtual_path: 'spree/products/_cart_form',
  name: 'remove_add_to_cart_form',
  surround: '.add-to-cart .input-group',
  text: '<% if @product.publishable %> <%= render_original %> <% end %>'
)

Spree::ProductsController.class_eval do
  before_action :show, :check_product_visibility

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = load_products_via_searcher(@searcher).includes(:possible_promotions)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

  private

    def check_product_visibility
      return unless @product
      redirect_to :admin_login if !@product.publishable && !spree_current_user.try(:admin?)
    end
end

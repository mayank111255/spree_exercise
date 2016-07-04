Spree::HomeController.class_eval do
  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = load_products_via_searcher(@searcher).includes(:possible_promotions)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
end

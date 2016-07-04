Spree::StoreController.class_eval do

  private
    def load_products_via_searcher(searcher)
      products = searcher.retrieve_products
      spree_current_user.try(:admin?) ? products : products.publishable
    end
end

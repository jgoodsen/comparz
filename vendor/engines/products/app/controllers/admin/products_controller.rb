module Admin
  class ProductsController < Admin::BaseController

    crudify :product,
            :title_attribute => 'name', :xhr_paging => true

  end
end

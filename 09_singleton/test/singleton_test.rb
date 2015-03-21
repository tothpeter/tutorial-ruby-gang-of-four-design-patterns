require 'test_helper'
require 'product'
require 'product_controller'

PRODUCT = Product.new "Tomato", :fruit

describe ProductController do
  it "cannot be accessed more then once" do
    -> { ProductController.new }.must_raise NoMethodError
  end

  it "retrives a product" do
    controller = ProductController.instance
    controller.show
    controller.product.must_equal PRODUCT
  end
end

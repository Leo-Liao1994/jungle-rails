class LineItem < ActiveRecord::Base

  belongs_to :order
  belongs_to :product

  monetize :item_price_cents, numericality: true
  monetize :total_price_cents, numericality: true

  def get_product 
    id = self.product_id
    product = Product.find(id)
    return product
  end
    
end

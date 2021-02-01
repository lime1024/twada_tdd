class Product
  CATEGORIES = ['ワードプロセッサ', 'スプレッドシート']

  attr_reader :category, :name, :price

  def self.categories
    CATEGORIES
  end

  def initialize(category:, name:, price:)
    @category = category if Product.categories.include?(category)
    @name = name
    @price = price
  end
end

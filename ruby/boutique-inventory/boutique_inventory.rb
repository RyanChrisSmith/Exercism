class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name] }.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size] == {}}
  end

  def stock_for_item(name)
    results = @items.select { |item| item[:name] == name }.first
    results[:quantity_by_size]
  end

  def total_stock
    total = 0
    results = @items.map { |item| item[:quantity_by_size] }
    results.each do |one|
      total += one.values.sum
    end
    total
  end

  private
  attr_reader :items
end

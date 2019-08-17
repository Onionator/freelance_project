require 'rails_helper'

describe Product do
  it("will create a new product with a titleized name") do
    Product.create(name: "wacky wavy inflatable food", cost: "9.95", country_of_origin: "United States of America")
    product = Product.where(name: "Wacky Wavy Inflatable Food")
    expect(product.first.name).to(eq("Wacky Wavy Inflatable Food"))
  end
end

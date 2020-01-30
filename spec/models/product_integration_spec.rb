require 'rails_helper'



describe('creates a new product', {:type => :feature}) do
  it('creates a new product and then goes back to all products') do
    visit('/products')
    click_on('All Products')
    click_on('Add a new product')
    fill_in('Name', :with => 'Wacky wavy inflatable food')
    fill_in('Cost', :with => 7)
    fill_in('Country of origin', :with => 'United States of America')
    click_on('Create Product')
    expect(page).to have_content('Wacky Wavy Inflatable Food')
  end
end

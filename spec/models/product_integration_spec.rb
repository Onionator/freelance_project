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

describe('deletes a product', {:type => :feature}) do
  it('deletes a product') do
    visit('/products')
    click_on('Add a new product')
    fill_in('Name', :with => 'Greenleaf')
    fill_in('Cost', :with => 7)
    fill_in('Country of origin', :with => 'United States of America')
    click_on('Create Product')
    click_on('Greenleaf')
    click_on('Edit this product')
    click_on('Delete Product')
    expect(page).not_to have_content('Greenleaf')
  end
end

describe('leave a new review', {:type => :feature}) do
  it('leaves a review') do
    visit('/products')
    click_on('All Products')
    click_on('Add a new product')
    fill_in('Name', :with => 'Monkey Meat')
    fill_in('Cost', :with => 7)
    fill_in('Country of origin', :with => 'United States of America')
    click_on('Create Product')
    click_on('Monkey Meat')
    click_on('Edit this product')
    click_on('Leave a Review')
    fill_in('Rating', :with => 'Monkey Meat')
    fill_in('Author', :with => 7)
    fill_in('Content body', :with => 'Wackiest waviest Food in the World. There will never be anything better.')
    click_on('Create Review')
    expect(page).to have_content('Wackiest waviest Food in the World. There will never be anything better.')
  end
end

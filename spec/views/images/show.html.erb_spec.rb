require 'rails_helper'

RSpec.describe "images/show", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :caption => "Caption"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Caption/)
  end
end

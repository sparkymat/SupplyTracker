require 'rails_helper'

RSpec.describe "districts/show", type: :view do
  before(:each) do
    @district = assign(:district, District.create!(name: "Kottayam", code: "KTM", local_name:"കോട്ടയം"))
  end

  it "renders attributes in <p>" do
    render
  end
end

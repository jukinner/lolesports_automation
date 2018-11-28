require_relative '../spec_helper.rb'

describe 'Homepage navigation' do
  before(:each) do
    @driver = Homepage.new()
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can visit homepage and confirm logo is present' do
    logo = @driver.find_element_with_wait(class: 'riotbar-logo') ? true : false
    expect(logo).to eq(true)
  end

  it 'can confirm homepage title' do
    title = @driver.get_title
    expect(title).to eq('LoL Esports')
  end
end
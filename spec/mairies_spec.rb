require_relative '../lib/mairies.rb'

describe "the get_townhall_email" do
  it "should return an array" do
    expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).to be_instance_of Array
  end
  it "should not be nil" do 
  	expect(get_townhall_email("http://www.annuaire-des-mairies.com/95/ableiges.html")).not_to be_nil
  end

describe 'get_townhall_urls' do
  it 'should check if the email is well found' do
    expect(get_townhall_email('/95/ableiges.html')).to eq('mairie.ableiges95@wanadoo.fr')
    expect(get_townhall_email('/95/la-roche-guyon.html')).to eq('mairie.larocheguyon@wanadoo.fr')
  end

end
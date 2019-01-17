require_relative '../lib/02_deputies'


describe "the get_deputy_email method" do
  it "should return a hash" do
  x = get_deputy_email
  expect(x).to be_instance_of Array
  end
end

# get_deputy_email.to be_instance_of Array retourne une erreur car le " .to be_instance_of " ne s'applique qu'a "expect"


describe "the perform method" do
  it "should call the get_deputy_email method " do
    expect(perform).not_to be_nil  # renvoi toutsauf rien
  end
end

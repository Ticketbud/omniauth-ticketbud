require 'spec_helper'

describe "OmniAuth::Strategies::Ticketbud" do
  subject do
    OmniAuth::Strategies::Ticketbud.new(nil)
  end

  it 'should be named ticketbud' do
    subject.options.name.should eq(:ticketbud)
  end

  context 'client options' do
    it 'has main api site' do
      subject.options.client_options.site.should eq('https://api.ticketbud.com')
    end

    it 'has the correct authorize_path' do
      subject.options.client_options.authorize_url.should eq("/oauth/authorize")
    end

    it 'has the correct token_url' do
      subject.options.client_options.token_url.should eq("/oauth/token")
    end
  end
end

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Ticketbud < OmniAuth::Strategies::OAuth2
      option :name, :ticketbud

      option :client_options, {
        :site => "https://api.ticketbud.com",
        :authorize_url => "/oauth/authorize",
        :token_url => "/oauth/token"
      }

      uid { raw_info["user"]["id"] }

      info do
        {
          :first_name => raw_info["user"]["first_name"],
          :last_name => raw_info["user"]["first_name"],
          :email => raw_info["user"]["email"]
        }
      end

      extra do
        { user: raw_info["user"] }
      end

      def raw_info
        @raw_info ||= access_token.get('/me.json').parsed
      end

    end
  end
end

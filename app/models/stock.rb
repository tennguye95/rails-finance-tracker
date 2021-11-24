class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                        secret_token: 'Tsk_7fee8f2b416a489abca00b522d7ee49d',
                                        endpoint: 'https://sandbox.iexapis.com/v1')
        client.price(ticker_symbol)
    end
          
end

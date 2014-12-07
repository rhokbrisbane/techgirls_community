class MapAdapter
  class << self
    def create_point(postcode)
      ::HTTParty.post(map_provider_url,
        headers: { 'Authorization' => "Token #{map_provider_api_token}" },
        body: {
          address: "#{postcode} Australia",
          data: '{}'
        })
    end

    private

    def map_provider_url
      'http://bigsky.io/api/maps/166/layers/154/points'
    end

    def map_provider_api_token
      Rails.application.secrets.big_sky_api_token
    end
  end
end

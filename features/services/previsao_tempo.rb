# frozen_string_literal: true

module Services
  class PrevisaoTempo
    include HTTParty
    base_uri 'https://api.openweathermap.org/data/2.5'
    default_params appid: '7d56a7e81660e11fa3b9b2bc5a708c3b', units: 'metric'
    format :json

    def get_coordenadas(latitude, longitude)
      self.class.get("/weather?lat=#{latitude}&lon=#{longitude}")
    end

    def get_via_cep(country = Faker::Address.country)
      self.class.get("/weather?q=#{country}")
    end
  end
end

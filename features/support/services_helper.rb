# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../services/*_services.rb')].sort.each { |file| require file }

module Services
  def previsao_tempo_sv
    Services::PrevisaoTempo.new
  end
end

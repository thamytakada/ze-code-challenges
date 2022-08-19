# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../cadastro/*_page.rb')].sort.each { |file| require file }

module Pages
  def cadastro_pg
    Pages::Cadastro.new
  end
end
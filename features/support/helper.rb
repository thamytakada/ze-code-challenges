# frozen_string_literal: true

# !/usr/bin/env ruby
require 'fileutils'

module Helper
  def wait_for_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end

  def take_screenshot(file_name, result)
    file_path = "results/screenshots/test_#{result}"
    date_path = Time.now.strftime('%Y_%m_%d').to_s
    timer_path = Time.now.strftime('_%H_%M_%S').to_s
    screenshot = "#{file_path}/#{file_name}#{timer_path}.png"
    page.save_screenshot(screenshot)
    attach(screenshot, 'image/png')
  end
end
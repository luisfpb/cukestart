case $driver
when "other"
  #cofigure other browser here
else
	$capybara_driver = :chrome

	Capybara.register_driver :chrome do |app|
		caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--start-maximized" ]})
		Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
	end
end

Capybara.default_driver = $capybara_driver
Capybara.default_max_wait_time = 15
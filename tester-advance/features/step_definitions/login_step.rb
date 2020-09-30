Given('navigate to login page') do
    @driver = Selenium::WebDriver.for :firefox
    @driver.get 'http://the-internet.herokuapp.com/login'
    @driver.manage.window.maximize
end

When('user type {string} and {string}') do |string, string2|
    @driver.find_element(id: 'username').send_keys string
    @driver.find_element(id: 'password').send_keys string2
    #sleep 2
    @driver.find_element(css: ".fa.fa-2x.fa-sign-in").click
end
  
Then('the msg {string} displays') do |string|
    @msg = string
    expect(@driver.find_element(id: 'flash').text).to include(@msg)
    @driver.quit
end

When ('I type invalid username {string} and invalid password {string}') do |string, string2|
    @username = string
    @passwprd = string2
    @driver.find_element(id: 'username').send_keys(@username)
    @driver.find_element(id: 'password').send_keys(@password)
end

When('press Login') do
    @driver.find_element(xpath: "//i[contains(text(),'Login')]").click
end

Then ('{string} displays') do |string|
    @msg1 = string
    expect(@driver.find_element(id: 'flash').text).to include(@msg1)
    @driver.quit
end
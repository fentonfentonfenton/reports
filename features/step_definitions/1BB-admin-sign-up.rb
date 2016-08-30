
Given(/^I navigate to a POC widget$/) do
      visit 'https://bespoke.bookingbug.com/ces/staging/new_booking_event.html'
  page.should have_content('MEMBERS')
  page.save_screenshot('/var/lib/jenkins/userContent/A.png')
  embed('/var/lib/jenkins/userContent/A.png', 'image/png', 'page')
end


And(/^I login with valid credentials$/) do

  click_button('Login')
  page.save_screenshot('/var/lib/jenkins/userContent/B.png')
  embed('/var/lib/jenkins/userContent/B.png', 'image/png', 'page')
end

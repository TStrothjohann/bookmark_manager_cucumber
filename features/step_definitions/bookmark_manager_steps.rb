Given(/^I am on the homepage$/) do
  Link.create(:url => "http://www.makersacademy.com", :title => "Makers Academy")
  visit('/')
end

Then(/^I can see saved links$/) do
  expect(page).to have_content("Makers Academy")
end
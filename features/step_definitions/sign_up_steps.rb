Given(/^I navigate to the sign up page$/) do
  sign_up_page.load_page
end

When(/^I enter valid details into the sign up form$/) do
  expect(sign_up_page.session_container.text_center[1].text).to eq 'Or with your email if you’d prefer:'
  sign_up_page.session_container.email_session.email.set(test_email)
  sign_up_page.session_container.email_session.password.set('test_passw0rd')
  sign_up_page.session_container.email_session.zipcode.set('SE16 4DG')
  sign_up_page.session_container.email_session.email_signup_form_submit.click
end

When(/^I click on lets fix the food chain button$/) do
  sign_up_page.session_container.email_session.email_signup_form_submit.click
end

Then(/^I should see sign up with social media copy$/) do
  expect(sign_up_page.session_container.text_center[0].text).to eq 'You can sign up with social media:'
end

Then(/^be the first copy is displayed$/) do
  expect(sign_up_page.session_container.email_session).to have_marketing_opt_in
  expect(sign_up_page.session_container.email_session).to have_fake_checkbox
end

Then(/^Already have an account\? Log in is displayed$/) do
  expect(sign_up_page.session_container.text_center[2].text).to eq 'Already have an account? Log in'
  expect(sign_up_page.session_container.text_center[2]).to have_a
end

Then(/^I am taken to the homepage$/) do
  expect(sign_up_page).to have_current_path '/london'
end

Then(/^I should see cant be blank error message$/) do
  expect(sign_up_page.session_container.session_errors.li[0].text).to eq 'Email can\'t be blank'
  expect(sign_up_page.session_container.session_errors.li[1].text).to eq 'Email can\'t be blank'
  expect(sign_up_page.session_container.session_errors.li[2].text).to eq 'Password can\'t be blank'
  expect(sign_up_page.session_container.session_errors.li[3].text).to eq 'Zipcode can\'t be blank'
end

And(/^I should see sign up with Facebook button$/) do
  expect(sign_up_page.session_container).to have_sso_buttons
end

And(/^I should see that I am logged in$/) do
  expect(sign_up_page.account_name.text).to eq 'Account'
end

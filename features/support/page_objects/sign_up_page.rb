class SignUpPage < SitePrism::Page
  set_url '/signup'

  section :session_container, '.session__container' do
    section :session_errors, '.session__errors' do
      elements :li, 'li'
    end
    sections :text_center, '.text-center' do
      element :a, 'a'
    end
    element :sso_buttons, '.sso-buttons'
    section :email_session, '.email-session' do
      element :email, '#email'
      element :password, '#password'
      element :zipcode, '#zipcode'
      element :fake_checkbox, '.fake-checkbox'
      element :marketing_opt_in, '#marketing_opt_in'
      element :email_signup_form_submit, '#email-signup-form-submit'
    end
  end

  element :account_name, '[data-qaid="account-name"]'

  def load_page(page_version = nil)
    load(v: page_version)
  end
end

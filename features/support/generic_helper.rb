def sign_up_page
  @_sign_up_page ||= SignUpPage.new
end

def test_email
  "#{Time.now.to_i}@farmdrop.com"
end

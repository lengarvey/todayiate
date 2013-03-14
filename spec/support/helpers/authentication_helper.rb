module AuthenticationHelpers
  def sign_in
    user = User.make!
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_button 'Sign in'
    user
  end
end

User.blueprint do
  email { Faker::Internet.email }
  password { 'password' }
end

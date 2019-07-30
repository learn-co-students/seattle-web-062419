class User < ApplicationRecord
  has_secure_password
  # def password=(password)
  #   Digest::SHA256.base64digest(password)
  # end
  #
  # def validates(password)
  #   self.password == password
  # end

  # login :
  #   if the password matches,
  #   take them to the index
  #   else render the login form again
end

# Get system admin
def system_admin
  admin = Admin.where(email: "system@blogCybele.com").first
  if admin.nil?
    password = Devise.friendly_token.first(12)
    admin = Admin.create(name: 'System', surname: 'System', email: "system@blogCybele.com", password: password, password_confirmation: password)
  end
  admin
end

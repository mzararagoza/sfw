class Admins::RegistrationsController < Devise::RegistrationsController
  layout 'admin_login'
  def after_inactive_sign_up_path_for(resource)
    admins_dashboard_path
  end
end

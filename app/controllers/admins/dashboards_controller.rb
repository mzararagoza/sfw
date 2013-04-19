class Admins::DashboardsController < AdminController
  expose(:girls){ Girl.where(:active => true).order("id DESC").scoped{} }
end

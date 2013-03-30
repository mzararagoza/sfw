class Admins::UiController < AdminController
  def show
    render params[:id]
  end
end

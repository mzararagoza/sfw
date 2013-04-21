class Admins::GirlsController < AdminController
  expose(:girls){ Girl.order("id DESC").scoped{} }
  expose(:girl)
  expose(:payments) { Payment}

  def create
    if girl.save
      flash[:notice] = t(:girl_was_successfully_created)
      redirect_to(admins_girls_path)
    else
      render :new
    end
  end

  def update
    if girl.save
      flash[:notice] = t(:girl_was_successfully_updated)
      redirect_to(admins_girls_path)
    else
      render :edit
    end
  end

end


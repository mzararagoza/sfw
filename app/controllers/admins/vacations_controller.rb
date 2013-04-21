class Admins::VacationsController < AdminController
  expose(:vacations){ Vacation.order("id DESC").scoped{} }
  expose(:vacation)
  expose(:girl){ 
    if params[:format] 
      girl = Girl.find(params[:format])
    else
      girl = vacation.girl.id
    end
    girl
  }

  def create
    if vacation.save
      flash[:notice] = t(:vacation_was_successfully_created)
      redirect_to(admins_girl_path(vacation.girl_id))
    else
      render :new
    end
  end

  def update
    if vacation.save
      flash[:notice] = t(:vacation_was_successfully_updated)
      redirect_to(admins_girl_path(vacation.girl_id))
    else
      render :edit
    end
  end

end




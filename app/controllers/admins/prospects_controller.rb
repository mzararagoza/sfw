class Admins::ProspectsController < AdminController
  expose(:prospects){ Prospect.order("id DESC").scoped{} }
  expose(:prospect)

  def create
    if prospect.save
      flash[:notice] = t(:prospect_was_successfully_created)
      redirect_to(admins_prospects_path)
    else
      render :new
    end
  end

  def update
    if prospect.save
      flash[:notice] = t(:prospect_was_successfully_updated)
      redirect_to(admins_prospects_path)
    else
      render :edit
    end
  end
end

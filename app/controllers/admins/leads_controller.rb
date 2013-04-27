class Admins::LeadsController < AdminController
  expose(:leads){ Lead.order("id DESC").scoped{} }
  expose(:lead)
  
  def create
    if lead.save
      flash[:notice] = t(:lead_was_successfully_created)
      redirect_to(admins_leads_path)
    else
      render :new
    end
  end

  def update
    if lead.save
      flash[:notice] = t(:lead_was_successfully_updated)
      redirect_to(admins_leads_path)
    else
      render :edit
    end
  end
end

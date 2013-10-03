class Admins::PropertiesController < AdminController
  expose(:properties){ Property.order("id DESC").scoped{} }
  expose(:property)

  def create
    if property.save
      flash[:notice] = t(:property_was_successfully_created)
      redirect_to(admins_properties_path)
    else
      render :new
    end
  end

  def update
    if property.save
      flash[:notice] = t(:property_was_successfully_updated)
      redirect_to(admins_properties_path)
    else
      render :edit
    end
  end

end


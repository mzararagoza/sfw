class Admins::LinksController < AdminController
  expose(:links){ Link.order("id DESC").scoped{} }
  expose(:link)

  def create
    if link.save
      flash[:notice] = t(:link_was_successfully_created)
      redirect_to(links_documents_path)
    else
      render :new
    end
  end

  def update
    if link.save
      flash[:notice] = t(:link_was_successfully_updated)
      redirect_to(admins_links_path)
    else
      render :edit
    end
  end

end


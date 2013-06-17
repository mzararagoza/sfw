class Admins::ProofsController < AdminController
  expose(:proofs){ Proof.order("id DESC").scoped{} }
  expose(:proof)
  expose(:girl){
    if params[:format]
      girl = Girl.find(params[:format])
    else
      girl = proof.girl.id
    end
    girl
  }

  def create
    if proof.save
      flash[:notice] = t(:exam_was_successfully_created)
      counter = params[:counter].to_i
      counter.times do |c|
        Drug.new(:proof_id => proof.id, :code => params['code_' + c.to_s], :abbreviation => params['abbreviation_' + c.to_s], :result => params['result_' + c.to_s], :unit => params['unit_' + c.to_s], :normal => params['normal_' + c.to_s], :comment => params['comment_' + c.to_s]).save

      end
      redirect_to(admins_girl_path(proof.girl.id))
    else
      render :new
    end
  end

  def update
    if exam.save
      flash[:notice] = t(:exam_was_successfully_updated)
      redirect_to(admins_girl_path(proof.girl.id))
    else
      render :edit
    end
  end

end


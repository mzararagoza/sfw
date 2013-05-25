class Admins::DashboardsController < AdminController
  expose(:girls){ Girl.order("id DESC").scoped{} }
  expose(:income){ 
     girl = Girl.order("id DESC").scoped{}
     girl.each do |g|
       income = g.payments.sum(:amount,:conditions=> "payment_type = 'receive_funds'" )
     end
  }
end

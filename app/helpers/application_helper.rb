module ApplicationHelper
  def payment_type_list
    [
      ['Credit','credit'],
      ['Debit','debit']
    ]
  end

  def payment_method_list
    [
      ['Cash','cash'],
      ['Check','chrck'],
      ['Credit Card','credit_card']
    ]
  end
end

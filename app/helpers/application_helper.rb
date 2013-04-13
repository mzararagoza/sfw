module ApplicationHelper
  def payment_type_list
    [
      ['Receive Funds','receive_funds'],
      ['Return Funds','return_funds']
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

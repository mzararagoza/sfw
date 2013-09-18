module ApplicationHelper
  def payment_type_list
    [
      ['receive funds','receive_funds'],
      ['return funds','return_funds']
    ]
  end

  def vendor_payment_type_list
    [
      ['Paid','paid'],
      ['Return','return']
    ]
  end

  def payment_method_list
    [
      ['Cash','cash'],
      ['Check','check'],
      ['Credit Card','credit_card'],
      ['Pay Pal','paypal']
    ]
  end

  def us_states
      [
        ['Alabama', 'AL'],
        ['Alaska', 'AK'],
        ['Arizona', 'AZ'],
        ['Arkansas', 'AR'],
        ['California', 'CA'],
        ['Colorado', 'CO'],
        ['Connecticut', 'CT'],
        ['Delaware', 'DE'],
        ['District of Columbia', 'DC'],
        ['Florida', 'FL'],
        ['Georgia', 'GA'],
        ['Hawaii', 'HI'],
        ['Idaho', 'ID'],
        ['Illinois', 'IL'],
        ['Indiana', 'IN'],
        ['Iowa', 'IA'],
        ['Kansas', 'KS'],
        ['Kentucky', 'KY'],
        ['Louisiana', 'LA'],
        ['Maine', 'ME'],
        ['Maryland', 'MD'],
        ['Massachusetts', 'MA'],
        ['Michigan', 'MI'],
        ['Minnesota', 'MN'],
        ['Mississippi', 'MS'],
        ['Missouri', 'MO'],
        ['Montana', 'MT'],
        ['Nebraska', 'NE'],
        ['Nevada', 'NV'],
        ['New Hampshire', 'NH'],
        ['New Jersey', 'NJ'],
        ['New Mexico', 'NM'],
        ['New York', 'NY'],
        ['North Carolina', 'NC'],
        ['North Dakota', 'ND'],
        ['Ohio', 'OH'],
        ['Oklahoma', 'OK'],
        ['Oregon', 'OR'],
        ['Pennsylvania', 'PA'],
        ['Puerto Rico', 'PR'],
        ['Rhode Island', 'RI'],
        ['South Carolina', 'SC'],
        ['South Dakota', 'SD'],
        ['Tennessee', 'TN'],
        ['Texas', 'TX'],
        ['Utah', 'UT'],
        ['Vermont', 'VT'],
        ['Virginia', 'VA'],
        ['Washington', 'WA'],
        ['West Virginia', 'WV'],
        ['Wisconsin', 'WI'],
        ['Wyoming', 'WY']
      ]
  end

  def note_consequence_list
    [
      ['Warning','warning'],
      ['Early Curfew','early curfew'],
      ['Cleaning','cleaning'],
      ['Termination','termination'],
      ['House Senior','house_senior'],
      ['Move to Middle Unit','move_to_middle_unit'],
    ]
  end
  def reason_for_leaving_list
    [
      ['Completed Term', 'completed_term'],
      ['Failure to pay rent','failure_to_pay_rent'],
      ['Behavioral Issue', 'behavioral_issue'],
      ['Relapse','relapse'],
      ['Other','other'],
    ]
  end

  def insurance_carrier_list
    [
      ['Aetna','aetna'],
      ['Blue Cross Blue Shield','blue_cross_blue_shield'],
      ['Cigna','cigna'],
      ['United Health','united_health'],
      ['Other','other'],
    ]
  end
end

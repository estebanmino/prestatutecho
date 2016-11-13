module ApplicationHelper

  def number_to_currency_ch(number)
      number_to_currency(number, :unit => "$ ", :precision => 0, :delimiter => ".")
  end

end

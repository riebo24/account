module ApplicationHelper
  def converting_to_jpy(price)
    "¥#{price.to_s(:delimited, delimiter: ',')}"
  end

  # def converting_to_yen(price)
  #   "#{price.to_s(:delimited, delimiter: ',')}yen"
  # end
  

  def set_year(date)
    date.strftime("%Y-%m-%d")
  end

  def set_date(date)
    date.strftime("%m-%d")
  end

  def set_time(date)
    date.strftime("%Y-%m-%d %H:%M")
  end

end

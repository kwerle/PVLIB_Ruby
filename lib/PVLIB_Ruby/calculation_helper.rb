module CalculationHelper

  def degree_to_radian(degree)
    degree * BigDecimal(Math::PI.to_s) / BigDecimal('180')
  end

  def radian_to_degree(radian)
    radian * BigDecimal('180') / BigDecimal(Math::PI.to_s)
  end

  def bigdecimal_exp(bigdecimal_value)
    BigDecimal(Math.exp(bigdecimal_value.to_f).to_s)
  end

  def bigdecimal_cos(angle_in_radian)
    BigDecimal(Math.cos(angle_in_radian.to_f).to_s)
  end 

  def bigdecimal_sin(angle_in_radian)
    BigDecimal(Math.sin(angle_in_radian.to_f).to_s)
  end

  def bigdecimal_sin(angle_in_radian)
    BigDecimal(Math.sin(angle_in_radian.to_f).to_s)
  end
  
  def big_decimal_asin(sin_value)
    BigDecimal(Math.asin(sin_value).to_s)
  end

  def big_decimal_acos(cos_value)
    BigDecimal(Math.acos(cos_value).to_s)
  end

  def bigdecimal_sqrt(bigdecimal_value)
    BigDecimal(Math.sqrt(bigdecimal_value.to_f).to_s)
  end

end
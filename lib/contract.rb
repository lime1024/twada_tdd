class UnpermittedContractError < StandardError
end

class Contract
  attr_reader :product_name, :signed_on

  def self.revenue_recognition
    18800
  end

  def initialize(product_name:, signed_on:)
    @product_name = product_name
    @signed_on = signed_on
  end

  def sign
    if product_name.is_a?(String)
      true
    else
      raise UnpermittedContractError 
    end
  end
end

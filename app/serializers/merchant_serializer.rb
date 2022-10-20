class MerchantSerializer
  def self.all_merchants(merchants)
    {
      data: merchants.map do |merchant|
        {
          id: merchant.id.to_s,
          type: merchant.class.name.downcase,
          attributes: {
            name: merchant.name
          }
        }
      end
    }
  end

  def self.single_merchant(merchant)
    {
      data: {
        id: merchant.id.to_s,
        type: merchant.class.name.downcase,
        attributes: {
            name: merchant.name
          }
      }
    }
  end

  def self.no_merchant
    {
      status: '404',
      error: {
        id: nil,
        type: Merchant.name.downcase
      }
    }
  end
end



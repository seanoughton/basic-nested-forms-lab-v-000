class Recipe < ActiveRecord::Base
  has_many :ingredients

  def ingredients_attributes=(ingredients_attributes)
    binding.pry
  end

  def ingredients_attributes
    #self.   iterate through ingredient list
  end
end

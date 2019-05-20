class MakeupSales::Product
  
  attr_accessor :title, :brand, :sale_price, :previous_price, :description  
  
  @@all = [] 

  def initialize(title)
    @title = title 
    @@all << self  
  end 

  def title # Instance reader because it reads out of an instance variable
    @title
  end
  
  def self.all  # Class Reader because it reads out of a class variable.
    @@all 
  end 


  
end 


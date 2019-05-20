module MakeupSales
class Scraper 
  
  def self.scrape_products 
    website = Nokogiri::HTML(open("https://www.ulta.com/promotion/sale"))
    section = website.css("ul#foo16") 
    products = section.css("li") 
    
    products.css("div.productQvContainer").each do |product| 
      title = product.css("h4.prod-title").text.strip
      actual_product = MakeupSales::Product.new(title)

      the_brand = product.css("div.prod-title").text.strip
      actual_product.brand = the_brand

      sale_price = product.css("span.pro-new-price").text.strip
      actual_product.sale_price = product.css("span.pro-new-price").text.strip

      previous_price = product.css("span.pro-old-price").text.strip
      actual_product.previous_price = previous_price

      description = product.css("div.ProductDetail_productContent collapse in").text.strip
      actual_product.description = description
    end 
  end 
  
  def self.scrape_product_details(product_object) 
    website = Nokogiri::HTML(open(product_object.url)) 
  end 
   
end 
end     

class Dog
  attr_accessor :name

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

x = Dog.new

x.name = "Fido"


"Fido".length
  
 class User
 end




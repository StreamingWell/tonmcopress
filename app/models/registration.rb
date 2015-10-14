class Registration

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :firstname, :lastname, :media, :country, :email, :journalist

  validates :firstname, :lastname, :media, :country, :email, :presence => true
  validates_acceptance_of :journalist
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
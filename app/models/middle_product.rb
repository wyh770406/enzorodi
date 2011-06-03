class MiddleProduct < ActiveRecord::Base
  has_attached_file :middle_photo, #:styles => {:large=>"300x300>", :medium => "60x60>", :thumb => "70x70>" }
  :default_url => "/images/middle_default.jpg"

  has_attached_file :en_middle_photo, #:styles => {:large=>"691x691>", :medium => "200x200>", :thumb => "70x70>" }:large=>"691x691>",
  :default_url => "/images/middle_default.jpg"
  belongs_to :top_product
  has_many :end_products,:dependent=>:destroy

  attr_accessible :curr_locale
  @@currlocale="cn"


  def curr_locale
    @@currlocale
  end

  def self.curr_locale=(value)

    @@currlocale=value
  #  write_attribute :curr_locale, (value ? value.downcase : nil)
  end

  def middle_photo_authorized_for_create?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def en_middle_photo_authorized_for_create?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def middle_photo_authorized_for_update?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def middle_photo_authorized_for_read?
    if self.curr_locale=="en"
      false
    else
      true
    end
  end

  def en_middle_photo_authorized_for_update?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def en_middle_photo_authorized_for_read?
    if self.curr_locale=="en"
      true
    else
      false
    end
  end
end
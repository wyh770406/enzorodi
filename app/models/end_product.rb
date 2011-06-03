class EndProduct < ActiveRecord::Base
  has_attached_file :end, :styles => { :medium => "200x200>", :thumb => "70x70>" },
    :default_url => "/images/end_default_product.jpg"
  has_attached_file :end_photo, #:styles => {:large=>"691x691>", :medium => "200x200>", :thumb => "70x70>" }:large=>"691x691>",
  :default_url => "/images/end_default.jpg"

  has_attached_file :en_end, :styles => { :medium => "200x200>", :thumb => "70x70>" },
    :default_url => "/images/end_default_product.jpg"
  has_attached_file :en_end_photo, #:styles => {:large=>"691x691>", :medium => "200x200>", :thumb => "70x70>" }:large=>"691x691>",
  :default_url => "/images/end_default.jpg"

  has_attached_file :tech_pdf
  has_attached_file :spec_pdf

  has_attached_file :en_tech_pdf
  has_attached_file :en_spec_pdf
  belongs_to :middle_product
  attr_accessible :curr_locale
  @@currlocale="cn"


  def curr_locale
    @@currlocale
  end

  def self.curr_locale=(value)

    @@currlocale=value
  #  write_attribute :curr_locale, (value ? value.downcase : nil)
  end

  def top
    self.middle_product.top_product.name
  end

  def related_end_products
    self.middle_product.end_products
  end

  def end_authorized_for_create?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def en_end_authorized_for_create?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def end_photo_authorized_for_create?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def en_end_photo_authorized_for_create?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end


  def tech_pdf_authorized_for_create?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def en_tech_pdf_authorized_for_create?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def spec_pdf_authorized_for_create?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def en_spec_pdf_authorized_for_create?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end



  def end_authorized_for_update?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def end_authorized_for_read?
    if self.curr_locale=="en"
      false
    else
      true
    end
  end

  def end_photo_authorized_for_update?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def end_photo_authorized_for_read?
    if self.curr_locale=="en"
      false
    else
      true
    end
  end

  def tech_pdf_authorized_for_update?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def tech_pdf_authorized_for_read?
    if self.curr_locale=="en"
      false
    else
      true
    end
  end

  def spec_pdf_authorized_for_update?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def spec_pdf_authorized_for_read?
    if self.curr_locale=="en"
      false
    else
      true
    end
  end



  def en_end_authorized_for_update?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def en_end_authorized_for_read?
    if self.curr_locale=="en"
      true
    else
      false
    end
  end

  def en_end_photo_authorized_for_update?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def en_end_photo_authorized_for_read?
    if self.curr_locale=="en"
      true
    else
      false
    end
  end

  def en_tech_pdf_authorized_for_update?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def en_tech_pdf_authorized_for_read?
    if self.curr_locale=="en"
      true
    else
      false
    end
  end

  def en_spec_pdf_authorized_for_update?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def en_spec_pdf_authorized_for_read?
    if self.curr_locale=="en"
      true
    else
      false
    end
  end
end
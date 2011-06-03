class Download < ActiveRecord::Base
  has_attached_file :pdf# :styles => {:large=>"300x300>", :medium => "60x60>", :thumb => "28x28>" },
  has_attached_file :en_pdf# :styles => {:large=>"300x300>", :medium => "60x60>", :thumb => "28x28>" },
  attr_accessible :curr_locale
  @@currlocale="cn"


  def curr_locale
    @@currlocale
  end

  def self.curr_locale=(value)

    @@currlocale=value
  #  write_attribute :curr_locale, (value ? value.downcase : nil)
  end

  def pdf_authorized_for_create?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def en_pdf_authorized_for_create?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def pdf_authorized_for_update?
    if self.curr_locale=="en"
      false
    else
      true
    end

  end

  def pdf_authorized_for_read?
    if self.curr_locale=="en"
      false
    else
      true
    end
  end

  def en_pdf_authorized_for_update?
    if self.curr_locale=="en"
      true
    else
      false
    end

  end

  def en_pdf_authorized_for_read?
    if self.curr_locale=="en"
      true
    else
      false
    end
  end
end
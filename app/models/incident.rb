class Incident < ActiveRecord::Base

  def full_name
    [first_name, middle_name, last_name, suffix].compact.join(" ")
  end

end

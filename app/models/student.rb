class Student < ApplicationRecord

  def to_s
    "#{first_name} the King #{last_name}"
  end

end

class PhoneNumber

  attr_reader :phone

  def initialize(phone)
    @phone = phone
  end

  def number
    return '0'*10 if invalid_phone?
    phone
  end

  def to_s
    invalid_phone?
    "(#{area_code}) #{phone[3,3]}-#{phone[6,4]}"
  end

  def area_code
    phone[0,3]
  end

  def invalid_phone?
    # Extra characters case
    return true if phone.length > 15

    # Remove characters
    phone.gsub!(/[^0-9]/, '')
    # validate phone number
    if phone.length == 10
      false
    elsif phone.length == 11
      if phone.start_with?('1')
        phone.slice!(0)
        false
      else
        true
      end
    else
      # Bad number
      true
    end
  end
end
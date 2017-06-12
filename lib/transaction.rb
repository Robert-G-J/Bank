class Transaction

  attr_reader :requested_on, :value

  def initialize(requested_on = Time.new, value)
    @requested_on = requested_on
    @value = value
  end
end

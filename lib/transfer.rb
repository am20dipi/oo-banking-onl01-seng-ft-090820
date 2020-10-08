class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :balance
  
  def initialize(sender, receiver, status = "pending")
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if @status = "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
end

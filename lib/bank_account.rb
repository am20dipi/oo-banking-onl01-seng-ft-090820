class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def balance= (balance)
    @balance = balance
  end
  
  def status= (status)
    @status = status
  end
  
  def name=(name)
    if self.name != name
      raise NoMethodError
    else
      self.name = name
    end
  end
  
  def deposit(money)
    deposit += money
    
  end
  
  def display_balance
    "Your balance is $#{balance}."
  end
  
  def valid?
   if @status == "open" && @balance > 0 
     true
   else
     false
   end
  end
  
  def close_account
    newstatus = BankAccount.new(status = "closed")
    newstatus
  end

end

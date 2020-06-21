class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount, :count 
   
  
  def initialize(sender,receiver,amount)
   @sender = sender
   @receiver = receiver
   @status = "pending"
   @amount = amount 
  end 
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if @sender.valid? && @sender.balance > self.amount && @status == "pending"
      @ sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    
  end 
end

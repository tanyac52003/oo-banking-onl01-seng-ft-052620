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
     
  end 
  
  def reverse_transfer
    
  end 
end

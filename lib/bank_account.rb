class BankAccount
    attr_writer :balance, :status
attr_reader :name, :balance, :status

    def initialize(name)
        @name = name
        @balance=1000
        @status="open"
    end

    def deposit(amount)
        @balance += amount 
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        if self.status == "open" && self.balance > 0
            return true
        else
            return false
        end    
    end

    def close_account
        self.status = "closed"
    end


end



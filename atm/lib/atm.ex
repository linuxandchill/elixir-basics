defmodule Atm do
  defstruct owner: nil, balance: nil

    #check balance on account
    def check_balance(account) when is_map(account) do
      account
    end

    #add money to account
    def deposit(account, amt) do 
      new_balance = %{account | balance: account.balance + amt} 
      new_balance[:balance]
    end

    #withdraw from acct
    #def withdraw(account, amount) do 
    #end

end

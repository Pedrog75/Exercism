module SavingsAccount
  def self.interest_rate(balance)
    case
    when balance >= 0 && balance < 1000
      0.5
    when balance >= 1000 && balance < 5000
      1.621
    when balance >= 5000
      2.475
    else balance.negative?
      3.213
    end
  end

  def self.annual_balance_update(balance)
    case
    when balance >= 0 && balance < 1000
      balance += 0.005 * balance
    when balance >= 1000 && balance < 5000
      balance += 0.01621 * balance
    when balance >= 5000
       balance += 0.02475 * balance
    else balance.negative?
      balance += 0.03213 * balance
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
    current_balance = annual_balance_update(current_balance)
    years += 1
    end
    years
  end
end

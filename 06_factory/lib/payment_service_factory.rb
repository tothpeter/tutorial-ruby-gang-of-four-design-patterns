require 'services/user_payment'
require 'services/manager_payment'

class PaymentServiceFactory
  def self.for entitiy
    if entitiy.is_a? User
      return UserPaymentService.new
    elsif entitiy.is_a? Manager
      return ManagerPaymentService.new
    end
  end
end
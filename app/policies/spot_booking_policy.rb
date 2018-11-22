class SpotBookingPolicy < ApplicationPolicy

  def bookings?
    return true
  end

  def destroy?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

class SpotbookingPolicy < ApplicationPolicy

  def bookings?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

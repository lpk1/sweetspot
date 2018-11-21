class SpotPolicy < ApplicationPolicy


  def index?
    return true
  end

  def show?
    return true
  end

   def new?
    return true
  end

  def create?
    new?
  end


  def update?
     record.user == user
  end

  def destroy?
    record.user == user
  end

  def listings?
    return true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

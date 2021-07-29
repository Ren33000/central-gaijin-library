class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def profile?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def show?
    true
  end

  def destroy?
    true
  end
end

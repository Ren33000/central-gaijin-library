class BookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def category?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def search?
    true
  end

end

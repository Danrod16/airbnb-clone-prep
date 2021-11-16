class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    true
     # user == record.user #true||false
  end

  def new?
    create?
  end

  def create?
    false || user.admin?
  end

  def edit?
    user == record.user
  end

  def update?
    edit?
  end

  def destroy?
    user == record.user
  end
end

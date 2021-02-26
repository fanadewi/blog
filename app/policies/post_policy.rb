class PostPolicy  < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    user.present?
  end

  def edit?
    destroy?
  end

  def update?
    destroy?
  end

  def destroy?
    user.present? && user == post.user
  end

  private

  def post
    record
  end
end
  
class Members::InvitationsController < Devise::InvitationsController
  def new
    super
  end

  def create
    super
    
    @.members << resource

  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end
end

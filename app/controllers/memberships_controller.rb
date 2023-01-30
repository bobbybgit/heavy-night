class MembershipsController < ApplicationController

    def new 
        @membership = current_user.memberships.new(:group_id => params[:group_id])
        group = Group.find_by id: params[:group_id]
    
        respond_to do |format|
          if @membership.save
            format.html { redirect_to group_url(group), notice: "Group was successfully joined." }
            format.json { render "groups/#{params[:group_id]}", status: :created, location: @group }
          else
            format.html { render "groups/#{params[:group_id]}", status: :unprocessable_entity }
            format.json { render json: @membership.errors, status: :unprocessable_entity }
          end
        end
      end

end

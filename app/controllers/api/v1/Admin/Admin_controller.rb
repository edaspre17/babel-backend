class Api::V1::Admin::AdminController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    before_action :check_admin except: [:set_user]
  
    # GET/listArchive
    def listArchive
      @Admin = Admin.find_by_sql(["SELECT * FROM archived"])
    end
  
    private

      def check_user
        @child.user_level === LEVEL_ADMIN
      end
    
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @child = Child.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def child_params
        params.require(:admin).permit(:name, :surname, :email, :user_lvl)
      end
  end
  
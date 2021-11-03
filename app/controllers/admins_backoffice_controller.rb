class AdminsBackofficeController < ApplicationController
    ##Protegendo páginas internas
    before_action :authenticate_admin!
    layout 'admin_backoffice'

    def after_sign_in_path_for(resource)
        admins_backoffice_welcome_index_path(current_admin) #your path
    end
end
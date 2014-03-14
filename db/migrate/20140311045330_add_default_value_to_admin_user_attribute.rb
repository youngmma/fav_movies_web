class AddDefaultValueToAdminUserAttribute < ActiveRecord::Migration
  	def up
    	change_column :users, :admin_user, :boolean, :default => false
	end

	# def down
 #    	change_column :profiles, :show_attribute, :boolean, :default => nil
	# end
end

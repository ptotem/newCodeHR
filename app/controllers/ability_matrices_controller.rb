class AbilityMatricesController < InheritedResources::Base

	def new
		@ability_matrix = AbilityMatrix.new
		@left_panels = LeftPanel.all
		@roles = Role.all
		
	end

	def create
		# render :json => params
		# return

		newAbility = {}
		newAbility['name'] = params[:name]
		newAbility['left_panels'] = []
		newAbility['roles'] = []

		params[:left_panel_ids].each do |left_panel_id|
			newAbility['left_panels'].push(LeftPanel.find(left_panel_id))
		end

		if params[:allRoles]
			newAbility['roles'] = Role.all
		else
			params[:role_ids].each do |role_id|
				newAbility['roles'].push(Role.find(role_id))
			end
		end

		ability_matrix = AbilityMatrix.create!(newAbility)
		
		respond_to do |format|
      if ability_matrix.save
        format.html { redirect_to ability_matrix, notice: 'Ability Matrix was successfully created.' }
        format.json { render json: ability_matrix, status: :created, location: ability_matrix }
      else
        format.html { render action: "new" }
        format.json { render json: ability_matrix.errors, status: :unprocessable_entity }
      end
    end
		
	end

  private

    def ability_matrix_params
      params.require(:ability_matrix).permit()
    end
end


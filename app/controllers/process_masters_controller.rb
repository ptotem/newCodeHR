class ProcessMastersController < ApplicationController

	def index
		@process_masters = ProcessMaster.all
	end

	def new

		@process_master = ProcessMaster.new
		@actionForms = {
			Fill: [], 
			Approve: [
				{type: "<div />", attributes: {class: "row"}, child: [
					{type: "<div />", attributes: {class: "col-md-6"}, child: [
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Set Reminder"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Set Reminder"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Repeat Reminder"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Repeat Reminder"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Set Escalation"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Set Escalation"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Repeat Escalation"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Repeat Escalation"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {}, child:[
										{type: "<input />", attributes: {class: "ace ace-switch ace-switch-6", type: "checkbox", placeholder: "Repeat Escalation"}}	
									]},
									
								]}
							]}
						]}
					]},
					{type: "<div />", attributes: {class: "col-md-6", style: "border-left: 1px dashed black;"}, child: [
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "form-group"}, child: [
								{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Select Approvers By:"}},
								{type: "<div />", attributes: {class: "col-md-8"}, child: [
									{type: "<select />", attributes: {class: "form-control chosen-select", onchange: "getModelValues($(this).val())"}, child: [
										{type: "<option />", attributes: {value: "", html: "Select Approver Type"}},
										{type: "<option />", attributes: {value: "EmployeeMaster", html: "Employee"}},
										{type: "<option />", attributes: {value: "Role", html: "Role"}},
										{type: "<option />", attributes: {value: "Department", html: "Department"}},
										{type: "<option />", attributes: {value: "GroupMaster", html: "Group"}},
										{type: "<option />", attributes: {value: "BandMaster", html: "Band"}}
									]}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-10"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "table-header", html: "Select Approvers"}},
								{type: "<table />", attributes: {class: "table table-striped table-bordered table-hover"}}
							]}
						]}
					]}
				]}
			],
			Notify: [
				{type: "<div />", attributes: {class: "row"}, child: [
					{type: "<div />", attributes: {class: "col-md-6"}, child: [
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Title"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Title"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Description"}},
									{type: "<textarea />", attributes: {class: "col-md-7", placeholder: "Description", style: "height: auto; resize: none; word-wrap: break-word; padding-left: 4px; padding-right: 4px; "}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Set Escalation"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Set Escalation"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "form-group"}, child: [
									{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Repeat Escalation"}},
									{type: "<input />", attributes: {class: "col-md-7", type: "text", placeholder: "Repeat Escalation"}}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-4"}},

					]},
					{type: "<div />", attributes: {class: "col-md-6", style: "border-left: 1px dashed black;"}, child: [
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "form-group"}, child: [
								{type: "<label />", attributes: {class: "col-md-4 control-label no-padding-right", html: "Select Recipient By:"}},
								{type: "<div />", attributes: {class: "col-md-8"}, child: [
									{type: "<select />", attributes: {class: "form-control chosen-select", onchange: "getModelValues($(this).val())"}, child: [
										{type: "<option />", attributes: {value: "", html: "Select Recipient Type"}},
										{type: "<option />", attributes: {value: "EmployeeMaster", html: "Employee"}},
										{type: "<option />", attributes: {value: "Role", html: "Role"}},
										{type: "<option />", attributes: {value: "Department", html: "Department"}},
										{type: "<option />", attributes: {value: "GroupMaster", html: "Group"}},
										{type: "<option />", attributes: {value: "BandMaster", html: "Band"}}
									]}
								]}
							]}
						]},
						{type: "<div />", attributes: {class: "space-10"}},
						{type: "<div />", attributes: {class: "row"}, child: [
							{type: "<div />", attributes: {class: "col-md-12"}, child: [
								{type: "<div />", attributes: {class: "table-header", html: "Select Recipients"}},
								{type: "<table />", attributes: {class: "table table-striped table-bordered table-hover"}}
							]}
						]}
					]}
				]}
			],
			MarkComplete: [],
			SpawnD: [
				{type: "<div />", attributes: {class: "row"}, child: [
					{type: "<div />", attributes: {class: "form-group"}, child: [
						{type: "<label />", attributes: {class: "col-md-2 control-label no-padding-right", html: "Select Process"}},
						{type: "<div />", attributes: {class: "col-md-4"}, child: [
							{type: "<select />", attributes: {class: "form-control chosen-select"}, child: [
								{type: "<option />", attributes: {value: "", html: "Select SpawnD Process"}},
								{type: "<option />", attributes: {value: "process_id", html: "[Process Name]"}}
							]}
						]}
					]}
				]}
			],
			SpawnI: [
				{type: "<div />", attributes: {class: "row"}, child: [
					{type: "<div />", attributes: {class: "form-group"}, child: [
						{type: "<label />", attributes: {class: "col-md-2 control-label no-padding-right", html: "Select Process"}},
						{type: "<div />", attributes: {class: "col-md-4"}, child: [
							{type: "<select />", attributes: {class: "form-control chosen-select"}, child: [
								{type: "<option />", attributes: {value: "", html: "Select SpawnI Process"}},
								{type: "<option />", attributes: {value: "process_id", html: "[Process Name]"}}
							]}
						]}
					]}
				]}
			]
		}

		gon.actionForms = @actionForms
		
	end

  private

    # def process_master_params
    #   params.require(:process_master).permit()
    # end
end


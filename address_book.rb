# DEFINE METHODS & FUNCTIONS

# DEFINE display_menu
def display_menu

	puts """
	Main Menu

	1   Create New Entry
	2   View Existing Entry
	3   Delete Existing Entry
	4   Quit Application
	"""

	puts "Menu selection: "
	menu_select = gets.chomp

	return menu_select
end

# DEFINE gets_entry

def add_entry
# Prompt entry & add data entry into hash
	entry = {}

	puts "CREATE NEW ENTRY"
	puts "First name: "
	entry[:first_name] = gets.chomp

	puts "Last name: "
	entry[:last_name] = gets.chomp

	puts "Phone number (no dashes): "
	entry[:phone] = gets.chomp

	puts "E-mail address: "
	entry[:email] = gets.chomp

	return entry
end

# DEFINE delete_entry
def delete_entry
# Print keys and values for data: index, last_name, first_name
# Prompt user for select_entry for deletion
# Delete selected entry within hash
end

# BEGIN PROGRAM EXECUTION

# Menu selection
# Scold user if the selection is invalid
# puts display_menu
is_running = true
addressbook = []

while is_running
	# print display_menu
	menu_select = display_menu
	# menu_select == "4"
	# false
	if 	menu_select == "1"	
		addressbook.push add_entry
		puts addressbook.inspect ####
	elsif menu_select == "2"
		addressbook.each_with_index do |x, index|
		puts "#{index} #{x[:last_name]}, #{x[:first_name]}"
		end
	elsif menu_select == "3"
		#
	elsif menu_select == "4"
		is_running = false
	else
		puts "That's not on the menu."
	end
end

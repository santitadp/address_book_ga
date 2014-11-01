# DEFINE METHODS & FUNCTIONS

# Define displaying menu method
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

# Define adding entry method
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


# BEGIN PROGRAM EXECUTION

is_running = true
addressbook = []

while is_running
	# print display_menu
	menu_select = display_menu
	if 	menu_select == "1"	
		addressbook.push add_entry
		puts addressbook.inspect

	elsif menu_select == "2"
		addressbook.each_with_index do |x, index|
			puts "#{index} #{x[:last_name]}, #{x[:first_name]}"
		end

		puts "Which entry would you like to view? "
		entry_view = gets.chomp.to_i
		entry = addressbook[entry_view]
		puts """ 	
			#{entry[:last_name]}
			#{entry[:first_name]}
			#{entry[:phone]}
			#{entry[:email]}"""

	elsif menu_select == "3"
		addressbook.each_with_index do |x, index|
			puts "#{index} #{x[:last_name]}, #{x[:first_name]}"
		end

		puts "Select entry to delete: "
		entry_delete = gets.chomp.to_i
		addressbook.delete_at entry_delete

	elsif menu_select == "4"
		is_running = false
	else
		puts "That's not on the menu."
	end
end

# Created by: James Lee
# Created on: Sep 2017
# Created for: ICS3U
# This program asks the user to guess the secret number

import ui

# Declare as constant
SECRET_NUMBER = 5

def check_the_guessed_number_touch_up_inside(sender):
	
	# Input
	guessed_number = int(view['number_guess_textbox'].text)
	
	# Process
	if guessed_number == SECRET_NUMBER:
		
		# Output
		view['answer_label'].text = 'Yes, the number is 5!'
		
	else:
		
		# Alternate output
		view['answer_label'].text = 'Sorry, that is not correct'

view = ui.load_view()
view.present('full_screen')

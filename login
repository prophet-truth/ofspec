#
####login to app using sql####
def login_user():  #### TEST WITH 'or 1 = 1; -- 
	if userL_textbox.value == "":
		info("Error", "You must enter a valid username")
	elif PWL_textbox.value == "":
		info("Error", "You must enter a password")
	else:
		CUSTname = userL_textbox.value
		sqlselect = "SELECT * FROM CUST_TABLE WHERE CustUN = '"+CUSTname+"'"
		rows = query_database(database_file, sqlselect)
		if len(rows) == 0: ### This checks that the user was found ###
			info("Error","YOU ARE NOT REGISTERED")
		else:
			info("Log in","FOUND ON DATABASE")
			global login
			login = rows[0][0]
			open_review()

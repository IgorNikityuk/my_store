Feature:  Verify ... home page

Background: Create page
  Given I create page with name sharan

Scenario:  Sign in as different users

	Given I open home page
  When I open page with name sharan
	# When I go to Sign in page
	# Then I should be on Sign in page
	# When I sign in as <user_type> user
	# Then I should be on home page
	# And I should be logged in as <user_type> user

 #  Examples:
 #    | user_type  |
 #    | ""  |
 #    | "" |
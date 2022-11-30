# Forgot Password
Forgot password function using JSP and servlet, sends a token to the associated email

## Interaction
###Step-1
In the login screen, click on the "forgot password" button.

###Step-2
You will be directed to the forgot password page and it will require the user to enter an email.

###Step-3
After user has inputted their email and click the button. A token will be sent to their email.

###Step-4 
Copy paste the token and enter the new password.

##Informations
* After the system checks for the matching email, a token would be sent to them
* If token does not match it will redirect the user to the login page
* If the token does match, it will then be deleted so that the same token cannot be used again.

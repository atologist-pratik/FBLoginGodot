extends Node2D


var fb
var app_id = "132***AppId****131" # Add Only Numbers, Don't add like `fb127263784628746`

func _ready():
	if Engine.has_singleton("GodotFacebook"):
		print("*******\n Facebook found \n*******")
		fb = Engine.get_singleton("GodotFacebook")
		fb.init(app_id)
		fb.setFacebookCallbackId(get_instance_id())

func _on_Facebook_pressed():
	if fb != null:
		fb.login(["public_profile", "email"])

func login_success(token):
	print('Facebook login success: %s'%token)
	getUserDataFromFB()

func login_cancelled():
	print('Facebook login cancelled')

func login_failed(error):
	print('Facebook login failed: %s'%error)


func getUserDataFromFB():
	print("getUserDataFromFB")
	var callbckID = fb.getFacebookCallbackId()
	print("\n ******* : callbckID : ",callbckID)
	fb.userProfile(callbckID,"_fetch_UserProfile")

func _fetch_UserProfile(data):
	print("\n******Godot User Data")
	print("data : ",data)


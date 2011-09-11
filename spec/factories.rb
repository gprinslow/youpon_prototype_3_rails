
#using symbol :user gets Factory Girl to simulate the User model
Factory.define :user do |user|
	user.username								"gprinslowtest"
	user.email									"gprinslowtest@example.com"
	user.password								"foobar"
	user.password_confirmation	"foobar"
	user.first_name							"G"
	user.middle_name						"T"
	user.last_name							"P"
	user.birthday								"2011-09-08"
	user.gender									"Male"
	user.zip_code								63108
end
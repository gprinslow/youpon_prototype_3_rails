#using symbol :user gets Factory Girl to simulate the User model

Factory.define :user do |user|
	user.username								"gprinslowtest"
	user.email									"gprinslowtest@example.com"
	user.password								"foobar"
	user.password_confirmation	"foobar"
end
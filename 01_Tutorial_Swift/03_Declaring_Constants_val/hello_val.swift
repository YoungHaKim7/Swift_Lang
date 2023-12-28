// let = constants
let maximumNumberOfLoginAttempts01 = 10

// var = variables
var currentLoginAttempt = 0

print(maximumNumberOfLoginAttempts01)

var environment = "development"

let maximumNumberOfLoginAttempts: Int
// maximumNumberOfLoginAttempts has no value yet.

if environment == "development" {
	maximumNumberOfLoginAttempts = 100
} else {
	maximumNumberOfLoginAttempts = 10
}

// Now maximumNumberOfLoginAttempts has a value, and can be read.

print("environment: ")
print(environment)
print("----")
print("MaxmumNumberOf Login attemts: ")
print(maximumNumberOfLoginAttempts)
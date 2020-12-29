import UIKit

var str = "Hello, playground"

//Diagon Alley Shopping Trip
//In this project, you will write about your first trip to Diagon alley for your school supplies. You will do this by creating variables or constants, whichever is more appropriate, of your personal data. You'll use what you've learned about the various operators to keep track of how much gold, or galleons, you have... You'll also use control flow to help you decide which house you hope to be in, and what pet to take with you on day one! Let's tour Diagon Alley!

//Part One - Basic Personal Details

let firstName: String = "Lee"
let lastName: String = "McCormick"
var age: Int = 31
let birthday: String = "10 Dec 1989"
var preferredWandLength: Double = 2.3
var preferredHouse: String = "Harry House"
var characterTrait: [String] = ["Brave", "Loyal", "Ambitious", "Intelligent"]
var IsTiredOfHarryPotter: Bool = true

//Part Two - Mathematical Operators

var vaultsGoldVolume: Double = 150.0

//buy your first wand. The cost is 24.3
vaultsGoldVolume = vaultsGoldVolume - 24.3


//purchase a very fine set of Robes that cost you a flat 45 Galleons.

vaultsGoldVolume = vaultsGoldVolume - 45.00

//A long lost relative left you some gold to be used on your first day. Add 300 Galleons
vaultsGoldVolume = vaultsGoldVolume + 300

//A group of Slytherins are playing Wizard dice. You play a few rounds and double the gold in your purse.
vaultsGoldVolume = vaultsGoldVolume * 2

//You inquire about a pack of bloodstained cards and he says he will give it to you for one tenth of all the gold in your pocket
vaultsGoldVolume = vaultsGoldVolume - (vaultsGoldVolume * 0.1)


//Part Three - Conditional Love

// When choosing an owl at the Eeylops Owl Emporium, I want to choose an owl that has a black beak and white feathers. Once I find an owl like that, I will exclaim "This one's mine!". If the owl does not match what I want, I will say "Pass".
var owl: String = "a black beak and white feathers"

if owl == "a black beak and white feathers" {
    print("This one's mine!")
} else {
    print("Pass")
}

//I heard that my favorite Quidditch team, The Holyhead Harpies, suggests a certain type of Broom. So, I will only buy a broom if it is sponsored by them.
var isSponseredByQuidditch: Bool = true

if isSponseredByQuidditch {
    print("I will buy a broom.")
} else {
    print("I will look for a  broom that is sponsered by Quidditch team.")
}

//While taking a break and enjoying a sweet treat at Florean Fortescue's Ice Cream Parlour, you begin to daydream about the four houses of Hogwarts. Slytherin for the cunning and ambitious, Gryffindor for the brave, Hufflepuff for the Loyal, and Ravenclaw for those with great wit. What could be the specific thought process and logic which the sorting hat employs in order to appropriately place students?

var studentCharacterTrait: String = "brave"
var house: String

if studentCharacterTrait == "cunning and ambitious" {
    house = "Slytherin"
} else if  studentCharacterTrait == "brave" {
    house = "Gryffindor"
} else if studentCharacterTrait == "Loyal" {
    house = "Hufflepuff"
} else if studentCharacterTrait == "great wit" {
    house = "Ravenclaw"
} else {
    print("Not sure which house the student belong to.")
}
    
    
// Part Four - FizzBuzz Deep Dive

//set value of range from 1 to 100
//let range = 1…100
let range = 1...100

//Loop to each number in range
//for number in rangeTo100 {
for number in range {
    
    //check if the number in looping divided by 3 and has no reminder, then print out the word "Dev"
    if number % 3 == 0 {
        print("Dev")
        
    //then check the number in looping divided by 5 and has no reminder, then print out the word "Mountain"
    } else if number % 5 == 0 {
        print("Mountain")
        
    //then check the number in looping divided by 3 and 5 and has no reminder, then print out the word "Devmountain", but this condition will never print out because the if statment above will excucute before.
    } else if number % 3 == 0 && number % 5 == 0 {
        print("Devmountain")
        
    //then if the number divided by 3 and 5 and has a reminder, then print "number"
    } else {
        print(number)
    }
}


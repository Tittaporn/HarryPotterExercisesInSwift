import UIKit

//Part One: Introduce The Captains


//Before starting the game, we must introduce the captain of each team.

func introduceCaptions(captainOfTheHolyheadHarpies: String, captainOfTheMontroseMagpies: String){
    print("Ladies & Gentlemen, your two captains, \(captainOfTheHolyheadHarpies) and \(captainOfTheMontroseMagpies)." )
}

introduceCaptions(captainOfTheHolyheadHarpies: "Lee", captainOfTheMontroseMagpies: "Donny")


//Part Two: Create Our Match Functions

var holyheadHarpiesPoints: Int = 0
var montroseMagpiesPoints: Int = 0

//Create a function for The Montrose Magpies' scoring of a goal.
func montroseMagpiesScoringOfGoal(times: Int) -> Int{
    var totalScore: Int = 0
    let range = 1...times
    for _ in range {
        totalScore = totalScore + 10
    }
    montroseMagpiesPoints = montroseMagpiesPoints + totalScore
    return montroseMagpiesPoints
}


//Create a function for when The Holyhead Harpies score a goal.
func holyheadHarpiesScoringOfGoal(times: Int) -> Int{
    var totalScore: Int = 0
    let range = 1...times
    for _ in range {
        totalScore = totalScore + 10
    }
    holyheadHarpiesPoints = holyheadHarpiesPoints + totalScore
    return holyheadHarpiesPoints
}

//Create a functions for when The Montrose Magpies and The Holyhead Harpies catch the snitch.

func montroseMagpiesCatchTheSnitch() {
    //add 150 to point
    montroseMagpiesPoints += 150
    //Game over
    matchIsOver(isCatchSnitch: true)
}

func holyheadHarpiesCatchTheSnitch() {
    //add 150 to point
    holyheadHarpiesPoints += 150
    //Game over
    matchIsOver(isCatchSnitch: true)
}

func matchIsOver(isCatchSnitch: Bool) {
    if isCatchSnitch {
    print("Match is over")
    } else {
    print("Continute catching a snitch.")
    }
}

//Create a function that will print out the winner and final score in one sentence.
func printOutTheWinnerAndFinalScore(holyheadHarpiesPoints: Int, montroseMagpiesPoints: Int) {
    var theWiner = ""
    if holyheadHarpiesPoints > montroseMagpiesPoints {
        theWiner = "The winner is Holy Head Harpies with \(holyheadHarpiesPoints) points."
    } else {
        theWiner = "The winner is Montrose Magpies with \(montroseMagpiesPoints) points."
    }
    print(theWiner)
}

 // Part Three: Let The Match Begin


//The whistle blows and we are underway!
introduceCaptions(captainOfTheHolyheadHarpies: "Lee", captainOfTheMontroseMagpies: "Donny")

//The Holyhead Harpies get off to a fantastic start and score 4 in a row.
holyheadHarpiesScoringOfGoal(times: 4)

//Finally the Magpies get into the match with an amazing long distance goal.
montroseMagpiesScoringOfGoal(times: 1)

//But the Harpies immediately counter with another 2 back-to-back goals.
holyheadHarpiesScoringOfGoal(times: 2)


//It looks like the snitch has come into play, but neither seeker has been able to catch it.
matchIsOver(isCatchSnitch: false)

//The Harpies are temporarily down a player for an illegal move from their beater. The Magpies are taking advantage of this situation and have scored six times while the Harpies have only managed one goal in that same amount of time.
montroseMagpiesScoringOfGoal(times: 6)
holyheadHarpiesScoringOfGoal(times: 1)

//The Harpies are back to full strength, and it's showing, as they just scored 3 times in a row!
holyheadHarpiesScoringOfGoal(times: 3)

//The Harpies are dominating, but wait! It looks like the Magpies have just caught the snitch.
montroseMagpiesCatchTheSnitch()

//And the game is over!
printOutTheWinnerAndFinalScore(holyheadHarpiesPoints: holyheadHarpiesPoints, montroseMagpiesPoints: montroseMagpiesPoints)

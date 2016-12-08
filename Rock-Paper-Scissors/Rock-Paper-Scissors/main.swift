import Foundation

/*
 * Is's a game
 * Task: Create a game «Rock-Paper-Scissors».
 * Rock is stronger than scisssors, scissors is stronger than paper, and paper is stronger than rock.
 * Author: Student Ivan Shokurov
 */

print("Welcome to game 'Rock-Paper-Scissors!'")

// GLOBAL VARIABLES
var userResponseAboutItem: Int?
var userItem:              String?
var computerItem:          String?
var wonCounter:            (userCount: Int, computerCount: Int)?

// GETTING DATA FOR COMPUTER

// MAIN FUNCTION
func main() -> Int? {
  print("***********************")
  print("\nChoose your item for fight! [type a number of choice..]")
  print("1: Rock")
  print("2: Paper")
  print("3: Scissors\n")

  getItemForUser()
  getItemForComputer()

  print("\nUser's choice: \(userItem!)\n")
  print("FIGHT!")
  print("\(userItem!) VS \(computerItem!)")
  print("\n")

  let messageAboutStandoff    = "STANDOFF!\n"
  let messageAboutComputerWin = "COMPUTER WIN!\n"
  let messageAboutUserWin     = "YOU WIN!\n"
  var isUserWin:     Bool?
  var isComputerWin: Bool?

  if userItem == computerItem {
    print("\(messageAboutStandoff)\n")
    print("We need to win computer!")
    isUserWin     = false
    isComputerWin = false
  }

  if userItem == "Rock" {
    if computerItem == "Paper" {
      print(messageAboutComputerWin)
      isUserWin     = false
      isComputerWin = true

    } else if computerItem == "Scissors" {
      print(messageAboutUserWin)
      isUserWin     = false
      isComputerWin = true
    }
  }

  if userItem == "Paper" {
    if computerItem == "Rock" {
      print(messageAboutUserWin)
      isUserWin     = true
      isComputerWin = false
    } else if computerItem == "Scissors" {
      print(messageAboutComputerWin)
      isUserWin     = false
      isComputerWin = true
    }
  }

  if userItem == "Scissors" {
    if computerItem == "Rock" {
      print(messageAboutComputerWin)
      isUserWin     = false
      isComputerWin = true
    } else if computerItem == "Paper" {
      print(messageAboutUserWin)
      isUserWin     = true
      isComputerWin = false
    }
  }

  if isUserWin == isComputerWin {
      main()
      return nil
  }

  let userResponceAboutContinueToPlay: String?
  
  print("\nOne more else?")
  print("\ny: Yes")
  print("n: No\n")
  userResponceAboutContinueToPlay = readLine()

  if userResponceAboutContinueToPlay == "y" {
    main()
  } else if userResponceAboutContinueToPlay == "n" || userResponceAboutContinueToPlay == nil {
    print("Good luck! :)")
    return nil
  }
  return nil
}

main()
print("***********************\n")

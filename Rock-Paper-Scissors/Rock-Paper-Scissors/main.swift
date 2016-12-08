import Foundation

/*
 * Is's a game
 * Task: Create a game «Rock-Paper-Scissors».
 * Rock is stronger than scisssors, scissors is stronger than paper, and paper is stronger than rock.
 * Author: Student Ivan Shokurov
 */

print("Welcome to game 'Rock-Paper-Scissors!'")

// MAIN FUNCTION
func main() {
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

  // STANDOFF
  if userItem == computerItem {
    print("\(messageAboutStandoff)\n")
    print("We need to win computer!")
    showWonScore()
    main()
    return
  }

  // Who is lucker?
  if userItem == "Rock" {
    if computerItem == "Paper" {
      print(messageAboutComputerWin)
      addWonPointTo("Computer")

    } else if computerItem == "Scissors" {
      print(messageAboutUserWin)
      addWonPointTo("User")
    }
  }

  if userItem == "Paper" {
    if computerItem == "Rock" {
      print(messageAboutUserWin)
      addWonPointTo("User")
    } else if computerItem == "Scissors" {
      print(messageAboutComputerWin)
      addWonPointTo("Computer")
    }
  }

  if userItem == "Scissors" {
    if computerItem == "Rock" {
      print(messageAboutComputerWin)
      addWonPointTo("Computer")
    } else if computerItem == "Paper" {
      print(messageAboutUserWin)
      addWonPointTo("User")
    }
  }
  
  showWonScore()

  let userResponceAboutContinueToPlay: String?
  
  print("\nOne more else?")
  print("\ny: Yes")
  print("n: No\n")
  userResponceAboutContinueToPlay = readLine()

  if userResponceAboutContinueToPlay == "y" {
    main()
  } else if userResponceAboutContinueToPlay == "n" || userResponceAboutContinueToPlay == nil {
    print("Good luck! :)")
    return
  }
  return
}

main()
print("***********************\n")

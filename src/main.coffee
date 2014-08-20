PalindromeAnalysis = require '../lib/PalindromeAnalysis'

welcome = "Enter number and words that you want to analize whether or not a Palindrome.\n"

analysis = new PalindromeAnalysis

stdin = process.openStdin()
stdin.setEncoding "utf8"

process.stdout.write welcome

inputString = ""
stdin.on "data", (input) ->
  results = []

  inputString += input if input isnt null

  if input is "\n"
    inputWords = inputString.split("\n")
    number = inputWords[0]
    i = 1

    while i <= number
      subStrings = analysis.createSubStrings(String(inputWords[i]))
      console.log analysis.countNumberOfPalindromeContains(subStrings)
      i++
    console.log "\n" + welcome + " if you want to finish, Enter 'exit'."
    inputString = ""

  process.exit()  if input is "exit\n"
  return

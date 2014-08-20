var PalindromeAnalysis, analysis, inputString, stdin, welcome;

PalindromeAnalysis = require('../lib/PalindromeAnalysis');

welcome = "Enter number and words that you want to analize whether or not a Palindrome.\n";

analysis = new PalindromeAnalysis;

stdin = process.openStdin();

stdin.setEncoding("utf8");

process.stdout.write(welcome);

inputString = "";

stdin.on("data", function(input) {
  var i, inputWords, number, results, subStrings;
  results = [];
  if (input !== null) {
    inputString += input;
  }
  if (input === "\n") {
    inputWords = inputString.split("\n");
    number = inputWords[0];
    i = 1;
    while (i <= number) {
      subStrings = analysis.createSubStrings(String(inputWords[i]));
      console.log(analysis.countNumberOfPalindromeContains(subStrings));
      i++;
    }
    console.log("\n" + welcome + " if you want to finish, Enter 'exit'.");
    inputString = "";
  }
  if (input === "exit\n") {
    process.exit();
  }
});

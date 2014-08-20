var PalindromeAnalysis;

PalindromeAnalysis = (function() {
  function PalindromeAnalysis() {}

  PalindromeAnalysis.prototype.createSubStrings = function(inputWord) {
    var i, j, subStrings;
    subStrings = [];
    i = 0;
    while (i < inputWord.length) {
      j = i + 1;
      while (j < inputWord.length + 1) {
        subStrings.push(String(inputWord.slice(i, j)));
        j++;
      }
      i++;
    }
    return subStrings;
  };

  PalindromeAnalysis.prototype.isPalindrome = function(subString) {
    var index, k, paindlome;
    paindlome = [];
    k = 0;
    while (k < subString.length) {
      index = paindlome.indexOf(subString[k]);
      if (index !== -1) {
        paindlome.splice(index, 1);
      } else {
        paindlome.push(subString[k]);
      }
      k++;
    }
    if (paindlome.length === 0 || paindlome.length === 1) {
      return true;
    } else {
      return false;
    }
  };

  PalindromeAnalysis.prototype.countNumberOfPalindromeContains = function(substrs) {
    var count, flag, m, _i, _ref;
    count = 0;
    for (m = _i = 0, _ref = substrs.length - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; m = 0 <= _ref ? ++_i : --_i) {
      flag = this.isPalindrome(substrs[m]);
      if (flag === true) {
        count += 1;
      }
    }
    return count;
  };

  return PalindromeAnalysis;

})();

module.exports = PalindromeAnalysis;

class PalindromeAnalysis

  constructor: () ->

  createSubStrings: (inputWord) ->
    subStrings = []
    i = 0

    while i < inputWord.length
      j = i + 1

      while j < inputWord.length + 1
        subStrings.push String inputWord.slice(i, j)
        j++
      i++
    return subStrings

  isPalindrome: (subString) ->
    paindlome = []
    k = 0

    while k < subString.length
      index = paindlome.indexOf subString[k]
      if index isnt -1
        paindlome.splice(index, 1)
      else
        paindlome.push subString[k]
      k++
    if paindlome.length is 0 or paindlome.length is 1
      return true
    else return false

  countNumberOfPalindromeContains: (substrs) ->
    count = 0
    # if typeof substrs is 'object'
    #   return throw new Error('this is not array.')
    # if typeof substrs.length is 'number'
    #   return throw new Error('this is not array.')
    # if typeof substrs.splice is 'function'
    #   return throw new Error('this is not array.')
    # if not substrs.propertyIsEnumerable 'length'
    #   return throw new Error('this is not array.')

    for m in [0..substrs.length-1]
      flag = this.isPalindrome substrs[m]
      if flag is true
        count += 1
    return count




module.exports = PalindromeAnalysis
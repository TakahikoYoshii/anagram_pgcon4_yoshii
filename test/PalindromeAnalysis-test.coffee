chai = require 'chai'
should = require 'should'
expect = chai.expect

Palindrome = require '../src/PalindromeAnalysis.coffee'

describe 'PalindromeAnalysis',->
  palindromeAnalysis = null

  beforeEach "create instance", ->
    palindromeAnalysis = new Palindrome

  # it "palindromeAnalysis is instanceOf PalindromeAnalysis", (done) ->
  #   palindromeAnalysis.should.be.instanceof Palindrome

  it "Palindrome should have prototype", (done) ->
    palindromeAnalysis.should.have.properties 'createSubStrings', 'isPalindrome'
    done()

  it "expects createSubString(abc) to be [a, ab, abc, b, bc, c]", (done) ->
    console.log Palindrome
    console.log Palindrome.prototype
    actual = palindromeAnalysis.createSubStrings 'abc'
    actual.should.be.instanceof Array
    actual.should.containDeep ['a', 'ab', 'abc', 'b', 'bc', 'c']
    actual.should.containEql 'ab'
    done()

  it "should rutern true , isPalindrome('a')", (done) ->
    actual = palindromeAnalysis.isPalindrome 'a'
    actual.should.be.equal true
    done()

  it "should rutern false , isPalindrome('ab')", (done) ->
    actual = palindromeAnalysis.isPalindrome 'ab'
    actual.should.be.equal false
    done()

  it "should rutern true , isPalindrome('aabb')", (done) ->
    actual = palindromeAnalysis.isPalindrome 'aabb'
    actual.should.be.equal true
    done()

  it "should rutern true , isPalindrome('abf')", (done) ->
    actual = palindromeAnalysis.isPalindrome 'abf'
    actual.should.be.equal false
    done()

  it "should rutern true , isPalindrome('aaaaaaaaaaaaaaaaaa')", (done) ->
    actual = palindromeAnalysis.isPalindrome 'aaaaaaaaaaaaaaaaaa'
    actual.should.be.equal true
    done()

  it "should rutern 2, countNumberOfPalindromeContains(ab.array)", (done) ->
    inputArray = ['a', 'ab', 'c']
    actual = palindromeAnalysis.countNumberOfPalindromeContains inputArray
    actual.should.be.exactly 2
    done()

  # it "should rutern 2, countNumberOfPalindromeContains(ab.array)", (done) ->
  #   inputString = 'a'
  #   actual = palindromeAnalysis.countNumberOfPalindromeContains inputString
  #   actual.should.throw('this is not array.')
  #   done()

  it "abcde should rutern 5", (done) ->
    inputArray = palindromeAnalysis.createSubStrings 'abcde'
    actual = palindromeAnalysis.countNumberOfPalindromeContains inputArray
    actual.should.be.exactly 5
    done()

  it "pepper should rutern 13", (done) ->
    inputArray = palindromeAnalysis.createSubStrings 'pepper'
    actual = palindromeAnalysis.countNumberOfPalindromeContains inputArray
    actual.should.be.exactly 13
    done()

  it "aaaaa should rutern 15", (done) ->
    inputArray = palindromeAnalysis.createSubStrings 'aaaaa'
    actual = palindromeAnalysis.countNumberOfPalindromeContains inputArray
    actual.should.be.exactly 15
    done()

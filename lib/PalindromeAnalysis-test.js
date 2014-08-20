var Palindrome, chai, expect, should;

chai = require('chai');

should = require('should');

expect = chai.expect;

Palindrome = require('../src/PalindromeAnalysis.coffee');

describe('PalindromeAnalysis', function() {
  var palindromeAnalysis;
  palindromeAnalysis = null;
  beforeEach("create instance", function() {
    return palindromeAnalysis = new Palindrome;
  });
  it("Palindrome should have prototype", function(done) {
    palindromeAnalysis.should.have.properties('createSubStrings', 'isPalindrome');
    return done();
  });
  it("expects createSubString(abc) to be [a, ab, abc, b, bc, c]", function(done) {
    var actual;
    console.log(Palindrome);
    console.log(Palindrome.prototype);
    actual = palindromeAnalysis.createSubStrings('abc');
    actual.should.be["instanceof"](Array);
    actual.should.containDeep(['a', 'ab', 'abc', 'b', 'bc', 'c']);
    actual.should.containEql('ab');
    return done();
  });
  it("should rutern true , isPalindrome('a')", function(done) {
    var actual;
    actual = palindromeAnalysis.isPalindrome('a');
    actual.should.be.equal(true);
    return done();
  });
  it("should rutern false , isPalindrome('ab')", function(done) {
    var actual;
    actual = palindromeAnalysis.isPalindrome('ab');
    actual.should.be.equal(false);
    return done();
  });
  it("should rutern true , isPalindrome('aabb')", function(done) {
    var actual;
    actual = palindromeAnalysis.isPalindrome('aabb');
    actual.should.be.equal(true);
    return done();
  });
  it("should rutern true , isPalindrome('abf')", function(done) {
    var actual;
    actual = palindromeAnalysis.isPalindrome('abf');
    actual.should.be.equal(false);
    return done();
  });
  it("should rutern true , isPalindrome('aaaaaaaaaaaaaaaaaa')", function(done) {
    var actual;
    actual = palindromeAnalysis.isPalindrome('aaaaaaaaaaaaaaaaaa');
    actual.should.be.equal(true);
    return done();
  });
  it("should rutern 2, countNumberOfPalindromeContains(ab.array)", function(done) {
    var actual, inputArray;
    inputArray = ['a', 'ab', 'c'];
    actual = palindromeAnalysis.countNumberOfPalindromeContains(inputArray);
    actual.should.be.exactly(2);
    return done();
  });
  it("abcde should rutern 5", function(done) {
    var actual, inputArray;
    inputArray = palindromeAnalysis.createSubStrings('abcde');
    actual = palindromeAnalysis.countNumberOfPalindromeContains(inputArray);
    actual.should.be.exactly(5);
    return done();
  });
  it("pepper should rutern 13", function(done) {
    var actual, inputArray;
    inputArray = palindromeAnalysis.createSubStrings('pepper');
    actual = palindromeAnalysis.countNumberOfPalindromeContains(inputArray);
    actual.should.be.exactly(13);
    return done();
  });
  return it("aaaaa should rutern 15", function(done) {
    var actual, inputArray;
    inputArray = palindromeAnalysis.createSubStrings('aaaaa');
    actual = palindromeAnalysis.countNumberOfPalindromeContains(inputArray);
    actual.should.be.exactly(15);
    return done();
  });
});

expect = require('chai').expect

checkForFizzBuzz = (x) ->
  if x % 5 is 0 and x % 3 is 0
    return 'FizzBuzz'
  else if x % 3 is 0
    return 'Fizz'
  else if x % 5 is 0
    return 'Buzz'
  else
    return x

for num in [1..100]
  console.log(checkForFizzBuzz(num))
  
describe 'checkForFizzBuzz()', ->
  describe '#checkForFizzBuzz()', ->
    it 'should return the number if it isnt a multiple of 3', ->
      expect(checkForFizzBuzz(1)).to.equal 1
    it 'should return the number if it isnt a multiple of 5', ->
      expect(checkForFizzBuzz(4)).to.equal 4
    it 'should return Fizz if the number is divisible by 3', ->
      expect(checkForFizzBuzz(3)).to.equal 'Fizz'
    it 'should return Buzz if the number is divisible by 5', ->
      expect(checkForFizzBuzz(5)).to.equal 'Buzz'
    it 'should return FizzBuzz if the number is divisible by both 3 and 5', ->
      expect(checkForFizzBuzz(15)).to.equal 'FizzBuzz'

require('rspec')
require('anagram')

describe('String#anagram?') do
  it('Check if two words are anagram') do
    expect('eat, tea'.anagram?()).to(eq(true))
  end
  it('Check if two words are NOT anagram') do
    expect('hello, love'.anagram?()).to(eq(false))
  end
  it('Check if two words are anagram regardless of capitalization') do
    expect('Tea, Eat'.anagram?()).to(eq(true))
  end
  it('Check if two words are NOT anagram regardless of capitalization') do
    expect('lOVe, HeLLo'.anagram?()).to(eq(false))
  end
end
describe('String#word?') do
  it('Check if two words are actual words') do
    expect('listen, silent'.word?()).to(eq(true))
  end 
  it('Check if two words are NOT actual words') do
    expect('yurb, ruby'.word?()).to(eq(false))
  end
end
describe('String#palindrome?') do
  it('Check if a word is palindrome') do
    expect('Level'.palindrome?()).to(eq(true))
  end
  it('Check if a word is NOT a palindrome') do
    expect('testtesttest'.palindrome?()).to(eq(false))
  end
end

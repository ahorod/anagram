require('rspec')
require('anagram')

describe('String#anagram?') do
  it('Check if two words are anagram') do
    expect("eat".anagram?("tea")).to(eq(true))
  end
  it('Check if two words are NOT anagram') do
    expect("hello".anagram?("love")).to(eq(false))
  end
  it('Check if two words are anagram regardless of capitalization') do
    expect("Tea".anagram?("Eat")).to(eq(true))
  end
  it('Check if two words are NOT anagram regardless of capitalization') do
    expect("lOVe".anagram?("HeLLo")).to(eq(false))
  end
  it('Check if sentences are anagrams') do
    expect("The public art galleries".anagram?("Large picture halls, I bet")).to(eq(true))
  end
  it('Check if two sentences are NOT anagrams') do
    expect("Test to test the test".anagram?("Beautiful sunny day")).to(eq(false))
  end
end
describe('String#check_all') do
  it('if a word is anagram check if it is a palindrome') do
    expect('Anna'.check_all("nana")).to(eq("It's an anagram and a palindrome"))
  end
  it('if a word is anagram check if it is NOT a palindrome') do
    expect('tea'.check_all('eat')).to(eq("It's just an anagram"))
  end
  it('if a word is not anagram check if it an antigram') do
    expect('bye'.check_all('hello')).to(eq("It's nothing"))
  end
  it('check if it is a word') do
    expect('asssgh'.check_all('hello')).to(eq("It's not a word"))
  end
  it('check if it is a word') do
    expect('asssgh'.check_all('hello')).to(eq("It's not a word"))
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

describe('String#word?') do
  it('Check if two words are actual words') do
    expect("listen".word?("silent")).to(eq(true))
  end
  it('Check if two words are NOT actual words') do
    expect("yurb".word?("ruby")).to(eq(false))
  end
end
describe('String#antigram?') do
  it('Check if two words are antigrams') do
    expect("hi".antigram?("bye")).to(eq(true))
  end
  it('Check if two words are NOT antigrams') do
    expect("united".antigram?("untied")).to(eq(false))
  end
  it('Check if two sentences are antigrams') do
    expect("hi oLa la".antigram?("BYE beby")).to(eq(true))
  end
  it('Check if two sentences are NOT antigrams') do
    expect("The public art galleries".antigram?("Large picture halls, I bet")).to(eq(false))
  end
end

require('rspec')
require('anagram')

describe('String#palindrome?') do
  it('Check if a word is palindrome') do
    expect('Level.'.palindrome?()).to(eq(true))
  end
  it('Check if a word is NOT a palindrome') do
    expect('testtesttest'.palindrome?()).to(eq(false))
  end

end

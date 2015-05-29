require('rspec')
require('pry')
require('word_puzzle')

describe('String#word_puzzle') do
  it("replaces the vowels of a word with a dash symbol") do
    expect(("dog").word_puzzle()).to(eq("d-g"))
  end
end

require('rspec')
require('anagram')

describe('String#anagram') do
  it('check if two words are anagrams') do
    expect(('moop').anagram('opom')).to(eq('anagrams!'))
  end
end

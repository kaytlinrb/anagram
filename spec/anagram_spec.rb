require('rspec')
require('anagram')

describe('String#anagram')
  it('check if two words are anagrams') do
    expect(('ruby')).to(eq('ybur'))
  end
end

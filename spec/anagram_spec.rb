require('rspec')
require('anagram')

describe('String#anagram') do
  it('check if two words are anagrams') do
    expect(('moop').anagram('opom')).to(eq('anagrams!'))
  end
  it('check for consistant casing') do
    expect(('KittY').anagram('Ttkiy')).to(eq('anagrams!'))
  end
  it('check if words are palindromes') do
    expect(('katie').anagram('eitak')).to(eq('palindromes!'))
  end
  it('check if words have a vowel') do
    expect(('qmtp').anagram('ptmq')).to(eq('not a real word'))
  end
end

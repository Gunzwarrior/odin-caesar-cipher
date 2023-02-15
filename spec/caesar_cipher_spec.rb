# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'works with a basic string' do
    expect(caesar_cipher('abcde', 5)).to eql('fghij')
  end

  it 'wrap from z to a' do
    expect(caesar_cipher('vwx', 3)).to eql('yza')
  end

  it 'keeps the same case' do
    expect(caesar_cipher('AbCdE', 5)).to eql('FgHiJ')
  end

  it 'support spaces and punctuation' do
    expect(caesar_cipher('a! bc. d; e?', 5)).to eql('f! gh. i; j?')
  end

  it 'passes the Odin example test' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end

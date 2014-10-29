# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be
# confusing. It obeys a few simple rules (below) but when it's spoken
# quickly it's really difficult for non-children (and non-native
# speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to
# the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end
# of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional
# variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.

require_relative "../lib/04_pig_latin"

describe "translate_phrase" do

  it "translates a word beginning with a vowel" do
    s = translate_phrase("apple")
    s.should == "appleay"
  end

  it "translates a word beginning with a consonant" do
    s = translate_phrase("banana")
    s.should == "ananabay"
  end

  it "translate a word beginning with two consonants" do
    s = translate_phrase("cherry")
    s.should == "errychay"
  end

  it "translates two words" do
    s = translate_phrase("eat pie")
    s.should == "eatay iepay"
  end

  it "translates a word beginning with three consonants" do
    translate_phrase("three").should == "eethray"
  end

  it "counts 'sch' as a single phoneme" do
    s = translate_phrase("school")
    s.should == "oolschay"
  end

  it "counts 'qu' as a single phoneme" do
    s = translate_phrase("quiet")
    s.should == "ietquay"
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate_phrase("square")
    s.should == "aresquay"
  end

  it "translates many words" do
    s = translate_phrase("the quick brown fox")
    s.should == "ethay ickquay ownbray oxfay"
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  it "translates many words even with upcase letters" do
    s = translate_phrase("Robert Downey Jr. is Iron Man")
    s.should == "Obertray Owneyday Jray. isay Ironay Anmay"
  end
  # * retain the punctuation from the original phrase
  it "retain the punctuation from the original phrase" do
    s = translate_phrase("Robert Downey Jr. is Iron Man,")
    s.should == "Obertray Owneyday Jray. isay Ironay Anmay,"
  end
end

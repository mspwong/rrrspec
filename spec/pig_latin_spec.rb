require "rspec"
require File.dirname(__FILE__) + '/../app/models/why_nots/pig_latin'

describe "PigLatin:  " do
  context "'hello world'" do
    it "is translated to 'ellohay orldway'" do
      WhyNots::PigLatin.translate('hello world').should == 'ellohay orldway'
    end
  end

  context "'Hello World'" do
    it "is translated to 'Ellohay Orldway'" do
      WhyNots::PigLatin.translate('Hello World').should == 'Ellohay Orldway'
    end
  end

  context "'Hello World!!!'" do
    it "be translated to 'Ellohay Orldway!!!'" do
      WhyNots::PigLatin.translate('Hello World!!!').should == 'Ellohay Orldway!!!'
    end
  end

  context "'Hello, World!!!'" do
    it "be translated to 'Ellohay, Orldway!!!'" do
      WhyNots::PigLatin.translate('Hello, World!!!').should == 'Ellohay, Orldway!!!'
    end
  end

end

Given(/^there is a event named "(.*?)" in database$/) do |name|
  Event.new(:name => name).save!
end

Then(/^there shouldn't be any event$/) do
  Event.all.count.should == 0
end

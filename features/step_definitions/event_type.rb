Given(/^there is a event_type named "(.*?)" in database$/) do |name|
  EventType.new(:name => name).save!
end

Then(/^there shouldn't be any event_type$/) do
  EventType.all.count.should == 0
end

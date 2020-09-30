Given('the basket has {int} cucumbers') do |int|
    Kernel.puts int
end

When('{int} cucumbers are added to the basket') do |int|
    Kernel.puts int
end
    
Then('the basket contains {int} cucumbers') do |int|
    Kernel.puts int
end
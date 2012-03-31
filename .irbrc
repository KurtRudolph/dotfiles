%w{rubygems wirble}.each do |lib|
  begin
    require 'wirble'

    Wirble.init
  rescue LoadError => err
    $stderr.puts "Couldn't load Wirble: #{err}"
  end
end

%w{init colorize}.each { |str| Wirble.send(str) }
require "nominsan/version"
require 'ipaddr'

module Nominsan

  # check user ip in white-list.
  def self.checkip(guest_ip)
    guestip = IPAddr.new guest_ip
    file_path = File.join( File.dirname(__FILE__), 'nominsan/source/ips.txt' )
    isuser = "no"
    File.open(file_path).each_line do |line|
      if line.index("#")
        line = line[0, line.index("#")]
      end
      line.chomp!
      line.strip!
      next if line.empty?
      ipa = line.split(";")
      ip_domain = IPAddr.new ipa[0]
      if ip_domain.include? guestip
        isuser = ipa[1]
        return ipa[1]
        break
      end
    end
    if isuser == "no"
      return isuser
    end
  end 
end

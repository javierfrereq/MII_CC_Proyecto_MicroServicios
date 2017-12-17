execute "apt-get update" do
  command "apt-get update"
end

execute "apt-get upgrade" do
  command "apt-get upgrade"
end



package "mysql-server"

execute "export LC_ALL=C" do
command "export LC_ALL=C"

end





execute "apt-get update" do
        command "sudo apt-get update"
end

execute "apt-get upgrade" do
  command "apt-get upgrade"
end

package "apache2" do #Instalamos Apache
  action :install
end

service "apache2" do #Iniciamos Apache
  action [:enable, :start]
end

package "mysql-server"

package "php"


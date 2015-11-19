node[:deploy].each do |app_name, deploy|
  execute "install_updates" do
    command "apt-get update"
  end
end
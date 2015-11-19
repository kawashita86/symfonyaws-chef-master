execute "apt" do
    command "apt-get update"
end

node[:symfony][:packages].each do |package_name|
    package package_name do
        action :install
    end
end

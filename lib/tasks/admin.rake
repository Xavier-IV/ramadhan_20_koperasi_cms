namespace :admin do
  desc "Create an admin user"
  task create: :environment do
    print "Email: "
    email = $stdin.gets.chomp

    print "Password: "
    system("stty -echo") if $stdin.tty?
    password = $stdin.gets.chomp
    if $stdin.tty?
      system("stty echo")
      puts
    end

    print "Confirm password: "
    system("stty -echo") if $stdin.tty?
    password_confirmation = $stdin.gets.chomp
    if $stdin.tty?
      system("stty echo")
      puts
    end

    if password != password_confirmation
      puts "Passwords do not match."
      exit 1
    end

    user = User.new(
      email_address: email,
      password: password,
      password_confirmation: password_confirmation,
      admin: true
    )

    if user.save
      puts "Admin '#{user.email_address}' created."
    else
      puts "Failed: #{user.errors.full_messages.join(', ')}"
      exit 1
    end
  end

  desc "Grant admin to an existing user"
  task :grant, [:email] => :environment do |_t, args|
    user = User.find_by!(email_address: args[:email])
    user.update!(admin: true)
    puts "Admin granted to #{user.email_address}."
  end

  desc "Revoke admin from a user"
  task :revoke, [:email] => :environment do |_t, args|
    user = User.find_by!(email_address: args[:email])
    user.update!(admin: false)
    puts "Admin revoked from #{user.email_address}."
  end

  desc "Non-interactive admin setup: bin/rails admin:setup[email,password]"
  task :setup, [:email, :password] => :environment do |_t, args|
    abort "Usage: bin/rails admin:setup[email,password]" unless args[:email] && args[:password]

    user = User.find_or_create_by!(email_address: args[:email]) do |u|
      u.password = args[:password]
      u.password_confirmation = args[:password]
      u.admin = true
    end
    user.update!(admin: true) unless user.admin?
    puts "Admin '#{user.email_address}' ready."
  end

  desc "List all admin users"
  task list: :environment do
    admins = User.where(admin: true)
    if admins.any?
      admins.each { |u| puts "  #{u.email_address}" }
    else
      puts "No admin users found."
    end
  end
end

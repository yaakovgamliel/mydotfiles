# This Rakefile clones my dotfiles repo from https://github.com/yaakovgamliel/mydotfiles
# renames the current dotfile to *.old, and moves the new dotfile from the cloned repo

# Just adds nice color to the terminal :)

class String
  def self.colorize(text, color_code)
    "\e[#{color_code}m#{text}\e[0m"
  end

  def cyan
    self.class.colorize(self, 36)
  end

  def green
    self.class.colorize(self, 32)
  end
end


task default: %w[setup]

desc 'Runs the basic dotfile install for bash, vim and irb'
task :setup => [:clone_repo, :move_new_files] do
  puts '[*] Setting you up!!'.cyan
end

desc 'Grabs the repository from github'
task :clone_repo do
  puts "[*] Cloning dotfile repo ...".green
  `cd /tmp && git clone https://github.com/yaakovgamliel/mydotfiles`
end

desc 'Rename old files'
task :rename_old_files do
  puts '[*] Backing up old config files ...'.green
  `cd && mv .bash_profile .bash_profile.old`
  `cd && mv .vimrc .vimrc.old`
  `cd && mv .irbrc .irbrc.old`
end

desc 'Moves new mydotfile to user folder'
task :move_new_files => :rename_old_files do
  puts '[*] Moving new dotfile to home directory ...'.cyan
  `cd /tmp/mydotfiles && cp .bash_profile ~/`
  `cd /tmp/mydotfiles && cp .vimrc ~/`
  `cd /tmp/mydotfiles && cp .irbrc ~/`
end

desc 'Sets Vim files from the repo'
task :setup_vim do
  `cd /tmp/mydotfiles && mv vim .vim`
  `cd && mv .vim .vim.before`
  puts '[*] Your old Vim directory is now .vim.before'
  `cd /tmp/mydotfiles && mv .vim ~/`
end

# This means that we need to complete task another_task before
# we try to acomplish the simple_test task

task :simple_test => :another_task do
  puts 'Just for testing ...'.green
end

task :another_task do
  puts 'Hello World!'.cyan
end

task :clean do
  `rm -d mydotfiles`
end

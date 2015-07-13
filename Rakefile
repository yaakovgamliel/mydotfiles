# This Rakefile clones my dotfiles repo from https://github.com/yaakovgamliel/mydotfiles
# renames the current dotfile to *.old, and moves the new dotfile from the cloned repo

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
  `cd /tmp/mydotfiles && cp .aliases ~/`
end

desc 'Sets Vim files from the repo'
task :setup_vim do
  `cd && mv .vim .vim.before`
  puts '[*] Your old Vim directory is now .vim.before'
  `mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`
  puts '[*] Now your Vim uses Pathogen'.cyan
  puts '[*] Installing Vim plugins...'.cyan
  `cd ~/.vim/bundle && git clone git://github.com/tpope/vim-fugitive.git`
  `cd ~/.vim/bundle && vim -u NONE -c "helptags vim-fugitive/doc" -c q`
  `cd ~/.vim/bundle && git clone git://github.com/tpope/vim-rails.git`
  `cd ~/.vim/bundle && git clone git://github.com/tpope/vim-bundler.git`
  `cd ~/.vim/bundle && git clone https://github.com/vim-ruby/vim-ruby.git`
  `cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git`
  `git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline`
  puts '[*] Finished installing Vim plugins'.cyan
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



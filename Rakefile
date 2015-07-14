#  ┌──────────────────────────────────────────────────────────────────────────────┐
#  │                                                                              │
#  │                                                                              │
#  │                                                                              │
#  │  __   __          _              _       ____        _    __ _ _             │
#  │  \ \ / /_ _  __ _| | _______   _( )___  |  _ \  ___ | |_ / _(_) | ___  ___   │
#  │   \ V / _` |/ _` | |/ / _ \ \ / /// __| | | | |/ _ \| __| |_| | |/ _ \/ __|  │
#  │    | | (_| | (_| |   < (_) \ V /  \__ \ | |_| | (_) | |_|  _| | |  __/\__ \  │
#  │    |_|\__,_|\__,_|_|\_\___/ \_/   |___/ |____/ \___/ \__|_| |_|_|\___||___/  │
#  │                                                                              │
#  │                                                                              │
#  │                                                                              │
#  │                                                                              │
#  └──────────────────────────────────────────────────────────────────────────────┘
# This Rakefile clones my dotfiles repo from https://github.com/yaakovgamliel/mydotfiles
# renames the current dotfile to *.old, and moves the new dotfile from the cloned repo

require 'fileutils'

VIM_PLUGINS = ['git://github.com/tpope/vim-rails.git',
               'git://github.com/tpope/vim-rails.git',
               'git://github.com/tpope/vim-bundler.git',
               'https://github.com/vim-ruby/vim-ruby.git',
               'https://github.com/scrooloose/nerdtree.git',
               'https://github.com/bling/vim-airline.git',
               'https://github.com/scrooloose/syntastic.git'
              ]

DOTFILES = ['.vimrc', '.irbrc','.bash_profile','.aliases']

CURRENT_DIR = FileUtils.pwd

task default: %w[setup]

desc 'Runs the basic dotfile install for bash, vim and irb'
task :setup => [:clone_repo, :move_new_files] do
  puts '[*] Setting you up!!'.cyan
end

desc 'Grabs the repository from github'
task :clone_repo do
  puts "[*] Cloning dotfile repo ...".green
  #`cd  && git clone https://github.com/yaakovgamliel/mydotfiles`
  #`cd && mv mydotfiles .mydotfiles`
end

desc 'Grabs current dotfile'
task :get_currents do
  puts '[*] Grabbing your current dotfile ...'.green

  DOTFILES.each do |dot|
    `cd && cp #{dot} #{CURRENT_DIR}`
  end

  puts '[*] Done grabbing dotfiles here'
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
  DOTFILES.each do |dot|
    `cd #{CURRENT_DIR} && cp #{dot} ~/`
  end
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

  VIM_PLUGINS.each do |repo|
    `cd ~/.vim/bundle && git clone #{repo}`
  end

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

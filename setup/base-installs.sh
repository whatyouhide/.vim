# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby


# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)


# https://github.com/rupa/z
# z, oh how I love you
git clone https://github.com/rupa/z.git $HOME/.z-code
chmod +x $HOME/.z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)
# z binary is already referenced from .bash_profile


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments
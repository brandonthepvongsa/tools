# Much thanks to https://ericmjl.github.io/data-science-bootstrap-notes/ where
# many of these commands come from.

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)

# Install miniconda
cd $HOME
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O anaconda.sh
bash anaconda.sh -b -p $HOME/anaconda/

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


echo 'Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.'

# # Add Anaconda to path
# echo "export PATH='/Users/$USER/anaconda/bin:$PATH'" >> ~/.zshrc
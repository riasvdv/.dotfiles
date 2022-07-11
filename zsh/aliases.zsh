# PHP
alias phpunit="vendor/bin/phpunit"
alias phpunitw="phpunit-watcher watch"
alias a="php artisan"
alias pl="php please"
alias da="ddev exec php artisan"
alias mfs='php artisan migrate:fresh --seed'
alias nah='git reset --hard;git clean -df'
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# JavaScript
alias jest="./node_modules/.bin/jest"

# Redis
alias flush-redis="redis-cli FLUSHALL"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Flush Directory Service cache
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Enable aliases to be sudo’ed
alias sudo='sudo '

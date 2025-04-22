# PHP
alias phpunit="vendor/bin/phpunit"
alias phpunitw="phpunit-watcher watch"
alias phpstan="vendor/bin/phpstan analyse"
alias a="valet php artisan"
alias pl="valet php please"
alias da="ddev exec php artisan"
alias mfs='valet php artisan migrate:fresh --seed'
alias nah='git reset --hard;git clean -df'
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias php-cs-fixer="vendor/bin/php-cs-fixer"
alias pint="vendor/bin/pint"
alias ppp="pint & phpstan & p"

# JavaScript
alias jest="./node_modules/.bin/jest"

# Redis
alias flush-redis="redis-cli FLUSHALL"

# Kube / Docker
alias k="kubectl"
alias d="docker"
alias dc="docker-compose"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Flush Directory Service cache
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Enable aliases to be sudo’ed
alias sudo='sudo '

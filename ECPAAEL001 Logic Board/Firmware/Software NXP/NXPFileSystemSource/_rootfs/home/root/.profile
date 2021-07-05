complete -o nospace -C /unit_tests/memtool memtool

if [ -f /tmp/selfcheck.log ]; then
        cat /tmp/selfcheck.log
fi

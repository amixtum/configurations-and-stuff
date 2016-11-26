function fish_greeting
end

function test_compile
    clang++ -std=c++14 $argv -o test
end

function set_brightness
    xrandr --output eDP-1 --brightness $argv
end

function reset_wifi
    sudo ip link set wlp2s0 up
    sudo ip link set wlp2s0 down
    sudo dhcpcd
end

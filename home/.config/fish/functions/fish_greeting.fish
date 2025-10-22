function fish_greeting

    # Greeting messages
    set powered_msgs \
        "candy!" \
        "rubber bands" \
        "a black hole" \
        "logic" \
        "electromagnetic cheese"

    # Randomly pick a message
    set chosen_msg (random)"%"(count $powered_msgs)
    set chosen_msg $powered_msgs[(math $chosen_msg"+1")]

    # Output it to the console
    printf (set_color F90)"Welcome! This terminal session is powered by %s\n" $chosen_msg

end


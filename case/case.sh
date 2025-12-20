#!/bin/bash

case $(whoami) in
    "root")
        echo "you are root"
    ;;
    "pratik")
        echo "you are the normal user"
    ;;
    *)
        echo "something is wrong"
    ;;
esac

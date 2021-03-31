#!/bin/bash
# github.com/nQx1

for product in IntelliJIdea WebStorm DataGrip PhpStorm CLion PyCharm GoLand RubyMine Rider; do
    echo "Closing $product"
    pkill -f /usr/share/$product*
    
    echo "Resetting trial period for $product"

    echo "removing evaluation key..."
    rm -rf $HOME/.config/JetBrains/$product*/\eval/*

    echo "removing all evlsprt properties in options/other.xml..."
    sed -i '' '/evlsprt/d' $HOME/.config/JetBrains/$product*/options/other.xml

    echo
done

echo "Done, enjoy your new evaluation period."

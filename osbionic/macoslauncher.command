osascript -e '
tell app "Terminal"
   do script " \
    if (! docker stats --no-stream ); then
            open /Applications/Docker.app
            while (! docker stats --no-stream ); do sleep 1; done 
    fi;
    cd ~/Github/waalfisk/osbionic && ./config.sh start"
end tell'
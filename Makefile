TWITCH=http://twitch.tv/twitchplayspokemon

init-vlc:
	@mkdir ~/.local/share/vlc/lua/playlist/ -p
	@wget https://gist.githubusercontent.com/stefansundin/c200324149bb00001fef5a252a120fc2/raw/fc7a09459a94e44e5f4966da4b4a6383ce53da0c/twitch-extension.lua

live-screenshot:
	@vlc $(TWITCH) --rate=1 --video-filter=scene --vout=dummy --start-time=10 --stop-time=11 --scene-format=png --scene-ratio=24 --scene-prefix=snap --scene-path=`pwd`/imgs

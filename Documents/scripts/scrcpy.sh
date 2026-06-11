gnome-terminal -- bash -c 'scrcpy \
--max-fps=120 \
--video-bit-rate=50M \
--audio-bit-rate=320K \
--turn-screen-off \
--video-codec=h265 \
--no-audio-playback \
--window-borderless; exec bash'

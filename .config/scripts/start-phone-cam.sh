sudo modprobe v4l2loopback devices=1 video_nr=2 exclusive_caps=1 card_label="Phone Webcam"

scrcpy -d --video-source=camera --camera-facing=front --camera-size=1920x1080 --v4l2-sink=/dev/video2 --no-video-playback --no-audio

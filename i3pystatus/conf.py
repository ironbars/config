from i3pystatus import Status

status = Status()

status.register("clock",
	format="%F (%a) %I:%M %p")

status.register("battery",
        format="⚡: {percentage} - {status}",
        alert=True,
        alert_percentage=10,
        status={
            "DIS": "DIS",
            "CHR": "CHR",
            "FULL": "FULL"
        })

status.register("network",
        interface="enp0s3",
        format_up="{v4cidr}")

status.register("disk",
        path="/home",
        format="{used}G/{total}G ({percentage_used})%")

status.register("cpu_usage",
        format="CPU: {usage}%")

status.register("mpd",
        format="♫: {status} [{title} - {artist}]",
        status={
            "pause": "▷",
            "play": "▶",
            "stop": "⬛",
        })

status.register("alsa",
        format="VOL: {volume}%")

status.run()

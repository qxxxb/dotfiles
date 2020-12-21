#!/usr/bin/env bash
#   Source: https://gist.github.com/Tadly/0741821d3694deaec1ee454a95c591fa
#
#   Use rofi to pick emoji because that's what this
#   century is about apparently...
#
#   Requirements:
#     rofi, xsel, xdotool, curl, xmllint
#
#   Usage:
#     1. Download all emoji
#        $ rofi-emoji --download
#
#     2. Run it!
#        $ rofi-emoji
#
#   Notes:
#     * You'll need a emoji font like "Noto Emoji" or "EmojiOne".
#     * Confirming an item will automatically paste it WITHOUT
#       writing it to your clipboard.
#     * Ctrl+C will copy it to your clipboard WITHOUT pasting it.
#

# Where to save the emojis file.
EMOJI_FILE="$HOME/Documents/static/emojis.txt"

function notify() {
	if [ "$(command -v notify-send)" ]; then
		notify-send "$1" "$2"
	fi
}

function rofi_menu() { # {{{
	rofi -dmenu -i -p 'emoji:' \
		-kb-row-tab '' \
		-kb-row-select Tab \
		-kb-custom-1 Control+c
}
# }}}

function repeat() { # {{{
	local rplc str="$1" count="$2"
	rplc="$(printf "%${count}s")"
	echo "${rplc// /"$str"}"
}
# }}}

function toclipboard() { # {{{
	xclip -i -selection primary
	xclip -o -selection primary | xclip -i -selection clipboard
}
# }}}

function display() {
	local emoji line exit_code quantifier

	emoji=$(cat "$EMOJI_FILE" | grep -v '#' | grep -v '^[[:space:]]*$')
	line="$(echo "$emoji" | rofi_menu)"
	exit_code=$?

	line=($line)
	last=${line[${#line[@]}-1]}
	# quantifier="${last:${#last}-1:1}"
	quantifier=$(echo $last | grep -Eo '[0-9]+$')
	if [[ ! "$quantifier" =~ [0-999] ]]; then
		quantifier=1
	fi
	emoijs="$(repeat "${line[0]}" "$quantifier")"

	if [ $exit_code == 0 ]; then
		# xdotool type --clearmodifiers "$emoijs"
		echo -n "$emoijs" | toclipboard

		local single_emoijs
		single_emoijs=${emoijs:0:1}
		xdotool type --clearmodifiers "$single_emoijs"
	elif [ $exit_code == 10 ]; then
		echo -n "$emoijs" | toclipboard
	fi
}

# display displays :)
display

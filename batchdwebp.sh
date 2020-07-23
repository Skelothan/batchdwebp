#! /bin/sh

which dwebp>/dev/null
if [ $? -ne 0 ]; then
	echo "Error: libwebp isn't installed."
	exit 1
fi

for f in *.webp ; do
	[[ -f "$f" ]] || continue
    
	mime=$(file --mime-type $f | cut -f 2 -d ' ')
	name=$(echo "$f" | cut -f 1 -d '.')

	if [ "$mime" == "image/webp" ]; then
		echo "Converting file $f..."
		dwebp -o "$name.png" "$f"
	elif [ "$mime" == "image/png" ]; then
		echo "File $f was actually a PNG, renaming..."
		cp $f "$name.png"
	elif [ "$mime" == "image/jpeg" ]; then
		echo "File $f was actually a JPEG, renaming..."
		cp $f "$name.jpg"
	elif [ "$mime" == "image/gif" ]; then
		echo "File $f was actually a GIF, renaming..."
		cp $f "$name.gif"
	fi
done

echo "Done."
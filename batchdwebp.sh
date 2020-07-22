#! /bin/sh

which dwebp>/dev/null
if [ $? -ne 0 ]; then
	echo "Error: libwebp isn't installed."
	exit 1
fi

for f in *.webp ; do
	[[ -f "$f" ]] || continue
	echo "Converting file $f..."
	name=$(echo "$f" | cut -f 1 -d '.')
	dwebp -o "$name.png" "$f"
done

echo "Done."
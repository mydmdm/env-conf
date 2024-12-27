name=$(echo $USER | cut -d "." -d "@" -f 1)
echo $USER, $name
git config --global user.name $name
git config --global user.email example@example.com
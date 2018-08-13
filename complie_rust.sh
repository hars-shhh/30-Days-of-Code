mkdir dist
shopt -s dotglob
find * -prune -type d |
while IFS= read -r d; do
    echo "$d"
    rustc "$d/Solution.rs" -o "dist/Solution_rust_$d"
done

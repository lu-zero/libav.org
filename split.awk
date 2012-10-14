BEGIN {
    url = ARGV[1] ".html"
    sub(/^.*\//, "", url)
}

/<a name="[^"]/ {
    name = $2;
    sub(/[^\"]*\"/, "", name);
    sub(/\".*/, "", name);
    name = url "#" name;
}

/\<h3/ {
    count++;
    if (count > 5 || NR > 30) {
        print "<ul class=\"pager\"><li><a href=\"" name "\">read more</a></li></ul>";
        exit 0;
    }
}
{ print }

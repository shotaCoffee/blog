if [ $# != 1 ] || [ $1 = "" ]; then
    echo "One parameters are required"
    echo ""
    echo "string: path to markdown file of target post"
    echo ""
    echo "example command"
    echo "\t$ sh ./makeogp.sh ./content/post/test/test.md"
    exit
fi

TARGET_POST_PATH=$1

tcardgen \
    --fontDir ./static/fonts/hackgen/HackGen \
    --output static/images/og \
    --template static/images/og/_ogp_template.png \
    --config tcargen.yaml \
    $TARGET_POST_PATH

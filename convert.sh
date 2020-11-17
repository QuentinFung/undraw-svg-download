mkdir -p ./png
find ./svg -name '*.svg' -exec sh -c 'svgexport "${0%}" ./png/"$(basename ${0%.*}).png" "svg *[fill=\"#6c63ff\"]{fill: #4DA20A}"' {} \;
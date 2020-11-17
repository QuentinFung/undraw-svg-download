mkdir -p ./svg/original
mkdir -p ./svg/4DA20A
for ((i=1;i<60;i++)); do curl -s https://undraw.co/api/illustrations\?page\=$i | jq '.illustrations[] | (.title, .image)' -r -M | sed -e 's/\(.*\)/\1/; s/\ /_/g'|xargs -n2 -L2 bash -c 'curl --silent --output ./svg/original/$1.svg $2 > /dev/null' bash;done;
find ./svg/original -name '*.svg' -exec sh -c 'sed -e "s/\#6c63ff/\#4DA20A/g" "${0%}" > "./svg/4DA20A/$(basename ${0%})"' {} \;
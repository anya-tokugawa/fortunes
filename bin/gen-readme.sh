#!/bin/bash
set -e

generate()
{
echo '# fortunes'
echo 
echo "\`\`\`"
tree --du bin/ src/
echo "\`\`\`"
}
#######################
generate > README.md

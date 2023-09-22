set -o errexit
set -o pipefail
# set -o noclobber
set -o xtrace
set -o nounset 

while read id; do
  curl \
    "https://www.ncbi.nlm.nih.gov/books/${id}/pdf/Bookshelf_${id}.pdf" \
    --output "docs/${id}.pdf"
done < GeneReviewsIDs.txt
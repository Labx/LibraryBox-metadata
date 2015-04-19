group_by(.id) | map({
    id:     .[0].id,
    title:   .[0].title,
    authors: map(.authors)| unique ,
    summary:    map(.summary)| unique ,
    series: map(.series)| unique,
    tags: map(.tags)| unique 
})
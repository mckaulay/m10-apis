### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)
# setwd('~/Documents/info-201/m10-apis/exercise-2/')

base.url <- "https://api.spotify.com/v1/"

# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist
ArtistTopTenTracks <- function (artist) {
  artist.id <- fromJSON( paste0('https://api.spotify.com/v1/search?q=', artist, '&type=artist'))$artists$items$id[1]
  artist.top.tracks <- fromJSON( paste0(base.url, 'artists/', artist.id, '/top-tracks?country=US'))
}


# What are the top 10 tracks by Nelly?




### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"


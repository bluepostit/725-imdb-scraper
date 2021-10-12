require_relative '../scraper'

describe '#top_5_movies' do
  it 'returns an array of the top 5 IMDB movies' do
    expected = [
      "https://www.imdb.com/title/tt0111161/",
      "https://www.imdb.com/title/tt0068646/",
      "https://www.imdb.com/title/tt0071562/",
      "https://www.imdb.com/title/tt0468569/",
      "https://www.imdb.com/title/tt0050083/"
    ]
    actual = top_5_movies
    expect(actual).to eq(expected)
  end
end

describe '#scrape_movie' do
  it 'should return a hash with info for the given movie' do
  expected = {
    cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
    director: "Christopher Nolan",
    storyline: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    title: "The Dark Knight",
    year: 2008
  }
  actual = scrape_movie('https://www.imdb.com/title/tt0468569/')
  expect(actual).to eq(expected)
  end
end

# data for #fetch_movies_url:
# [
#   "https://www.imdb.com/title/tt0111161/",
#   "https://www.imdb.com/title/tt0068646/",
#   "https://www.imdb.com/title/tt0071562/",
#   "https://www.imdb.com/title/tt0468569/",
#   "https://www.imdb.com/title/tt0050083/"
# ]

# data for #scrape_movie:
# {
#   cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
#   director: "Christopher Nolan",
#   storyline: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
#   title: "The Dark Knight",
#   year: 2008
# }

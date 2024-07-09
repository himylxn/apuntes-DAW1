use('localhost:27017');

db.createCollection('movies');

db.getCollection('movies').insertMany([
    {
        "title": "Psycho",
        "writer": "Robert Bloch",
        "year": 1960,
        "actors": [
            {
                "name": "Anthony Perkins",
                "character": "Norman Bates"
            },
            {
                "name": "Vera Miles",
                "character": "Lila Crane"
            }
        ]
    },
    {
        "title": "Matilde",
        "writer": "Roald Dahl",
        "year": 1996,
        "actors": [
            {
                "name": "Mara Wilson",
                "character": "Matilda Wormwood"
            },
            {
                "name": "Marion Dugan",
                "character": "Cookie"
            }
        ]
    },
    {
        "title": "The Chronicles of Narnia: The Lion, the Witch and the Wardrobe",
        "writer": "C. S. Lewis",
        "year": 2005,
        "actors": [
            {
                "name": "William Moseley",
                "character": "Peter Pevensie"
            },
            {
                "name": "Georgie Henley",
                "character": "Lucy Pevensie"
            },
            {
                "name": "Liam Neeson",
                "character": "Aslan"
            }
        ]
    },
    {
        "title": "Iron Man I",
        "writer": "Stan Lee",
        "year": 2008,
        "franchise": "Marvel"
    },
    {
        "title": "Iron Man II",
        "writer": "Stan Lee",
        "year": 2010,
        "franchise": "Marvel"
    },
    {
        "title": "Iron Man III",
        "writer": "Stan Lee",
        "year": 2013,
        "franchise": "Marvel",
        "synopsis": 'Iron Man 3" picks up after the events of "The Avengers." Tony Stark, struggling with anxiety and PTSD after the Battle of New York, faces a new threat in the form of the terrorist known as the Mandarin. When Stark\'s home is attacked, he embarks on a journey to uncover the truth behind the Mandarin\'s identity and his connection to a mysterious organization called AIM. Along the way, Stark must confront his own vulnerabilities and rely on his intellect and resourcefulness without the aid of his Iron Man suits. With surprising twists and a focus on Stark\'s character development, "Iron Man 3" explores themes of identity, redemption, and the consequences of one\'s past actions.'
    },
    {
        "title": "Gremlins"
    },
    {
        "title": "Toy Story I"
    }
]);



//Get all documents
use('localhost:27017');
db.movies.find();

//Get all documents with writer set to "J.R.R. Tolkien"
use('localhost:27017');
db.getCollection('movies').find({'writer':'Stan Lee'})

//Get all documents where actors include "Brad Pitt"
use('localhost:27017');
db.getCollection('movies').find({'actors.name':'William Moseley'})

//Get all documents with franchise set to "The Lord of the Rings"
use('localhost:27017');
db.getCollection('movies').find({'franchise':'Marvel'})

//Get all movies released in the 90s
use('localhost:27017');
db.movies.find({$and:[{'year':{$gt:1989}},{'year':{$lt:2000}}]});

//Get all movies released before the year 2000 or after 2010
use('localhost:27017');
db.movies.find({$and:[{year:{$gt:2000}},{year:{$lt:2010}}]});

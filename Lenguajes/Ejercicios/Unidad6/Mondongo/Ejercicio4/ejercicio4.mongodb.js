use('localhost:27017');

db.createCollection('library');

db.getCollection('library').insert(
  [
        {
          "title": "TCP/IP Illustrated",
          "author": {
            "surname": "Stevens",
            "name": "W."
          },
          "publisher": "Addison-Wesley",
          "price": 65.95
        },
        {
          "title": "Advan Programming for Unix environment",
          "author": {
            "surname": "Stevens",
            "name": "W."
          },
          "publisher": "Addison-Wesley",
          "price": 65.95
        },
        {
          "title": "Data on the Web",
          "author": [
            {
              "surname": "Abiteboul",
              "name": "Serge"
            },
            {
              "surname": "Buneman",
              "name": "Peter"
            },
            {
              "surname": "Suciu",
              "name": "Dan"
            }
          ],
          "publisher": "Morgan Kaufmann publishers",
          "price": 39.95
        },
        {
          "title": "Economics of Technology for Digital TV",
          "editor": {
            "surname": "Gerbarg",
            "name": "Darcy",
            "membership": "CITI"
          },
          "publisher": "Kluwer Academic publishers",
          "price": 129.95
        }
      ]
)

//Search the titles of books whose author surname is 'Stevens'.
use('localhost:27017');
db.library.find({'author.surname':'Stevens'},{'title':1, '_id':0});


//Search the books whose price is greater than 20 euros.
use('localhost:27017');
db.library.find({price:{$gt:20}});

//Search the books whose title contains the word Web.
use('localhost:27017');
db.library.find({title:/Web/});

//Search the books whose title contains the word Web or the word TV.
use('localhost:27017');
db.library.find({title:{$regex:/Web|TV/}});

//Search the books whose title contains the word Web or the word TV (case insensitive)
use('localhost:27017');
db.library.find({title:{$regex:/Web|TV/i}});

//Search the books whose title length is greater than 20 characters
use('localhost:27017');
db.library.find({$where:"this.title.length>20"});

//Search the books whose price is 39.95, 65.95 or 80.95
use('localhost:27017');
db.library.find({price:{$in:[39.95,65.95,80.95]}});
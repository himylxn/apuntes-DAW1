use('localhost:27017');

db.createCollection('bookstore');


db.getCollection('bookstore').insert(

    [
        {
          "title": "Everyday Italian",
          "author": "Giada De Laurentiis",
          "year": 2005,
          "price": 30
        },
        {
          "title": "Harry Potter",
          "author": "J K. Rowling",
          "year": 2005,
          "price": 29.99
        },
        {
          "title": "XQuery Kick Start",
          "author": [
            "James McGovern",
            "Per Bothner",
            "Kurt Cagle",
            "James Linn",
            "Vaidyanathan Nagarajan"
          ],
          "year": 2003,
          "price": 49.99
        },
        {
          "title": "Learning XML",
          "author": "Erik T. Ray",
          "year": 2003,
          "price": 39.95
        }
      ]
)


//Get the titles of all books
db.getCollection('bookstore').find({},{title:1, _id:0});

//Select all the books that have a price with a value that is less than 30.
db.bookstore.find({price:{$lt:30}})

//Select all titles from books that have a price with a value that is less than 30.
db.getCollection('bookstore').find({price:{$lt:30}},{title:1, _id:0})

//Select all titles from books that have a price with a value greater than 30 in alphabetical order.
db.getCollection('bookstore').find({price:{$gt:30}},{title:1,_id:0}).sort({title:1})

//Select all books published between 2003 and 2004.
db.getCollection('bookstore').find({$and:[{year:{$gte:2003}},{year:{$lte:2004}}]})

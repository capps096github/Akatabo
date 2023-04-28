// sample books
import '../../akatabo_exporter.dart';

final List<AkataBook> akataboBooks = [
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'The Alchemist',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    author: 'Paulo Coelho',
    coverImage:
        'https://images.unsplash.com/photo-1680295820898-91223dc2705f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60',
    description:
        'The Alchemist is a novel by Brazilian author Paulo Coelho that was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller. An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.',
    coverDescription:
        "The Alchemist is a novel by Brazilian author Paulo Coelho that was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller. An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.",
    categoryId: bookCategories[0].id,
    price: 10.99,
    rating: 2.5,
    publisherNo: "UGAK01234560095",
    publisher: 'Paulo Coelho',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 3.5,
  ),
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'Integrated Science Book 4',
    author: 'Paulo Coelho',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    coverImage:
        'https://images.unsplash.com/photo-1678915627649-c79691739372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
    description:
        'One of the bestselling science books for primary 4 compiled by two of the best teaching professionals in Uganda. This is the Fourth integrated primary science course book based on the integrated Primary science Syllabus prescribed by the National Curriculum Development Center.',
    coverDescription:
        "This is book four in the exciting series of Comprehensive Primary School Science Books. It is specifically written for use by Primary Four pupils as a course book. It is accompanied by a revision science work book four to guide the teachers, pupils and parents who help their children in their daily different learning tasks.",
    categoryId: bookCategories[0].id,
    price: 11000.99,
    rating: 3.5,
    publisherNo: "UGAK01234560095",
    publisher: 'Paulo Coelho',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 3.5,
  ),
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'Comprehensive SST Book 7',
    author: 'Paulo Coelho',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    coverImage:
        'https://images.unsplash.com/photo-1679340891423-a863f984fe6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
    description:
        'One of the bestselling science books for primary 4 compiled by two of the best teaching professionals in Uganda. This is the Fourth integrated primary science course book based on the integrated Primary science Syllabus prescribed by the National Curriculum Development Center.',
    coverDescription:
        "This is book four in the exciting series of Comprehensive Primary School Science Books. It is specifically written for use by Primary Four pupils as a course book. It is accompanied by a revision science work book four to guide the teachers, pupils and parents who help their children in their daily different learning tasks.",
    categoryId: bookCategories[2].id,
    price: 11000.99,
    rating: 4.5,
    publisherNo: "UGAK01234560095",
    publisher: 'Paulo Coelho',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 3.5,
  ),
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'Primary Maths Book 4',
    author: 'Paulo Coelho',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    coverImage:
        'https://images.unsplash.com/photo-1678915627649-c79691739372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
    description:
        'One of the bestselling science books for primary 4 compiled by two of the best teaching professionals in Uganda. This is the Fourth integrated primary science course book based on the integrated Primary science Syllabus prescribed by the National Curriculum Development Center.',
    coverDescription:
        "This is book four in the exciting series of Comprehensive Primary School Science Books. It is specifically written for use by Primary Four pupils as a course book. It is accompanied by a revision science work book four to guide the teachers, pupils and parents who help their children in their daily different learning tasks.",
    categoryId: bookCategories[3].id,
    price: 11000.99,
    rating: 4.5,
    publisherNo: "UGAK01234560095",
    publisher: 'Paulo Coelho',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 3.5,
  ),
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'Gulu - Gulu Goes to School',
    author: 'Paulo Coelho',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    coverImage:
        'https://images.unsplash.com/photo-1678915627649-c79691739372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
    description:
        'A story of a pet goat that follows her owner to school and sits with her in class.',
    coverDescription:
        "A story of a pet goat that follows her owner to school and sits with her in class.",
    categoryId: bookCategories[1].id,
    price: 11000.99,
    rating: 4.5,
    publisherNo: "UGAK01234560095",
    publisher: '1RP Publishers',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 4.5,
  ),
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'Where is the baby?',
    author: 'MKD Publishers',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    coverImage:
        'https://images.unsplash.com/photo-1678915627649-c79691739372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
    description:
        'A story of a baby who hides her self in a box and causes commotion to his sister and brother.',
    coverDescription:
        "A story of a baby who hides her self in a box and causes commotion to his sister and brother.",
    categoryId: bookCategories[1].id,
    price: 11000.99,
    rating: 4.5,
    publisherNo: "UGAK01234560095",
    publisher: 'MKD Publishers',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 4.2,
  ),
  AkataBook(
    bookId: const Uuid().v4(),
    title: 'Busy Hospital',
    author: 'MKD Publishers',
    bookUrl:
        'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf',
    coverImage:
        'https://images.unsplash.com/photo-1678915627649-c79691739372?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
    description:
        'An illustration of a busy hospital using wild animals as the main characters.',
    coverDescription:
        "An illustration of a busy hospital using wild animals as the main characters.",
    categoryId: bookCategories[0].id,
    price: 11000.99,
    rating: 4.5,
    publisherNo: "UGAK01234560095",
    publisher: 'MKD Publishers',
    publishedOn: DateTime(2002, 3, 15),
    bookLanguage: "English",
    numOfPages: 234,
    bookSize: 4.2,
  ),
];

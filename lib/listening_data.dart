class ListeningTestData {
  const ListeningTestData({required this.number, required this.questions});

  final int number;
  final List<ListeningQuestionData> questions;
}

class ListeningQuestionData {
  const ListeningQuestionData({
    required this.number,
    required this.question,
    required this.options,
    required this.correctAnswer,
  });

  final int number;
  final String question;
  final List<String> options;
  final String correctAnswer;
}

const List<ListeningTestData> listeningTests = [
  ListeningTestData(
    number: 1,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'A person calls a friend about his new car. How much does the small car cost him?',
        options: ['3250 pounds', '3550 pounds', '4250 pounds'],
        correctAnswer: '3250 pounds',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'Two people are talking about meeting for dinner. What time does Ahmed meet Rose?',
        options: ['Half past seven', 'Quarter past seven', 'Quarter to eight'],
        correctAnswer: 'Quarter to eight',
      ),
      ListeningQuestionData(
        number: 3,
        question: 'A man calls the teleshop. What is the teleshop number?',
        options: ['102030', '201030', '301020'],
        correctAnswer: '201030',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'A man is talking to a shopping assistant. What color top is he going to buy?',
        options: ['Green', 'Blue', 'Black'],
        correctAnswer: 'Black',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'Anna is calling her brother Max. What does Anna do later in the afternoon?',
        options: [
          'Stay late at the office',
          'Pick up her kids',
          'Hang out with friends',
        ],
        correctAnswer: 'Stay late at the office',
      ),
      ListeningQuestionData(
        number: 6,
        question: 'Vincent is calling James. Why does Vincent call James?',
        options: ['To say hello', 'To suggest a drink', 'To arrange meeting'],
        correctAnswer: 'To suggest a drink',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'A man is talking about his trip. What did he enjoy last year?',
        options: ['Go for a walk', 'Go picnic', 'Go cycling'],
        correctAnswer: 'Go cycling',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'A woman is talking about her job. What encouraged her to become a scientist?',
        options: ['Her mother', 'A large stone', 'The computer'],
        correctAnswer: 'A large stone',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'A man is talking about the city concert. How will the concert end?',
        options: [
          "The city's favorite group",
          'Fireworks performance',
          'Singing from orchestra',
        ],
        correctAnswer: "The city's favorite group",
      ),
      ListeningQuestionData(
        number: 10,
        question:
            "A man is talking about his family trip. What does the man's wife enjoy?",
        options: ['Walking', 'Shopping', 'Photography'],
        correctAnswer: 'Photography',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            "Jana is talking to her friend. What does Jana's sister look like?",
        options: ['Curly hair', 'Short', 'Thin'],
        correctAnswer: 'Short',
      ),
      ListeningQuestionData(
        number: 12,
        question: 'A man is calling his sister. Where are they going to meet?',
        options: ['At the university', 'At the station', 'At the park'],
        correctAnswer: 'At the park',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'A woman is talking about her vacation. What is the relationship between the speaker and Lisa?',
        options: ['Best friends', 'Mother and daughter', 'Teacher and student'],
        correctAnswer: 'Best friends',
      ),
    ],
  ),
  ListeningTestData(
    number: 2,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'A woman is talking about her house. What is she going to change in their house?',
        options: ['The window', 'The car', 'The computer'],
        correctAnswer: 'The window',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A receptionist is checking the client list of a clinic. How many clients are Americans?',
        options: ['One', 'Two', 'Three'],
        correctAnswer: 'One',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Listen to Anna talking about her routine. Where does Anna go for a walk every morning?',
        options: ['Park', 'Neighborhood', 'College'],
        correctAnswer: 'College',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'Listen to a girl calling the cafe. What did she forget, and where did she leave it?',
        options: ['On the counter', 'In the corner', 'Near the door'],
        correctAnswer: 'In the corner',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'Helen is calling a friend about the place her whole family is standing while seeing her off to college. Where are they standing?',
        options: ['Library complex', 'University area', 'Residential area'],
        correctAnswer: 'Residential area',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'A tour guide is talking about the vacation list of activities. What can people do in the afternoon?',
        options: ['Join a dance class', 'Play golf', 'Go shopping'],
        correctAnswer: 'Play golf',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            "Doctor's office is calling about a change in the appointment. When is the new appointment?",
        options: ['On Thursday 13th', 'On Thursday 30th', 'On Friday 14th'],
        correctAnswer: 'On Thursday 13th',
      ),
      ListeningQuestionData(
        number: 8,
        question: 'Alice is calling her friend. What did she lose?',
        options: ['A book', 'A laptop', 'A phone'],
        correctAnswer: 'A phone',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'The woman is calling a friend about meeting for dinner. How long does it take to get to the station?',
        options: ['30 minutes', '40 minutes', '50 minutes'],
        correctAnswer: '40 minutes',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Listen to a man talking about their train journey. What time did the train depart?',
        options: ['9:00', '9:30', '10:00'],
        correctAnswer: '9:30',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'Listen to a woman asking about a flight. How much does the flight in the morning cost?',
        options: ['300 pounds', '350 pounds', '400 pounds'],
        correctAnswer: '350 pounds',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Listen to a friend talking about selling her music player. How much did she sell it for?',
        options: ['50 dollars', '60 dollars', '40 dollars'],
        correctAnswer: '50 dollars',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'Listen to a woman explaining why he was late. What is the main reason he gets late?',
        options: ['Overslept', 'Forgot something', 'Missed the train'],
        correctAnswer: 'Missed the train',
      ),
    ],
  ),
  ListeningTestData(
    number: 3,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'A mom is calling her son to remind him about picking up groceries. How much is an egg?',
        options: [
          '£1.50 (One pounds fifty)',
          '£2.50 (Two pounds fifty)',
          '£3.50 (Three pounds fifty)',
        ],
        correctAnswer: '£1.50 (One pounds fifty)',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'An author is talking about her daily routine. When does she usually write?',
        options: ['In the mornings', 'In the afternoons', 'In the evenings'],
        correctAnswer: 'In the afternoons',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            "Jack is calling to invite a friend to his house. What color is Jack's house?",
        options: ['Blue', 'Green', 'Red'],
        correctAnswer: 'Red',
      ),
      ListeningQuestionData(
        number: 4,
        question: 'A man is calling his wife. Where will they meet?',
        options: ['At home', 'In the garden', 'Outside the shop'],
        correctAnswer: 'Outside the shop',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A man is talking about his eating habit. What time does he usually eat?',
        options: ["6 o'clock", "7 o'clock", "8 o'clock"],
        correctAnswer: "7 o'clock",
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'Julie is asking her professor about the assignment. When is the work due?',
        options: [
          'On Thursday morning',
          'On Friday morning',
          'On Saturday morning',
        ],
        correctAnswer: 'On Saturday morning',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'James is talking about his family members. In what way does his mother and his aunt alike?',
        options: [
          'They were both thin',
          'They both had blue eyes',
          'They both had long hair',
        ],
        correctAnswer: 'They were both thin',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'A tour guide is introducing a tourist destination. How many people live in the town?',
        options: ['8,000', '9,000', '10,000'],
        correctAnswer: '10,000',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            "A man and a woman are talking about their old school days. What was the man's favorite thing about school?",
        options: ['Math classes', 'Geography classes', 'History classes'],
        correctAnswer: 'History classes',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Jorge is calling his friend about their plan for the weekend. What time does the football match start?',
        options: ['11 p.m', '1 p.m', '6 p.m'],
        correctAnswer: '1 p.m',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A man is talking about his routine after work. What is the man going to do after work?',
        options: ['Goes running', 'Cycles home', 'Meets his client'],
        correctAnswer: 'Goes running',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'A professor is talking to his student. What does the professor ask his student to do?',
        options: [
          'Speak at a conference',
          'Write another thesis',
          'Tutor another student',
        ],
        correctAnswer: 'Speak at a conference',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            "Two friends are talking about their favorite activities. What is the woman's favorite form of entertainment?",
        options: [
          'Reading books',
          'Going to the theatre',
          'Playing chess with her cousin',
        ],
        correctAnswer: 'Going to the theatre',
      ),
    ],
  ),
  ListeningTestData(
    number: 4,
    questions: [
      ListeningQuestionData(
        number: 1,
        question: 'A man is calling his friend, Maria. When will he see her?',
        options: [
          'At 9 am on Sunday',
          'At 10 am on Saturday',
          'At 8 am on Sunday',
        ],
        correctAnswer: 'At 9 am on Sunday',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A man is calling his colleague about a meeting with clients. When will the meeting start?',
        options: ['At 9.15', 'At 10.15', 'At 11.15'],
        correctAnswer: 'At 10.15',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'A customer is calling the hotline of a department store. Which number to press in order to buy a computer?',
        options: ['One', 'Two', 'Three'],
        correctAnswer: 'Three',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'An expert is talking about a lack of satisfaction at work. What should be the solution?',
        options: ['Raise the salary', 'Seek a new job', 'Request a transfer'],
        correctAnswer: 'Request a transfer',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A man is talking to his friend. Why does he need to learn to drive?',
        options: [
          'He lost his driving license.',
          'He has to drive to work',
          'He bought a new car.',
        ],
        correctAnswer: 'He has to drive to work',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            "A tour guide is talking about birds' behaviors. What do birds do in the winter?",
        options: [
          'Stay together for group protection',
          'Building nests',
          'Migrate to a new place',
        ],
        correctAnswer: 'Stay together for group protection',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'Two friends are talking about their school days. What was the woman good at?',
        options: ['Swimming', 'Plays football', 'Running'],
        correctAnswer: 'Plays football',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'Pierre and Emma are talking together about the picnic on the weekend. What will they bring to the picnic?',
        options: ['Drinks', 'Salads', 'Food'],
        correctAnswer: 'Food',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            "A tour guide is talking about the group's traveling schedule. Where will the group wait for the bus?",
        options: [
          "By the hotel's side entrance",
          "Behind the hotel's main entrance",
          "By the hotel's main entrance",
        ],
        correctAnswer: "By the hotel's main entrance",
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Listen to the announcement from a travel agent representative. Why is the air travel cancelled?',
        options: [
          'Engine failure',
          'Poor weather conditions',
          'Delay at transit spot',
        ],
        correctAnswer: 'Poor weather conditions',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A saleswoman is talking to a customer about a house. What is not original?',
        options: ['Floor', 'Furniture', 'Architecture'],
        correctAnswer: 'Furniture',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Listen to a weather forecast. Where will the weather be best?',
        options: ['In the south', 'In the west', 'In the east'],
        correctAnswer: 'In the west',
      ),
      ListeningQuestionData(
        number: 13,
        question: 'Adam is calling his friend. When will he need the computer?',
        options: ['Tuesday', 'Friday', 'Saturday'],
        correctAnswer: 'Friday',
      ),
    ],
  ),
  ListeningTestData(
    number: 5,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'Listen to an announcement. Which platform to wait for the train?',
        options: ['Platform 2', 'Platform 5', 'Platform 8'],
        correctAnswer: 'Platform 2',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'An artist is talking about her jobs. What is the difference in her job?',
        options: [
          'She works from 9 to 5',
          "She doesn't work on weekends",
          'She works irregular hours',
        ],
        correctAnswer: 'She works irregular hours',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Listen to a conversation between the teacher and a parent. What will the father do?',
        options: [
          'Enroll him in summer school',
          'Arrange private classes for his son',
          'Talk to the principal',
        ],
        correctAnswer: 'Arrange private classes for his son',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'A woman is talking about her weekends. What did she do last week?',
        options: ['Went hiking', 'Stayed at home', 'Attended a party'],
        correctAnswer: 'Stayed at home',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A teacher and a student are talking about transportation. How does the teacher go to school?',
        options: ['He drives', 'He takes the bus', 'He walks'],
        correctAnswer: 'He walks',
      ),
      ListeningQuestionData(
        number: 6,
        question: 'Anne is calling her daughter Sally. What do Anne need?',
        options: ['Eggs', 'Bread', 'Milk'],
        correctAnswer: 'Eggs',
      ),
      ListeningQuestionData(
        number: 7,
        question: 'A mom is talking to her son. What does he like to study?',
        options: ['Art', 'Science', 'History'],
        correctAnswer: 'Art',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            "A woman is talking about her family's holidays. What did the family do last year?",
        options: ['Traveled abroad', 'Camping', 'Went to the beach'],
        correctAnswer: 'Camping',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'A man is talking about how he goes to work. Why does he prefer traveling by train?',
        options: [
          "It's cheaper than biking",
          "It's practical",
          "It's faster than flying",
        ],
        correctAnswer: "It's practical",
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Listen to the instructions of a university. Where is the main office?',
        options: [
          'On the third floor',
          'On the first floor',
          'In the basement',
        ],
        correctAnswer: 'On the first floor',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A woman is talking about shopping places. Where is she going to go shopping?',
        options: [
          'At the downtown market',
          'At a new shopping center',
          'At the mall',
        ],
        correctAnswer: 'At a new shopping center',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'A tour guide is making an announcement. Why was the tour canceled?',
        options: [
          'Not enough people',
          'Bad weather',
          'Transportation problems',
        ],
        correctAnswer: 'Not enough people',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'A man is talking about his jobs. What does the man want to do next?',
        options: [
          'Become a writer',
          'Become a chef again',
          'Start teaching history again',
        ],
        correctAnswer: 'Become a writer',
      ),
    ],
  ),
  ListeningTestData(
    number: 6,
    questions: [
      ListeningQuestionData(
        number: 1,
        question: 'Tom is calling his friend. What time will they meet?',
        options: ['6 pm', '5 pm', '7 pm'],
        correctAnswer: '7 pm',
      ),
      ListeningQuestionData(
        number: 2,
        question: 'Lucy is calling her friend. What is her sister like?',
        options: [
          'She is young',
          'They have similar characters',
          'She will be wearing a red coat',
        ],
        correctAnswer: 'They have similar characters',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            "A finance expert is giving advice to young people. What shouldn't they do?",
        options: [
          'Spend too much on clothes.',
          'Ask for more money.',
          'Save for emergencies.',
        ],
        correctAnswer: 'Ask for more money.',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'A man is talking about his daily routine. What does he do after work?',
        options: ['Goes to the gym.', 'Plays football.', 'Reads books'],
        correctAnswer: 'Plays football.',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'Lily is talking about her daily routine. What does she do in the evening?',
        options: ['Goes for a walk.', 'Plays video games.', 'Cooks dinner.'],
        correctAnswer: 'Goes for a walk.',
      ),
      ListeningQuestionData(
        number: 6,
        question: 'A woman is talking to a police officer. What did she lose?',
        options: ['Wallet', 'Phone', 'Car'],
        correctAnswer: 'Phone',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'A man and a woman are going shopping. What does he buy in the store?',
        options: ['A T-shirt', 'A suit for the office', 'A pair of shoes'],
        correctAnswer: 'A suit for the office',
      ),
      ListeningQuestionData(
        number: 8,
        question: 'A student is talking about housing. Where does he live now?',
        options: ['In a small village', 'In an apartment', 'In a town hall'],
        correctAnswer: 'In a town hall',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'Listen to a radio man talking about a new popular song. Which is the most attractive part of the song?',
        options: ['The words', 'The instruments', 'The cover art'],
        correctAnswer: 'The words',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Listen to a saleswoman talking about a property. Which room is the largest?',
        options: ['Bedroom', 'Kitchen', 'Bathroom'],
        correctAnswer: 'Kitchen',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'Listen to a student talking about his study. What course is the student going to take this year?',
        options: ['Math', 'Computer', 'Science'],
        correctAnswer: 'Computer',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'A girl is talking about a show she will attend. What will end with?',
        options: [
          'A dance performance',
          'A big celebration',
          'A surprise performance',
        ],
        correctAnswer: 'A surprise performance',
      ),
      ListeningQuestionData(
        number: 13,
        question: 'A boy is talking about his cat. What does he feed the cat?',
        options: ['Mice', 'Insects', 'Fish'],
        correctAnswer: 'Fish',
      ),
    ],
  ),
  ListeningTestData(
    number: 7,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            "A woman is talking about her family's weekend. What does the family do most weekends?",
        options: ['Goes for a walk', 'Goes picnic', 'Goes to the beach'],
        correctAnswer: 'Goes for a walk',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A man is talking to a shop assistant. What does the man buy in the shop?',
        options: ['Mugs', 'Candles', 'Clothes'],
        correctAnswer: 'Clothes',
      ),
      ListeningQuestionData(
        number: 3,
        question: 'A man is talking on the phone. What did the man lose?',
        options: ['Jacket', 'Glasses', 'Books'],
        correctAnswer: 'Glasses',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'Jack is phoning his mom. What does Jack need to buy for his sister?',
        options: ['Chocolates', 'Milk', 'Fruit'],
        correctAnswer: 'Chocolates',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'Lucy is calling her brother. What does the brother have to drink?',
        options: ['Milk', 'Medicine', 'Water'],
        correctAnswer: 'Water',
      ),
      ListeningQuestionData(
        number: 6,
        question: 'Anna is calling her friend. Where will they meet?',
        options: ['At the marketplace', 'At the mall', 'At the park'],
        correctAnswer: 'At the marketplace',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'Listen to an auction man talking about a cabinet. Which part of the cabinet is original?',
        options: ['The drawer', 'The doors', 'The handles'],
        correctAnswer: 'The drawer',
      ),
      ListeningQuestionData(
        number: 8,
        question: 'Listen to a voice message. How does Even feel?',
        options: ['Sick', 'Happy', 'Tired'],
        correctAnswer: 'Sick',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'Two friends are talking about their trip. What will the weather be like?',
        options: ['Cold and wet', 'Hot and sunny', 'Warm and dry'],
        correctAnswer: 'Cold and wet',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'A man is talking about his holiday. How is he going to travel to the city?',
        options: ['By car', 'By train', 'By bus'],
        correctAnswer: 'By train',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'Listen to a nutrition expert. What time is the best for children to eat fruit?',
        options: ['In the evening', 'In the afternoon', 'In the morning'],
        correctAnswer: 'In the morning',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Greg is talking about a working day in his life. How does he go to work?',
        options: ['By bus', 'By bike', 'On foot'],
        correctAnswer: 'By bus',
      ),
      ListeningQuestionData(
        number: 13,
        question: 'Listen to a tour guide. Where is the office located?',
        options: [
          'Next to the park',
          'Opposite the hotel',
          'Above a restaurant',
        ],
        correctAnswer: 'Opposite the hotel',
      ),
    ],
  ),
  ListeningTestData(
    number: 8,
    questions: [
      ListeningQuestionData(
        number: 1,
        question: 'Listen to the announcement. When does the train leave?',
        options: ['At 9:15', 'At 9.30', 'At 9.45'],
        correctAnswer: 'At 9:15',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'Listening to a tour guide talking about Rock city. How old is the city?',
        options: ['3500 years', '2500 years', '1500 years'],
        correctAnswer: '1500 years',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Listening to Sarah leaving a message for her friend. When does she want to meet?',
        options: ["Two o'clock", "Three o'clock", "One o'clock"],
        correctAnswer: "Three o'clock",
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'Listen to a woman talking about what she has just bought. What is dress she wears like?',
        options: ['Black and white', 'Long and white', 'Long and red'],
        correctAnswer: 'Long and red',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A man is seeking advice on future career. What is he going to do?',
        options: [
          'To become a teacher',
          'To study at college',
          'To work in business',
        ],
        correctAnswer: 'To work in business',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'Listen to Anna talk about his old manager, George. What did Anna say about George?',
        options: [
          "He didn't like her",
          'He taught her a lot',
          'He was very strict',
        ],
        correctAnswer: 'He taught her a lot',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'Listen to Sarah talking about her hobby. What does she do in her free time?',
        options: [
          'Read books and paint',
          'Watch movies and go shopping',
          'Go to the theater and play sports',
        ],
        correctAnswer: 'Go to the theater and play sports',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'Linda is talking about what she likes to eat. What does she have for lunch?',
        options: ['Tea', 'Coffee', 'Juice'],
        correctAnswer: 'Tea',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'A woman is talking about her holiday plan. Where is she going on holidays?',
        options: ['The cave', 'The beach', 'The mountains'],
        correctAnswer: 'The mountains',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'A man is talking about the environment of the countryside. What is the main cause of poor air quality?',
        options: [
          'Smokes from factories',
          'Vehicles on the road',
          'Fires in the countryside',
        ],
        correctAnswer: 'Fires in the countryside',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A man is calling his friend to meet for coffee. Where is the Coffee shop located?',
        options: [
          'Opposite the gift shop',
          'Next to the gift shop',
          'Behind the gift shop',
        ],
        correctAnswer: 'Opposite the gift shop',
      ),
      ListeningQuestionData(
        number: 12,
        question: 'Two colleges talk about meeting. When do they want to meet?',
        options: ['On Tuesday', 'On Sunday', 'On Saturday'],
        correctAnswer: 'On Tuesday',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'A man is calling his teacher to meet for the assignment. When is the meeting?',
        options: [
          'On Thursday afternoon',
          'On Tuesday morning',
          'On Thursday morning',
        ],
        correctAnswer: 'On Thursday morning',
      ),
    ],
  ),
  ListeningTestData(
    number: 9,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'The woman is walking into a local store. How much are the cleaning products?',
        options: ['One pound fifty', 'Two pounds fifty', 'Three pounds fifty'],
        correctAnswer: 'One pound fifty',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'Listen to the chief announce to students. When is lunch ready?',
        options: ['12:30 p.m', '2:00 p.m', '1:15 p.m'],
        correctAnswer: '2:00 p.m',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Listen to David talking about the conference. How long did he talk in the speech?',
        options: ['30 minutes', '45 minutes', '15 minutes'],
        correctAnswer: '15 minutes',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'Listen to the director talking about sales of his company. How many copies of Freeze Frame magazine were sold?',
        options: [
          'Over 300,000 copies',
          'Over 3,000 copies',
          'Over 30,000 copies',
        ],
        correctAnswer: 'Over 300,000 copies',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'Listen to the conversation between Douglas and Kay. Why does Douglas call Kay?',
        options: ['Ask for a favor', 'Suggest a meeting', 'Say thank you'],
        correctAnswer: 'Say thank you',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'A man and woman are discussing their plans for the evening. What do the man and woman decide to do in the evening?',
        options: ['Make plans later', 'Go to the movie', 'Stay at hotel'],
        correctAnswer: 'Make plans later',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'Listen to Marry talking to Jane while waiting for James. What did they decide to do?',
        options: [
          'Have meeting without him',
          'Continue waiting for him',
          'Cancel the meeting',
        ],
        correctAnswer: 'Have meeting without him',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'A woman shares her job with her friend. Why does she want to become a writer?',
        options: ['To earn much money', 'To help people', 'To become famous'],
        correctAnswer: 'To help people',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'A woman tells her friend about her plans for the day. What is the woman going to do?',
        options: ['Have coffee', 'Have lunch', 'Drink tea'],
        correctAnswer: 'Have coffee',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Listen to a woman explaining her morning routine to her friend. Why do women get up early?',
        options: [
          'Have some quite time',
          'To go to work early',
          'To take care of children',
        ],
        correctAnswer: 'Have some quite time',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A girl is talking about a film. What did she like best about the film?',
        options: ['Racing scenes', 'Fight scenes', 'The mountain scenes'],
        correctAnswer: 'The mountain scenes',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Linda is talking about her mother. What do mother and daughter have in common?',
        options: [
          'Similar appearance',
          'Similar interests',
          'Similar personalities',
        ],
        correctAnswer: 'Similar interests',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'Listen to a tour guide introducing the tour. Where will tea be served?',
        options: [
          'On the Mountain Boat',
          'On the River Boat',
          'On the beach Boat',
        ],
        correctAnswer: 'On the River Boat',
      ),
    ],
  ),
  ListeningTestData(
    number: 10,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'Listen to the speaker talking on the radio. What is she talking about?',
        options: [
          'Her favorite hobby',
          'Her journey to work',
          'Her weekend plans',
        ],
        correctAnswer: 'Her journey to work',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'Listen to the conversation about the directions. Where is the library located?',
        options: [
          'On the left of the square',
          'In front of the square',
          'Behind the square',
        ],
        correctAnswer: 'On the left of the square',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Listen to the woman talking about her holiday plans. Where is she going next?',
        options: ['The east', 'The north', 'The south'],
        correctAnswer: 'The south',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'Listen to a writer talking about her job. What is her first job?',
        options: ['Teacher', 'Doctor', 'Engineer'],
        correctAnswer: 'Teacher',
      ),
      ListeningQuestionData(
        number: 5,
        question: 'Listen to the conversation. Who is she taking a photo of?',
        options: [
          "The boys' and the girls' team",
          "The girls' team",
          'Sue and Lily',
        ],
        correctAnswer: "The girls' team",
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'Listen to the speaker talking about their weekly schedule. When is the meeting scheduled?',
        options: ['Monday morning', 'Friday evening', 'Wednesday afternoon'],
        correctAnswer: 'Wednesday afternoon',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'Listening to a man talking about his business trip. What does he like in Dubai?',
        options: [
          'He enjoys the food there',
          'He enjoys his job there',
          'He enjoys the people there',
        ],
        correctAnswer: 'He enjoys his job there',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            "Listening to a woman's announcement. Where will they wait for the bus?",
        options: [
          "Behind the hotel's main entrance",
          "By the hotel's main entrance",
          "By the hotel's side entrance",
        ],
        correctAnswer: "By the hotel's main entrance",
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'Stephanie is looking for a job taking care of children. How old is she?',
        options: ['21', '22', '20'],
        correctAnswer: '21',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Listen to a woman giving advice in saving money. What advice does she give to save money?',
        options: [
          'Buy in bulk',
          'Use the public transport',
          'Put money into the bank',
        ],
        correctAnswer: 'Use the public transport',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'Listen to a teacher talking about meeting preparations. What is the teacher preparing for the meeting now?',
        options: [
          'Set up the chair',
          'Organize the documents',
          'Order the food',
        ],
        correctAnswer: 'Order the food',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Listen to an actor discussing his hobbies. What does the actor like to do in his free time?',
        options: ['Drawing', 'Watching movies', 'Playing sports'],
        correctAnswer: 'Drawing',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'Listen to a principal talking about new school facilities. What new facility will the school have?',
        options: ['A new library', 'A sports field', 'The performance space'],
        correctAnswer: 'The performance space',
      ),
    ],
  ),
  ListeningTestData(
    number: 11,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'Lalia is talking to her friend about her upcoming trip. How much does she think the bus fare will be?',
        options: ['£2.5', '£3', '£4.'],
        correctAnswer: '£2.5',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'The woman is discussing her new exercise routine. How much time does she spend cycling?',
        options: ['15 minutes', '25 minutes', '35 minutes'],
        correctAnswer: '35 minutes',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            "A man is describing his school. What color is the teacher's building?",
        options: ['Blue', 'White', 'Yellow'],
        correctAnswer: 'White',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'A man is talking to a friend about his family. What is his main problem?',
        options: [
          'Persuading his family',
          'Finding a job abroad',
          'Saving money for the movie',
        ],
        correctAnswer: 'Persuading his family',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A woman is talking about her usual Saturday routine. What does she usually do on Saturdays?',
        options: ['Meeting a friend', 'Going shopping', 'Seeing her family'],
        correctAnswer: 'Seeing her family',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'A woman is chatting with a friend about her afternoon plans. What is she going to do this afternoon?',
        options: ['Go on a city tour', 'Visit a museum', 'Relax at home'],
        correctAnswer: 'Go on a city tour',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            "Soobin is talking about his favorite room. What is Soobin's favorite room?",
        options: ['Living room', "Bathroom Soobin's", 'Kitchen'],
        correctAnswer: "Bathroom Soobin's",
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'Nate is on the phone with his friend. How long does Nate stay in India?',
        options: ['3 days', '1 week', '2 weeks'],
        correctAnswer: '2 weeks',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'A man is giving directions to a friend about how to get to the football club. The football club is near?',
        options: ['A grocery store', 'A park', 'A library'],
        correctAnswer: 'A park',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Samia is going to meet her friend. What time are they going to meet?',
        options: ['9:00', '10:00', '9:30'],
        correctAnswer: '10:00',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A woman is talking to her coworker. When does the meeting start?',
        options: ['10:00', '10:15', '11:15'],
        correctAnswer: '10:15',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'A woman is talking about her favorite film on the radio. What film did she recommend?',
        options: ['A comedy', 'A romantic film', 'An action film'],
        correctAnswer: 'An action film',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'Two friends are discussing a movie they recently watched. What elements of the film do they agree on?',
        options: ['The music', 'The ending', 'The characters'],
        correctAnswer: 'The ending',
      ),
    ],
  ),
  ListeningTestData(
    number: 12,
    questions: [
      ListeningQuestionData(
        number: 1,
        question: 'A man is calling his sister. Where are they going to meet?',
        options: ['At the station', 'At the park', 'At the university'],
        correctAnswer: 'At the park',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A woman is talking about her vacation. What is the relationship between the speaker and Lisa?',
        options: ['Best friends', 'Mother and daughter', 'Teacher and student'],
        correctAnswer: 'Best friends',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Anna is calling her brother Max. What does Anna do later in the afternoon?',
        options: [
          'Stay late at the office',
          'Pick up her kids',
          'Hang out with friends',
        ],
        correctAnswer: 'Stay late at the office',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'A man is talking about his trip. What did he enjoy last year?',
        options: ['Go for a walk', 'Go picnic', 'Go cycling'],
        correctAnswer: 'Go cycling',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            "Doctor's office is calling to change the appointment. When is the new appointment?",
        options: ['On Friday 14th', 'On Thursday 30th', 'On Thursday 13th'],
        correctAnswer: 'On Thursday 13th',
      ),
      ListeningQuestionData(
        number: 6,
        question: 'A man calls the teleshop. What is the teleshop number?',
        options: ['102030', '201030', '301020'],
        correctAnswer: '201030',
      ),
      ListeningQuestionData(
        number: 7,
        question: 'Vincent is calling James. Why does Vincent call James?',
        options: ['To say hello', 'To arrange meeting', 'To suggest a drink'],
        correctAnswer: 'To suggest a drink',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'Two people are talking about meeting for dinner. What time does Ahmed meet Rose?',
        options: ['Quarter past seven', 'Half past seven', 'Quarter to eight'],
        correctAnswer: 'Quarter to eight',
      ),
      ListeningQuestionData(
        number: 9,
        question:
            'Max is calling his friend. How much can Max pay for the computer?',
        options: ['150 pounds', '250 pounds', '350 pounds'],
        correctAnswer: '250 pounds',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'A man is talking to the shopping assistant. What color top does he buy?',
        options: ['Red', 'Blue', 'Black'],
        correctAnswer: 'Black',
      ),
      ListeningQuestionData(
        number: 11,
        question: 'Alice is calling her friend. What did she lose?',
        options: ['A book', 'A laptop', 'A phone'],
        correctAnswer: 'A phone',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'A man is talking about the city concert. How will the concert end?',
        options: [
          "The city's favorite group",
          'Fireworks performance',
          'Singing from the orchestra',
        ],
        correctAnswer: 'Singing from the orchestra',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            "Jana is talking to her friend. What does Jana's sister look like?",
        options: ['Tall', 'Short', 'Curly hair'],
        correctAnswer: 'Short',
      ),
    ],
  ),
  ListeningTestData(
    number: 13,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'Max is calling his friend. How much can Max pay for the computer?',
        options: ['250 pounds', '150 pounds', '350 pounds'],
        correctAnswer: '250 pounds',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A man is talking to the shopping assistant. What color top does he buy?',
        options: ['Black', 'Green', 'Blue'],
        correctAnswer: 'Black',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Two people are talking about meeting for dinner. What time does Ahmed meet Rose?',
        options: ['Half past seven', 'Quarter to eight', 'Quarter past seven'],
        correctAnswer: 'Quarter to eight',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'A woman is talking about her vacation. What is the relationship between the speaker and Lisa?',
        options: ['Teacher and student', 'Mother and daughter', 'Best friends'],
        correctAnswer: 'Best friends',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A man is talking about the city concert. How will the concert end?',
        options: [
          'A surprise performance',
          'Special offers',
          "City's favorite group",
        ],
        correctAnswer: "City's favorite group",
      ),
      ListeningQuestionData(
        number: 6,
        question: 'A man is ordering a drink. What does he want?',
        options: ['Beer', 'Water', 'Iced tea'],
        correctAnswer: 'Iced tea',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'A man is talking about his trip. What did he enjoy last year?',
        options: ['Go cycling', 'Go for a walk', 'Go picnic'],
        correctAnswer: 'Go cycling',
      ),
      ListeningQuestionData(
        number: 8,
        question: 'Vincent is calling James. Why does Vincent call James?',
        options: ['To arrange meeting', 'To say hello', 'To suggest a drink'],
        correctAnswer: 'To suggest a drink',
      ),
      ListeningQuestionData(
        number: 9,
        question: "Jana is talking to her friend. What does Jana's look like?",
        options: ['Short', 'Tall', 'Curly hairs'],
        correctAnswer: 'Short',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Mary is talking to her friend about her new home. What does she ask her friend about?',
        options: ['Where to buy a new table', 'The furniture', 'Mirror'],
        correctAnswer: 'Where to buy a new table',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A woman is talking about her job. What encouraged her to become a scientist?',
        options: ['The computer', 'Her mother', 'A large stone'],
        correctAnswer: 'A large stone',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Anna is calling her brother Max. What does Anna do later in the afternoon?',
        options: [
          'Hang out with friends',
          'Stay late at the office',
          'Pick up her kids',
        ],
        correctAnswer: 'Stay late at the office',
      ),
      ListeningQuestionData(
        number: 13,
        question: 'A man calls the teleshop. What is the teleshop number?',
        options: ['102030', '201030', '301020'],
        correctAnswer: '201030',
      ),
    ],
  ),
  ListeningTestData(
    number: 14,
    questions: [
      ListeningQuestionData(
        number: 1,
        question:
            'A man is talking to a waiter. What drink does the man choose?',
        options: ['Milk tea', 'Hot tea', 'Iced tea'],
        correctAnswer: 'Iced tea',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A man is reading the news about a housing development plan. How many new houses are going to be built?',
        options: ['2500', '1500', '2000'],
        correctAnswer: '2000',
      ),
      ListeningQuestionData(
        number: 3,
        question:
            'Two people are talking with each other. What did they both buy?',
        options: ['Clothes', 'Tea', 'Cakes'],
        correctAnswer: 'Clothes',
      ),
      ListeningQuestionData(
        number: 4,
        question:
            'Louis is calling his friend Standar. Where will Louis meet Standar?',
        options: [
          'Outside the station',
          'At the cafe',
          'Near the ticket counter',
        ],
        correctAnswer: 'Outside the station',
      ),
      ListeningQuestionData(
        number: 5,
        question: 'Tom is calling his mom. Who is visiting Tim this weekend?',
        options: [
          'His mother and uncle',
          'His sister and children',
          'His mother and sister',
        ],
        correctAnswer: 'His sister and children',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'A woman is talking about her plan for the holiday. What will she do during the holiday?',
        options: ['Go for a bike ride', 'Go for a run', 'Go for a walk'],
        correctAnswer: 'Go for a walk',
      ),
      ListeningQuestionData(
        number: 7,
        question:
            'A woman is discussing with her team. How many chairs does she need?',
        options: ['12', '15', '20'],
        correctAnswer: '20',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'James is calling her friend Martha. What time are they going to meet?',
        options: ['4.00', '5.30', '6.00'],
        correctAnswer: '5.30',
      ),
      ListeningQuestionData(
        number: 9,
        question: 'A woman is going home after shopping. What did she buy?',
        options: ['A dress', 'A blouse', 'A hat'],
        correctAnswer: 'A dress',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'A woman is talking about her babysitter. How old is the babysitter?',
        options: ['20', '21', '22'],
        correctAnswer: '21',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A woman is calling her son. What time will the mother meet the son?',
        options: ["3 o'clock", "4 o'clock", "5 o'clock"],
        correctAnswer: "3 o'clock",
      ),
      ListeningQuestionData(
        number: 12,
        question: 'A man is talking about his job. Where is he working now?',
        options: ['At a university', 'In a big company', 'In a bank'],
        correctAnswer: 'In a bank',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'The man is talking about his key. Where did he find the key?',
        options: ['In his car', 'In the front door', 'In the bedroom'],
        correctAnswer: 'In the front door',
      ),
    ],
  ),
  ListeningTestData(
    number: 15,
    questions: [
      ListeningQuestionData(
        number: 1,
        question: 'A man is calling his mother. How long will he be late?',
        options: ['10 minutes', '15 minutes', '20 minutes'],
        correctAnswer: '10 minutes',
      ),
      ListeningQuestionData(
        number: 2,
        question:
            'A woman is going to the cinema with her husband. What time does the movie begin?',
        options: ['6:40', '7:00', '9:20'],
        correctAnswer: '6:40',
      ),
      ListeningQuestionData(
        number: 3,
        question: 'A man is calling his friend. Where will they meet?',
        options: ['At school', 'By the park', 'In the café'],
        correctAnswer: 'By the park',
      ),
      ListeningQuestionData(
        number: 4,
        question: 'Dan is going to university. Where should Dan turn right?',
        options: [
          'At the main street',
          'At the hospital',
          'At the traffic lights',
        ],
        correctAnswer: 'At the traffic lights',
      ),
      ListeningQuestionData(
        number: 5,
        question:
            'A saleswoman is talking to her customer. How much is the cheapest computer in the shop?',
        options: ['135 pounds', '145 pounds', '155 pounds'],
        correctAnswer: '135 pounds',
      ),
      ListeningQuestionData(
        number: 6,
        question:
            'A tour guide is introducing a famous building. What is this building currently used for?',
        options: ['A museum', 'A department store', 'A cinema'],
        correctAnswer: 'A department store',
      ),
      ListeningQuestionData(
        number: 7,
        question: 'David is in an interview. What was his last job?',
        options: ['An engineer', 'A teacher', 'An electrician'],
        correctAnswer: 'An electrician',
      ),
      ListeningQuestionData(
        number: 8,
        question:
            'A man is talking to his friend. Why does he choose to be a doctor?',
        options: [
          'To help people',
          'To make his family proud',
          'To make a lot of money',
        ],
        correctAnswer: 'To help people',
      ),
      ListeningQuestionData(
        number: 9,
        question: 'A woman is talking to the police. What did she lose?',
        options: ['A necklace', 'A bag', 'A wallet'],
        correctAnswer: 'A bag',
      ),
      ListeningQuestionData(
        number: 10,
        question:
            'Tom is talking with his friend about his teachers. What is his favorite teacher?',
        options: ['Miss Taylor', 'Mr. Styles', 'Miss Brown'],
        correctAnswer: 'Miss Brown',
      ),
      ListeningQuestionData(
        number: 11,
        question:
            'A woman is talking to a shop assistant. Why does the woman return the dress?',
        options: [
          'Because of its size',
          'Because of its color',
          'Because of its pattern',
        ],
        correctAnswer: 'Because of its size',
      ),
      ListeningQuestionData(
        number: 12,
        question:
            'Louis is having dinner in a new restaurant. What is his opinion about that restaurant?',
        options: [
          'The price is cheap',
          'The food is delicious',
          'The service is slow',
        ],
        correctAnswer: 'The service is slow',
      ),
      ListeningQuestionData(
        number: 13,
        question:
            'A teacher is talking to her students. Where are the students now?',
        options: ['At school', 'In a townhouse', 'In a museum'],
        correctAnswer: 'In a townhouse',
      ),
    ],
  ),
];

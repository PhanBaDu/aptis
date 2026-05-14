class ReadingPart1Data {
  const ReadingPart1Data({
    required this.id,
    required this.text,
    required this.answers,
    required this.distractors,
  });

  final int id;
  final String text;
  final List<String> answers;
  final List<List<String>> distractors;
}

const List<ReadingPart1Data> readingPart1Topics = [
  ReadingPart1Data(
    id: 1,
    text: "Dear Jane, In the **morning**, I cycle to work. My **friends** cycle to work with me. Therefore, I **leave** my car at my house. I feel **good** after cycling to work. Then, I drink water and eat healthy **food**.",
    answers: ['morning', 'friends', 'leave', 'good', 'food'],
    distractors: [
      ['evening', 'night'],
      ['colleagues', 'parents'],
      ['keep', 'drive'],
      ['bad', 'tired'],
      ['drinks', 'meals'],
    ],
  ),
  ReadingPart1Data(
    id: 2,
    text: "Dear Tom, When you are at the train **station**, go to the main gate. The bus **stop** are near. My house is on Parkon Street. It's **green**, so you can not miss it. I can't wait to **meet** you soon and catch up. In the evening, we can watch some **films** together.",
    answers: ['station', 'stop', 'green', 'meet', 'films'],
    distractors: [
      ['office', 'airport'],
      ['station', 'lane'],
      ['blue', 'red'],
      ['see', 'know'],
      ['news', 'shows'],
    ],
  ),
  ReadingPart1Data(
    id: 3,
    text: "Hi James, I **love** the area where I live now. I have a kitchen, but it's very **small**. I work at a **shop** and I sell clothes. Every day, I talk to many **people**. I am on my holiday and I am excited that I can **visit** you soon.",
    answers: ['love', 'small', 'shop', 'people', 'visit'],
    distractors: [
      ['like', 'hate'],
      ['large', 'big'],
      ['bank', 'school'],
      ['friends', 'animals'],
      ['see', 'call'],
    ],
  ),
  ReadingPart1Data(
    id: 4,
    text: "Hey Lewis, Where is the **station** in this town? The bus **stops** here every morning. The traffic light is **green**, so you can go now. We usually have **dinner** at 7 p.m. Do you like watching **movies** on weekends?",
    answers: ['station', 'stops', 'green', 'dinner', 'movies'],
    distractors: [
      ['market', 'bank'],
      ['goes', 'starts'],
      ['red', 'yellow'],
      ['lunch', 'breakfast'],
      ['news', 'tv'],
    ],
  ),
  ReadingPart1Data(
    id: 5,
    text: "Hey Lewis, First, we visited a beautiful **park** in the city center. There, many people joined yoga **classes**. My cousin showed me a ring made of pure **silver**. Later, we had eggs and bread for **breakfast** together. Finally, we relaxed by practicing **meditation** under the trees.",
    answers: ['park', 'classes', 'silver', 'breakfast', 'meditation'],
    distractors: [
      ['garden', 'square'],
      ['clubs', 'groups'],
      ['gold', 'steel'],
      ['dinner', 'lunch'],
      ['yoga', 'exercise'],
    ],
  ),
  ReadingPart1Data(
    id: 6,
    text: "Hey Lewis, I went there by **bicycle**. Near the entrance, we bought food from a small **stall**. Then we sat under the big **trees** to eat and talk. That snack was actually my **breakfast** for the day. After eating, we played some outdoor **games** together.",
    answers: ['bicycle', 'stall', 'trees', 'breakfast', 'games'],
    distractors: [
      ['car', 'bus'],
      ['shop', 'store'],
      ['roofs', 'umbrellas'],
      ['lunch', 'dinner'],
      ['sports', 'music'],
    ],
  ),
  ReadingPart1Data(
    id: 7,
    text: "Where is your **home**? Do you talk to **customers** at work? Is the task **easy** for you? What do you **prepare** in the morning? What do you like to **watch** on TV?",
    answers: ['home', 'customers', 'easy', 'prepare', 'watch'],
    distractors: [
      ['office', 'place'],
      ['friends', 'people'],
      ['hard', 'difficult'],
      ['do', 'make'],
      ['see', 'look'],
    ],
  ),
  ReadingPart1Data(
    id: 8,
    text: "Is your neighborhood **friendly**? How do you usually **walk** to work? When did you meet your friend **first**? Can you **speak** French? Do you like going out **together** with your friends?",
    answers: ['friendly', 'walk', 'first', 'speak', 'together'],
    distractors: [
      ['quiet', 'nice'],
      ['drive', 'go'],
      ['last', 'early'],
      ['talk', 'tell'],
      ['alone', 'happy'],
    ],
  ),
  ReadingPart1Data(
    id: 9,
    text: "I go to school by **bicycle**. The buildings in my city are very **tall**. There are many green **trees** near my home. I eat **breakfast** with my family every morning. I do **meditation** to feel relaxed.",
    answers: ['bicycle', 'tall', 'trees', 'breakfast', 'meditation'],
    distractors: [
      ['bus', 'train'],
      ['big', 'high'],
      ['parks', 'plants'],
      ['dinner', 'lunch'],
      ['yoga', 'exercise'],
    ],
  ),
  ReadingPart1Data(
    id: 10,
    text: "I want to **visit** my grandparents this weekend. My **room** is very clean and bright. The weather is **hot** today. We went to the city by **train**. I can **speak** English very well.",
    answers: ['visit', 'room', 'hot', 'train', 'speak'],
    distractors: [
      ['see', 'call'],
      ['house', 'flat'],
      ['cold', 'warm'],
      ['car', 'bus'],
      ['talk', 'write'],
    ],
  ),
  ReadingPart1Data(
    id: 11,
    text: "My uncle works on a **farm**. The children were very **excited** about the trip. Turn **left** at the next corner. We walked along the **street** to the park. I usually **drink** milk in the morning.",
    answers: ['farm', 'excited', 'left', 'street', 'drink'],
    distractors: [
      ['factory', 'office'],
      ['happy', 'glad'],
      ['right', 'back'],
      ['road', 'path'],
      ['eat', 'have'],
    ],
  ),
  ReadingPart1Data(
    id: 12,
    text: "I usually stay at **home** on Sundays. My father can **drive** very well. I like spending time with my **friends** after school. Let's go for a **walk** in the park. Your sister looks very **pretty** today.",
    answers: ['home', 'drive', 'friends', 'walk', 'pretty'],
    distractors: [
      ['bed', 'work'],
      ['ride', 'run'],
      ['colleagues', 'classmates'],
      ['run', 'swim'],
      ['beautiful', 'nice'],
    ],
  ),
  ReadingPart1Data(
    id: 13,
    text: "I want to travel to the **country** this summer. Please keep your **room** clean. We have English **class** on Monday. I like helping **other** people. Can you spell these **words** for me?",
    answers: ['country', 'room', 'class', 'other', 'words'],
    distractors: [
      ['city', 'world'],
      ['bed', 'place'],
      ['lesson', 'test'],
      ['many', 'some'],
      ['letters', 'names'],
    ],
  ),
  ReadingPart1Data(
    id: 14,
    text: "My bedroom is very **small**. We usually **stay** at a hotel on vacation. There are many flowers in the **garden**. Some **trees** near my home are very tall. My grandfather is very **old** but still strong.",
    answers: ['small', 'stay', 'garden', 'trees', 'old'],
    distractors: [
      ['large', 'big'],
      ['live', 'sleep'],
      ['park', 'yard'],
      ['houses', 'plants'],
      ['young', 'weak'],
    ],
  ),
];

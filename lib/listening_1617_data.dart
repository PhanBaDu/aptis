class ListeningSubQuestion {
  final String question;
  final List<String> options;
  final String answer;

  const ListeningSubQuestion({
    required this.question,
    required this.options,
    required this.answer,
  });
}

class ListeningPart1617Data {
  final int id;
  final String testName;
  final String partNumber; // "16" or "17"
  final String description;
  final List<ListeningSubQuestion> questions;

  const ListeningPart1617Data({
    required this.id,
    required this.testName,
    required this.partNumber,
    required this.description,
    required this.questions,
  });
}

const List<ListeningPart1617Data> listeningPart1617Tasks = [
  // TEST 1
  ListeningPart1617Data(
    id: 1,
    testName: 'Novel Announcement',
    partNumber: '16',
    description: 'Listen to an announcer talking about a newly released novel and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the announcer say about the new novel?',
        options: ['It is different from his earlier works', 'It is romantic and soft', 'It is less famous than his earlier works'],
        answer: 'It is romantic and soft',
      ),
      ListeningSubQuestion(
        question: 'What does the announcer say the writer should do in the future?',
        options: ['The writer should continue to write this genre', 'The writer should go back to his original genre', 'He should listen to critics before writing his next work'],
        answer: 'He should listen to critics before writing his next work',
      ),
    ],
  ),
  // TEST 2
  ListeningPart1617Data(
    id: 2,
    testName: 'Writer\'s Experience',
    partNumber: '16',
    description: 'Listen to a writer talking about her experience in writing and choose the correct answer.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the writer believe helps her the most in her writing process?',
        options: ['Writing every day for 15-20 minutes', 'Create dedicated periods for writing', 'Finding a quiet space to work'],
        answer: 'Create dedicated periods for writing',
      ),
      ListeningSubQuestion(
        question: 'What does the writer regret doing during her experience with writer\'s block?',
        options: ['Refuse to seek advice of others', 'Ignoring feedback from editors', 'Writing without a plan'],
        answer: 'Refuse to seek advice of others',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 3,
    testName: 'Musician\'s Career',
    partNumber: '17',
    description: 'The radio is talking about a musician\'s career and latest albums. Listen and choose the correct answer.',
    questions: [
      ListeningSubQuestion(
        question: 'What has the musician decided regarding his singing career?',
        options: ['He will retire from singing professionally', 'He will make a comeback after a long break', 'He will inform fans about new albums'],
        answer: 'He will retire from singing professionally',
      ),
      ListeningSubQuestion(
        question: 'What could the musician have achieved with his recent albums?',
        options: ['He could have been more successful', 'He could have inspired future generations in general', 'He could have gotten a bigger fan base'],
        answer: 'He could have been more successful',
      ),
    ],
  ),
  // TEST 3
  ListeningPart1617Data(
    id: 4,
    testName: 'Working from Home',
    partNumber: '16',
    description: 'Listen to an office worker talking about working from home and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What does she say about working at home?',
        options: ['There are no distractions', 'Not good as expected', 'Video calls are superior to face-to-face conversation'],
        answer: 'Not good as expected',
      ),
      ListeningSubQuestion(
        question: 'According to the author, working from home _____.',
        options: ['Needs a big home office', 'Do not require self-motivation', 'It depends on your situation and personality'],
        answer: 'It depends on your situation and personality',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 5,
    testName: 'Importance of Sleep',
    partNumber: '17',
    description: 'Listen to an expert talking about the importance of sleep and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'The most important things to help sleep well is _____.',
        options: ['Blocking noise and light is the key', 'Beds are best for sleeping', 'Resting sufficiently is necessary'],
        answer: 'Blocking noise and light is the key',
      ),
      ListeningSubQuestion(
        question: 'According to the expert, what is the public attitude towards sleeping?',
        options: ['The media overemphasize the subject', 'The young generation tends to have unhealthy sleeping habits', 'Sleeping quality has deteriorated over time'],
        answer: 'The media overemphasize the subject',
      ),
    ],
  ),
  // TEST 4
  ListeningPart1617Data(
    id: 6,
    testName: 'TV Series',
    partNumber: '16',
    description: 'Listen to a critic talking about a newly broadcasted TV series.',
    questions: [
      ListeningSubQuestion(
        question: 'What happened to the TV series?',
        options: ['It didn\'t receive enough investment at the early stage', 'It was overlooked by critics', 'It caught the audience\'s attention from the start'],
        answer: 'It caught the audience\'s attention from the start',
      ),
      ListeningSubQuestion(
        question: 'According to the expert, what is the series\' potential?',
        options: ['New seasons will be produced due to great demand', 'It inspires young filmmakers to follow a new movie-making style', 'Series are damaged by overexposure'],
        answer: 'Series are damaged by overexposure',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 7,
    testName: 'Advertising Industry',
    partNumber: '17',
    description: 'Listen to an advertising expert talking about the advertising industry.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the expert say about the negative side of advertising?',
        options: ['Series are damaged by overexposure', 'Advertisements might sometimes be repetitive which is annoying', 'Advertising costs the same amount of money to produce a movie'],
        answer: 'Series are damaged by overexposure',
      ),
      ListeningSubQuestion(
        question: 'In what way can advertising affect sports?',
        options: ['They help to attract more fans', 'They can boost ticket sales and sales of sports-related items', 'They can generate negative publicity for the sport'],
        answer: 'They can generate negative publicity for the sport',
      ),
    ],
  ),
  // TEST 5
  ListeningPart1617Data(
    id: 8,
    testName: 'Movie Release',
    partNumber: '16',
    description: 'An expert is giving comments on a newly released movie.',
    questions: [
      ListeningSubQuestion(
        question: 'What part of the movie is disappointing?',
        options: ['the dialogues seems unrealistic', 'the settings don\'t make sense', 'the original cast was replaced'],
        answer: 'the dialogues seems unrealistic',
      ),
      ListeningSubQuestion(
        question: 'What is the expert comment on the movie industry?',
        options: ['Technology will soon replace human actors', 'The new industry demand is negatively influencing script production', 'New story plots should be invented to capture the audience\'s interest'],
        answer: 'The new industry demand is negatively influencing script production',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 9,
    testName: 'Restaurant Review',
    partNumber: '17',
    description: 'A critic is giving opinions about a restaurant',
    questions: [
      ListeningSubQuestion(
        question: 'What are the critic\'s opinions about the restaurant?',
        options: ['the food is not fresh', 'the service is not good', 'the chief lack of experience'],
        answer: 'the service is not good',
      ),
      ListeningSubQuestion(
        question: 'What can compete with online food delivery?',
        options: ['Organic ingredients', 'Providing ready-made pack for customers', 'Customers feel valued and welcome'],
        answer: 'Customers feel valued and welcome',
      ),
    ],
  ),
  // TEST 6
  ListeningPart1617Data(
    id: 10,
    testName: 'Writers of History',
    partNumber: '16',
    description: 'Listen to a lecturer talking about two big writers of history.',
    questions: [
      ListeningSubQuestion(
        question: 'What was the lecturer\'s opinion about both authors\' past work?',
        options: ['They have both been overlooked by ACADEMICS', 'They make reference to each other\'s work', 'One was less successful than the other'],
        answer: 'They have both been overlooked by ACADEMICS',
      ),
    ],
  ),
  // TEST 7
  ListeningPart1617Data(
    id: 11,
    testName: 'TV Series (Ver 2)',
    partNumber: '16',
    description: 'Listen to a critic talking about a newly broadcasted TV series.',
    questions: [
      ListeningSubQuestion(
        question: 'What happened to the TV series?',
        options: ['It didn\'t receive enough investment at the early stage', 'It was overlooked by critics', 'It caught the audience\'s attention from the start'],
        answer: 'It caught the audience\'s attention from the start',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 12,
    testName: 'Advertising (Ver 2)',
    partNumber: '17',
    description: 'Listen to an advertising expert talking about the advertising industry.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the expert say about advertising?',
        options: ['It helps to reach new customers', 'Advertisements might sometimes be repetitive which is annoying', 'Advertising costs the same amount of money to produce a movie'],
        answer: 'It helps to reach new customers',
      ),
      ListeningSubQuestion(
        question: 'In what way can advertising affect sports?',
        options: ['They help to attract more fans', 'They can boost ticket sales and sales of sports related items', 'They are not always good for sport fans'],
        answer: 'They are not always good for sport fans',
      ),
    ],
  ),
  // TEST 8
  ListeningPart1617Data(
    id: 13,
    testName: 'Regional Development Planning',
    partNumber: '16',
    description: 'Listen to a city planner talk at a press conference about a Regional Development Planning and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What is one of the main criticisms of the Regional Development Plan?',
        options: ['It doesn\'t provide enough alternatives to driving', 'It places too much emphasis on public transportation', 'It is too expensive to implement the plan'],
        answer: 'It doesn\'t provide enough alternatives to driving',
      ),
      ListeningSubQuestion(
        question: 'What challenge is the Regional Development Plan likely to face?',
        options: ['It may be delayed due to funding issues', 'It could face difficulties in gaining government approval', 'It is likely to meet resistance from local communities'],
        answer: 'It is likely to meet resistance from local communities',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 14,
    testName: 'New Series (Ver 3)',
    partNumber: '17',
    description: 'Listen to a critic talk about a New series and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What is one criticism mentioned regarding the series\' storytelling?',
        options: ['The plot is overly complicated', 'The dialogues seems unrealistic', 'The characters\' backgrounds are not explored'],
        answer: 'The dialogues seems unrealistic',
      ),
      ListeningSubQuestion(
        question: 'What issue is highlighted about the series\' writing?',
        options: ['The humor is poorly executed', 'The new industry demand is negatively influencing script production', 'Many scripts are lacking original ideas'],
        answer: 'The new industry demand is negatively influencing script production',
      ),
    ],
  ),
  // TEST 9
  ListeningPart1617Data(
    id: 15,
    testName: 'Life after University',
    partNumber: '16',
    description: 'Listen to a man talk about Life after university and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'How does life change for graduates after university?',
        options: ['They feel more stressed about job-seeking', 'They are likely to stick to their academic routines', 'They are likely to be more flexible and open-minded'],
        answer: 'They are likely to be more flexible and open-minded',
      ),
      ListeningSubQuestion(
        question: 'What is a common characteristics of the job market after university?',
        options: ['More opportunities for networking', 'More competitive', 'Many jobs offer great benefits'],
        answer: 'More competitive',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 16,
    testName: 'Product Promotion',
    partNumber: '17',
    description: 'Listen to a man talk about a promotion campaign for a product and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What is the main issue with the product\'s promotion campaign?',
        options: ['They use exaggerated claims', 'It is not targeting the correct market', 'It is using outdated advertising methods'],
        answer: 'It is not targeting the correct market',
      ),
      ListeningSubQuestion(
        question: 'Why is the product struggling to stand out in the market?',
        options: ['It is priced too high compared to its competitors', 'It is too similar to many existing products', 'It is not available in enough stores'],
        answer: 'It is too similar to many existing products',
      ),
    ],
  ),
  // TEST 10
  ListeningPart1617Data(
    id: 17,
    testName: 'Personal Finance',
    partNumber: '16',
    description: 'Listen to an expert talk about how to manage personal finances and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'How does the speaker recommend saving money effectively?',
        options: ['Saving a large amount only on a daily basis', 'Organizing their resources more effectively', 'Use credit cards to manage expenses'],
        answer: 'Organizing their resources more effectively',
      ),
      ListeningSubQuestion(
        question: 'Who does the speaker believe can save money most successfully?',
        options: ['Get advice from people that have experience', 'Keep all your savings in a single account', 'Avoid making any long-term financial plans'],
        answer: 'Get advice from people that have experience',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 18,
    testName: 'Security Camera',
    partNumber: '17',
    description: 'Listen to a woman talk about security camera and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What is the speaker\'s opinion about security cameras at work?',
        options: ['People are unnecessarily worried about them', 'Most people don\'t even realize cameras are present', 'Cameras should be placed to ensure complete coverage'],
        answer: 'People are unnecessarily worried about them',
      ),
      ListeningSubQuestion(
        question: 'How does the speaker suggest people should feel about security cameras at work?',
        options: ['People often find them intimidating and invasive', 'Many believe they are only useful after incidents have occurred', 'People should feel reassured about their presence'],
        answer: 'People should feel reassured about their presence',
      ),
    ],
  ),
  // TEST 11
  ListeningPart1617Data(
    id: 19,
    testName: 'Personal Finance (Ver 2)',
    partNumber: '16',
    description: 'Listen to a financial advisor discussing personal finances and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the speaker say about managing personal finances?',
        options: ['Spend less on non-essential items', 'Organizing their resources more effectively', 'Rely on online budgeting tools'],
        answer: 'Organizing their resources more effectively',
      ),
      ListeningSubQuestion(
        question: 'Who does the speaker suggest for improving financial management?',
        options: ['Invest in more financial apps', 'Avoid talking about money with friends', 'Seek advice from someone who is experienced'],
        answer: 'Seek advice from someone who is experienced',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 20,
    testName: 'Scientific Book',
    partNumber: '17',
    description: 'Listen to a reviewer discussing a book about the life of a scientist and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the speaker say about the way of writing?',
        options: ['It is focused on technical details', 'It is exciting to read', 'It is more of a textbook than a biography'],
        answer: 'It is exciting to read',
      ),
      ListeningSubQuestion(
        question: 'What does the speaker say about the overall content of the book?',
        options: ['It has been written for a general audience', 'It is only suitable for experts in the field', 'It lacks engaging storytelling'],
        answer: 'It has been written for a general audience',
      ),
    ],
  ),
  // TEST 12
  ListeningPart1617Data(
    id: 21,
    testName: 'Novel Announcement (Ver 2)',
    partNumber: '16',
    description: 'Listen to a TV announcer talking about a writer\'s new novel and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the announcer say about the new novel?',
        options: ['It is different from his earlier works', 'It is romantic and soft', 'It is less famous than his earlier works'],
        answer: 'It is different from his earlier works',
      ),
      ListeningSubQuestion(
        question: 'What does the announcer say the writer should do in the future?',
        options: ['The writer should continue to write this genre', 'The writer should go back to his original genre', 'He should listen to critics before writing his next work'],
        answer: 'He should listen to critics before writing his next work',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 22,
    testName: 'Famous Musician',
    partNumber: '17',
    description: 'A radio MC talks about a famous musician\'s life and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What has the musician decided regarding his singing career?',
        options: ['He will make a comeback after a long break', 'He will retire from singing professionally', 'He will inform fans about new albums'],
        answer: 'He will retire from singing professionally',
      ),
      ListeningSubQuestion(
        question: 'What could the musician have achieved with his recent albums?',
        options: ['He could have been more successful', 'He could have inspired future generations', 'He could have gotten a bigger fan base'],
        answer: 'He could have been more successful',
      ),
    ],
  ),
  // TEST 13
  ListeningPart1617Data(
    id: 23,
    testName: 'Happiness Research',
    partNumber: '16',
    description: 'A radio MC talks about research on happiness and answer the questions below.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the radio MC say about how the research on happiness has been covered by the media?',
        options: ['It has been accurately reported by the media', 'It has not been accurately reported by the media', 'It has been ignored completely by the media'],
        answer: 'It has not been accurately reported by the media',
      ),
      ListeningSubQuestion(
        question: 'According to the radio MC, what is unlikely regarding the research on happiness?',
        options: ['To find personal happiness', 'To find a conclusive answer', 'To discuss happiness in the media'],
        answer: 'To find a conclusive answer',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 24,
    testName: 'Professionalism',
    partNumber: '17',
    description: 'An expert talking about Professionalism. Choose the correct answer.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the expert say what being professional is all about?',
        options: ['to maintain positive attitude', 'to create good working environment', 'to make good impressions'],
        answer: 'to maintain positive attitude',
      ),
      ListeningSubQuestion(
        question: 'What does the expert say about the definition of professionalism?',
        options: ['it is the same of 40 years ago', 'our definition of it is changing', 'it will not change anymore'],
        answer: 'our definition of it is changing',
      ),
    ],
  ),
  // TEST 14
  ListeningPart1617Data(
    id: 25,
    testName: 'Goal Setting',
    partNumber: '16',
    description: 'Listen to a man discussing goal setting. Choose the correct answers.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the speaker say about short-term goals?',
        options: ['It allows you to be more flexible', 'It creates pressure and limits creativity', 'It only apply to specific situations or certain types of people'],
        answer: 'It allows you to be more flexible',
      ),
      ListeningSubQuestion(
        question: 'What is the speaker\'s opinion about goal setting?',
        options: ['It can lead to confusion and distraction', 'It can prevent you from making mistakes', 'It can bring about opportunities for individuals'],
        answer: 'It can prevent you from making mistakes',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 26,
    testName: 'TV Scripts',
    partNumber: '17',
    description: 'Listen to a TV producer sharing his thoughts on the latest scripts for a new show. Choose the correct answer.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the producer think about the dialogues in the new show?',
        options: ['They are perfectly written and engaging', 'They seem unrealistic', 'They reflect real-life conversations well'],
        answer: 'They seem unrealistic',
      ),
      ListeningSubQuestion(
        question: 'How is the current industry demand affecting the quality of script production?',
        options: ['It is allowing for more thorough script development', 'It is leading to more innovative ideas', 'It is negatively influencing script production'],
        answer: 'It is negatively influencing script production',
      ),
    ],
  ),
  // TEST 15
  ListeningPart1617Data(
    id: 27,
    testName: 'Guidebook',
    partNumber: '16',
    description: 'A man is sharing a new guidebook. Choose the corrects answer.',
    questions: [
      ListeningSubQuestion(
        question: 'What does this guidebook offer to its audience?',
        options: ['It focuses solely on historical landmarks', 'It creates an adventure', 'It is difficult to navigate'],
        answer: 'It creates an adventure',
      ),
      ListeningSubQuestion(
        question: 'What is the speaker\'s opinion about this guidebook?',
        options: ['It caters only to seasoned travelers', 'It is outdated and irrelevant', 'It is suitable for particular generations'],
        answer: 'It is suitable for particular generations',
      ),
    ],
  ),
  ListeningPart1617Data(
    id: 28,
    testName: 'Scientific Biography',
    partNumber: '17',
    description: 'A reviewer discussing a book about the life of a scientist. Choose the corrects answer.',
    questions: [
      ListeningSubQuestion(
        question: 'What does the speaker say about the way of writing?',
        options: ['It is focused on technical details', 'It is exciting to read', 'It is more of a textbook than a biography'],
        answer: 'It is exciting to read',
      ),
      ListeningSubQuestion(
        question: 'What does the speaker say about the overall content of the book?',
        options: ['It has been written for a general audience', 'It is only suitable for experts in the field', 'It lacks engaging storytelling'],
        answer: 'It has been written for a general audience',
      ),
    ],
  ),
];

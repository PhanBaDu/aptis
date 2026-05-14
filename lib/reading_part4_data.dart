class ReadingPart4Question {
  final String question;
  final String answer;

  const ReadingPart4Question({
    required this.question,
    required this.answer,
  });
}

class ReadingPart4Data {
  final int id;
  final String title;
  final String? version;
  final Map<String, String> persons;
  final List<ReadingPart4Question> questions;

  const ReadingPart4Data({
    required this.id,
    required this.title,
    this.version,
    required this.persons,
    required this.questions,
  });
}

const List<ReadingPart4Data> readingPart4Topics = [
  ReadingPart4Data(
    id: 1,
    title: 'Music Festival (lễ hội âm nhạc)',
    version: 'Version 1',
    persons: {
      'A': 'This is my first time going to a concert, and the experience was quite mixed. During the first two days. The music was rather ordinary, and the event would have been far more enjoyable if there had been just a little sunshine to brighten things up. Luckily, the last day completely changed my impression, as I finally got to see my favorite singers. Meeting them and enjoying the performances made the whole trip memorable and truly special.',
      'B': 'I attend music festivals every year, and over time it has become something of a personal tradition. I really enjoy the energetic atmosphere where people come together to share music and excitement. This particular festival, however, felt quite different from what I am used to. The weather conditions were less than perfect, though it didn\'t bother me that much, as I have enjoyed festivals in the rain before. The venue was moderately convenient and the performances themselves were rather unremarkable. To be honest, I doubt I will choose to come back in the future.',
      'C': 'I don\'t like one particular type of music being played at festivals, as I much prefer a variety of genres to enjoy and dance to. Luckily, this event truly lived up to what I was hoping for. The songs and melodies were absolutely impressive, leaving a strong impression on me. Although there was some rain, I actually felt it made the atmosphere even more vibrant and fun. One drawback, however, was the ticket price was quite high, which many students, including me, found difficult to afford.',
      'D': 'My band and I were invited to play at this festival, and we delivered the kind of performance our audience has come to expect from us. The show turned out to be truly memorable, not only because of the energy on stage but also because some of our former members and past collaborators were present. It felt great to reconnect with them and share stories after the performance. The atmosphere overall was very positive, and the crowd seemed to enjoy every moment. The only real challenge was that the venue was located quite far from the main road, which made moving our instruments and equipment rather inconvenient.',
    },
    questions: [
      ReadingPart4Question(question: 'Who is disappointed with the weather?', answer: 'A'),
      ReadingPart4Question(question: 'Who was not impressed by the event overall?', answer: 'B'),
      ReadingPart4Question(question: 'Who enjoyed all the music at the music event?', answer: 'C'),
      ReadingPart4Question(question: 'Who thought the event was expensive?', answer: 'C'),
      ReadingPart4Question(question: 'Who likes meeting old friends?', answer: 'D'),
      ReadingPart4Question(question: 'Who thought the location was not good?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoyed the final day of the music event?', answer: 'A'),
    ],
  ),
  ReadingPart4Data(
    id: 1,
    title: 'Music Festival (lễ hội âm nhạc)',
    version: 'Version 2',
    persons: {
      'A': 'I went to the festival, but on the first day, I didn\'t enjoy it much. It felt a bit dull and not very exciting. Still, the stage was bright with lights and fireworks, and the overall atmosphere was unforgettable. The music lifted my mood and made me feel truly happy. Interestingly, by the final day, everything seemed different—I began to enjoy it a lot more. In the end, I was really glad I decided to go.',
      'B': 'I\'ve been to this festival every year, and of course, I joined again this time. But honestly, I didn\'t enjoy the music, and the weather made things worse. It kept raining, turning the ground muddy and uncomfortable for everyone. After this experience, I think I won\'t go again next year.',
      'C': 'I absolutely loved the energy of the music and enjoyed every part of the program from start to finish. Although it rained a little, it didn\'t bother me at all. The only thing I didn\'t like was the expensive ticket — I spent more than I had planned. Despite that, I still had a great time and hope the organizers consider lowering the price in the future.',
      'D': 'I was one of the musicians performing on the first day of the festival, and I also met several familiar bands there. Even though I only played a few songs, I stayed until the event ended. The pay wasn\'t great, but I really enjoyed myself because I got to reconnect with friends. However, I\'m still thinking about the long travel distance since the venue was quite far from the city center.',
    },
    questions: [
      ReadingPart4Question(question: 'Who enjoyed the music throughout all the festival?', answer: 'C'),
      ReadingPart4Question(question: 'Who only liked the last day?', answer: 'A'),
      ReadingPart4Question(question: 'Who was disappointed with the weather?', answer: 'B'),
      ReadingPart4Question(question: 'Who met old friends again?', answer: 'D'),
      ReadingPart4Question(question: 'Who thought the location was not good?', answer: 'D'),
      ReadingPart4Question(question: 'Who didn\'t like the festival overall?', answer: 'B'),
      ReadingPart4Question(question: 'Who thought it was expensive?', answer: 'C'),
    ],
  ),
  ReadingPart4Data(
    id: 2,
    title: 'Childhood Activities (những hoạt động thời thơ ấu)',
    persons: {
      'A': 'As a child, I spent countless hours playing board games with my friends. The rules were simple and easy to grasp which made the games enjoyable and accessible. As I grew older, I came to believe that board games could be a wonderful way for families to bond. However, modern games have become far more complex, with numerous rules and a wide range of characters to choose from. Although I truly enjoyed playing with my two boys and we often laughed together, I found that learning how to play required quite a bit of effort.',
      'B': 'I preferred playing outdoors with my friends when I was small. Fortunately, the weather where we lived was usually pleasant, so we often spent hours running around and chasing each other on the field. At times, we would lie down on the grass and make funny faces, enjoying the carefree moments of childhood. Those moments remain incredibly precious to me and shaped my desire to be surrounded by people. Even now, I find it difficult to stay at home alone for long.',
      'C': 'I wasn\'t able to move much as a child and even now. Instead, I was captivated by books and often preferred reading in my free time. There was a library I frequently visited, where I could lose myself in different stories for hours. Nowadays, I don\'t read as much as I used to, but I also don\'t go out very often because I spend time on my computer. I especially enjoy interactive games, as they allow me to socialise and connect with others.',
      'D': 'I love playing outdoors. On gloomy days, which happened quite often, I would stare sadly out of the window, wishing I could be outside. There wasn\'t much to do indoors back then—until one day my mother surprised me with a box full of art supplies. Inside were vibrant palettes, paintbrushes of different sizes, and stacks of paper. That was the moment I discovered another passion: painting. I could spend hours simply gazing at a blank canvas, imagining what picture I might bring to life next.',
    },
    questions: [
      ReadingPart4Question(question: 'Who enjoyed playing games with their children?', answer: 'A'),
      ReadingPart4Question(question: 'Who enjoyed playing with their friends as a child?', answer: 'B'),
      ReadingPart4Question(question: 'Who preferred reading books as a child?', answer: 'C'),
      ReadingPart4Question(question: 'Who enjoyed playing modern games?', answer: 'C'),
      ReadingPart4Question(question: 'Who enjoyed doing arts as a child?', answer: 'D'),
      ReadingPart4Question(question: 'Who thought traditional games were much simpler?', answer: 'A'),
      ReadingPart4Question(question: 'Who wished they could spend more time outdoors?', answer: 'D'),
    ],
  ),
  ReadingPart4Data(
    id: 3,
    title: 'Opinions on Holidays (Ý KIẾN) (KÌ NGHỈ)',
    persons: {
      'A': 'I visited there last summer and I also really enjoy watching the street performances that the city organizes. It adds a vibrant and entertaining element to my travel experience, and I feel immersed in the local atmosphere. I planned to buy some souvenirs but at the end of the trip, I ran out of money, which I deeply regret.',
      'B': 'When I visit a new place, I tend to spend a bit more on shopping because I believe memorable experiences are worth it. I enjoy treating myself to delicious food, whether trying local specialties or dining at popular restaurants, as it allows me to explore the local cuisine. Buying souvenirs also reminds me of the unique experiences and culture I encountered during my journey.',
      'C': 'Personally, I thought the city\'s public transport was really good. It was easy to use, efficient, and well-organized. It made getting around and exploring different areas of the city a breeze. It also relieved my worry about walking too much during my trip. I realized the importance of taking care of my feet and not pushing myself too hard. This way, I could enjoy my trip without feeling uncomfortable or tired.',
      'D': 'I don\'t generally go to big cities, as I prefer staying in one area of the city to fully experience the local culture and attractions. I enjoy destinations that feature natural resorts, where I can relax and appreciate the beauty of nature. This way, I can escape the fast pace of city life and truly connect with my surroundings.',
    },
    questions: [
      ReadingPart4Question(question: 'Who usually enjoys buying things when they travel?', answer: 'A'),
      ReadingPart4Question(question: 'Who enjoyed the street theatre that the city puts on?', answer: 'A'),
      ReadingPart4Question(question: 'Who paid a lot for their meal?', answer: 'B'),
      ReadingPart4Question(question: 'Who spent their holiday in only 1 part of the city?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoyed the natural resort there?', answer: 'D'),
      ReadingPart4Question(question: 'Who thought the public transport system was good?', answer: 'C'),
      ReadingPart4Question(question: 'Who was concerned about too much walking causing a problem?', answer: 'C'),
    ],
  ),
  ReadingPart4Data(
    id: 4,
    title: 'Careers (NGHỀ NGHIỆP)',
    persons: {
      'A': 'When I finished school, I didn\'t really know what I wanted to do. Some people advised me to get a job right away. However, I preferred to gain some practical experience first. That\'s why I applied for many volunteering roles. Even though I didn\'t earn any money, I was able to try different kinds of work. Looking back, I\'m happy with my decision because of the useful knowledge I gained.',
      'B': 'I went straight to university after I graduated from high school. I had always wanted to become a teacher, so there was no need to look at other careers. Three months ago, I joined an internship at a local school. It was really an eye-opening experience, although the workload was heavier than I thought. Still, I believe it was very worthwhile.',
      'C': 'As a child, I lived near a plumber and sometimes worked with her. She asked me to do easy jobs like checking for pipe leaks or fastening the nails with a screw. So later, it felt natural for me to study at university to become an electrician. Now that I see there are short online electrical courses, I wish I had chosen that instead.',
      'D': 'After school, I wanted some time to figure out what I really wanted. So I started looking for temporary jobs. However, it was difficult to find one because most companies didn\'t accept people without experience. In the end, a game company contacted me and I agreed to work with them. The job was hybrid, so sometimes I worked in the evenings, but that was fine for me.',
    },
    questions: [
      ReadingPart4Question(question: 'Who did not want to change to other careers?', answer: 'B'),
      ReadingPart4Question(question: 'Who thinks it was hard to get the first job?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoys working in a flexible work environment?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoyed doing things with their hands?', answer: 'C'),
      ReadingPart4Question(question: 'Who thinks their training was too long?', answer: 'C'),
      ReadingPart4Question(question: 'Who enjoyed working when training?', answer: 'B'),
      ReadingPart4Question(question: 'Who think they benefited from working for free?', answer: 'A'),
    ],
  ),
  ReadingPart4Data(
    id: 6,
    title: 'Extreme Sport (môn thể thao mạo hiểm)',
    version: 'Version 1',
    persons: {
      'A': 'Before diving into any extreme sport, I truly believe it\'s crucial to undergo proper training. While these activities can be thrilling, they also carry risks if you\'re not well-prepared. I\'ve witnessed people injuring themselves simply because they didn\'t take the necessary precautions. That\'s why I always make sure to complete a training program and familiarize myself with the safety guidelines before trying something new. With the right preparation, extreme sports can be an amazing experience.',
      'B': 'I\'ve always had a fondness for more traditional sports such as swimming, running, and tennis. They\'re enjoyable and easy to incorporate into a routine. However, a few months ago, I had the chance to go bungee jumping during a vacation, and it turned out to be an unforgettable experience. I didn\'t anticipate having so much fun! While I still prefer regular sports for daily exercise, I now feel much more open to trying extreme sports occasionally for the thrill.',
      'C': 'What I appreciate most about extreme sports is the unique way they allow me to connect with nature. Activities like rock climbing and mountain biking enable me to explore stunning landscapes while also pushing my physical and mental limits. It\'s an escape from the everyday routine, and it makes me feel truly alive. If I had more time and resources, I would love to engage in these sports more frequently, particularly in wild, remote locations.',
      'D': 'I understand that some people find extreme sports exhilarating, but they\'ve never been significant to me. In fact, I try to avoid them whenever I can. I\'m not fond of the idea of placing myself in risky situations just for the sake of excitement. There are many safer alternatives to staying active and enjoying life. I\'d much rather take a peaceful walk or do some yoga than jump out of an airplane or scale a mountain. It\'s simply not my cup of tea.',
    },
    questions: [
      ReadingPart4Question(question: 'Who finds extreme sport unimportant?', answer: 'D'),
      ReadingPart4Question(question: 'Who finds training before participating is important?', answer: 'A'),
      ReadingPart4Question(question: 'Who still likes extreme sports after playing once?', answer: 'B'),
      ReadingPart4Question(question: 'Who wants to play more extreme sport?', answer: 'C'),
      ReadingPart4Question(question: 'Who likes traditional sports like swimming?', answer: 'B'),
      ReadingPart4Question(question: 'Who enjoys nature?', answer: 'C'),
      ReadingPart4Question(question: 'Who always avoids playing extreme sport?', answer: 'D'),
    ],
  ),
  ReadingPart4Data(
    id: 6,
    title: 'Extreme Sport (môn thể thao mạo hiểm)',
    version: 'Version 2',
    persons: {
      'A': 'For me, the most important thing about extreme sports is being well-prepared. Many people think it\'s all about excitement and courage, but I don\'t see it that way. Without proper training, it\'s easy to get hurt or even put others at risk. I once took a rock-climbing course and spent weeks learning how to use the equipment correctly. After that, the actual climb was much more enjoyable because I felt confident. I believe training not only keeps you safe but also makes the experience more relaxed and rewarding.',
      'B': 'I\'ve always preferred traditional sports like swimming and running because they help me stay healthy without being too risky. Still, I was curious about how extreme sports might feel, so I tried bungee jumping during a holiday last year. At first, I was really nervous, but once I jumped, the feeling was incredible. It was a kind of thrill I had never felt before. Even so, I still swim every week because it\'s safer and more practical, though I admit extreme sports can be exciting to try at least once.',
      'C': 'Honestly, I don\'t really understand why people enjoy extreme sports. They seem dangerous and unnecessary to me. I\'ve never tried one, and I don\'t intend to. Some friends have invited me to go snowboarding or paragliding, but I always refuse. It\'s not that I dislike sports—I actually enjoy cycling and tennis—but I just don\'t see any reason to risk my health for a few seconds of excitement. In my opinion, extreme sports aren\'t essential for happiness, so I stay away from them whenever I can.',
      'D': 'What I love most about extreme sports is that they often take place in beautiful natural settings. Last summer, I went kayaking on a wild river, and the scenery was breathtaking. I also tried mountain biking through the forest and loved the feeling of fresh air and freedom. For me, it\'s not just about the sport itself but also about being surrounded by mountains, trees, and rivers. I sometimes wish I had more time and money to do these activities more often. Extreme sports give me energy and make me feel close to nature.',
    },
    questions: [
      ReadingPart4Question(question: 'Who enjoys being outdoors when doing extreme sports?', answer: 'D'),
      ReadingPart4Question(question: 'Who believes extreme sports are not important?', answer: 'C'),
      ReadingPart4Question(question: 'Who once tried an extreme sport and enjoyed it?', answer: 'B'),
      ReadingPart4Question(question: 'Who wishes to do more extreme sports in the future?', answer: 'D'),
      ReadingPart4Question(question: 'Who thinks preparation is necessary before doing extreme sports?', answer: 'A'),
      ReadingPart4Question(question: 'Who always avoids extreme sports?', answer: 'C'),
      ReadingPart4Question(question: 'Who usually does ordinary sports?', answer: 'B'),
    ],
  ),
  ReadingPart4Data(
    id: 7,
    title: 'Technology in Childhood (công nghệ trong thời thơ ấu)',
    version: 'Version 1',
    persons: {
      'A': 'When I was young, I enjoyed playing simple computer games that my dad had programmed for me. Today, I teach my children to code using easy-to-use platforms like Scratch. These tools make learning programming enjoyable, though I spend time helping them grasp the logic behind it. Working together on coding fosters both creativity and teamwork.',
      'B': 'As a child I loved spending time with my friends, building and controlling toy robots. I\'ll never forget the thrill of making them move. Those experiences sparked my passion for technology, and I still look back fondly on those moments of discovery.',
      'C': 'When I was younger, I was fascinated by science magazines about robots and computers. The articles fueled my curiosity. Now, I develop mobile apps, creating tools for daily life. Thanks to modern software, the development process has become faster, but the excitement of innovation remains the same.',
      'D': 'As a kid, I spent rainy days with my siblings watching TV shows about gadgets and inventions. We eagerly awaited each new episode. Today, I prefer taking online courses to stay up-to-date with AI and blockchain. They offer flexibility and are a great way to keep pace with the rapidly changing tech world.',
    },
    questions: [
      ReadingPart4Question(question: 'Who finds modern tools more accessible?', answer: 'A'),
      ReadingPart4Question(question: 'Who now enjoys app development?', answer: 'C'),
      ReadingPart4Question(question: 'Who loved playing with toy robots as a child?', answer: 'B'),
      ReadingPart4Question(question: 'Who loved watching tech shows as a child?', answer: 'D'),
      ReadingPart4Question(question: 'Who now prefers online learning?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoys coding with family?', answer: 'A'),
      ReadingPart4Question(question: 'Who loved science magazines as a child?', answer: 'C'),
    ],
  ),
  ReadingPart4Data(
    id: 7,
    title: 'Technology in Childhood (công nghệ trong thời thơ ấu)',
    version: 'Version 2',
    persons: {
      'A': 'When I was a child, I enjoyed building simple circuits with my parents using basic kits. Today, I collaborate on tech projects with my cousins using drag-and-drop coding platforms. These tools make the development process easier, but I always take the time to thoroughly test our creations. It\'s a wonderful way to foster creativity and work together.',
      'B': 'As a kid, I played with programmable toys like robotic pets alongside my friends. I can still recall the excitement of programming their movements. Those toys sparked my interest in logic and curiosity, and I continue to cherish those early experiences with technology.',
      'C': 'Growing up, I was fascinated by books about inventors and their innovative creations. Those stories inspired my imagination. Today, I design prototypes using 3D modeling software. The tools are much more precise now, but the joy of creating something new still feels just like the excitement of those childhood books.',
      'D': 'I spent many hours as a child exploring my family\'s old computer, learning basic commands. Rainy days often meant staying indoors and experimenting with different software. Today, I keep up with the latest innovations by listening to tech podcasts. They\'re not only entertaining but also help me stay connected to the ever-evolving tech world.',
    },
    questions: [
      ReadingPart4Question(question: 'Who now enjoys 3D modeling?', answer: 'C'),
      ReadingPart4Question(question: 'Who finds modern platforms user-friendly?', answer: 'A'),
      ReadingPart4Question(question: 'Who loved playing with programmable toys as a child?', answer: 'B'),
      ReadingPart4Question(question: 'Who loved exploring early computers as a child?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoys creating tech projects with family?', answer: 'A'),
      ReadingPart4Question(question: 'Who loved reading about inventions as a child?', answer: 'C'),
      ReadingPart4Question(question: 'Who now prefers tech podcasts?', answer: 'D'),
    ],
  ),
  ReadingPart4Data(
    id: 8,
    title: 'Childhood memories (KÍ ỨC TUỔI THƠ)',
    persons: {
      'A': 'When I was a child, I loved sitting by the fireplace listening to my grandfather\'s folktales. His voice brought every character to life, and those evenings always felt magical—they taught me the power of imagination. Nowadays, I share that same joy with my nieces by reading interactive storybooks on tablets. The animations and sounds make the stories more vivid and exciting for them. Still, I always take care to choose content that\'s suitable for their age. To me, blending old traditions with modern technology is a beautiful way to keep storytelling alive across generations.',
      'B': 'When I was a young, I used to ride my bike around the village with my friends almost every afternoon. I can still recall the feeling of the wind brushing against my face, the excitement of racing each other, and the pure sense of freedom it brought. Those simple rides weren\'t just fun—they taught me what independence and adventure felt like, lessons that stayed with me as I grew up. Nowadays, it\'s a bit sad to see that many children spend more time indoors, glued to screens instead of exploring outside. Sometimes I find myself missing those carefree afternoons when happiness was as simple as pedaling down a dusty road. Thinking back, I realize those moments helped me develop a love for the outdoors and a lasting appreciation for friendship.',
      'C': 'As a kid, I could spend hours drawing animals, trees, and landscapes with my box of crayons and pencils. I loved playing with bright colors and shapes, and I always felt proud showing my drawings to my family. What started as a simple childhood hobby slowly turned into a lifelong passion. Now, I\'m a graphic designer, creating digital art for various clients. Modern design tools help me bring my ideas to life with more precision, yet the creative joy I feel is just like it was back then. For me, drawing has always been a way to express myself—and it still fills my days with happiness.',
      'D': 'When I was growing up, I loved going on camping trips with my family in the countryside. We pitched our tents, cooked simple meals over a fire, and spent long nights gazing at the stars. Those moments made me feel deeply connected to nature and left me with unforgettable memories. Sometimes, though, rainy weather would ruin our plans, and I always felt a bit sad when we had to stay indoors. These days, my adventures have taken a different form — I enjoy visiting museums and exhibitions instead. Exploring history through artifacts and stories gives me a similar sense of curiosity and wonder, just in a quieter, more comfortable setting. To me, museums are a gentle way to travel through time and appreciate the beauty of the past.',
    },
    questions: [
      ReadingPart4Question(question: 'Who now enjoys graphic design?', answer: 'C'),
      ReadingPart4Question(question: 'Who loved camping as a child?', answer: 'D'),
      ReadingPart4Question(question: 'Who finds modern books more engaging?', answer: 'A'),
      ReadingPart4Question(question: 'Who loved drawing as a child?', answer: 'C'),
      ReadingPart4Question(question: 'Who now prefers museum visits?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoys storytelling with family?', answer: 'A'),
      ReadingPart4Question(question: 'Who loved bike riding as a child?', answer: 'B'),
    ],
  ),
  ReadingPart4Data(
    id: 9,
    title: 'Free time activity (HOẠT ĐỘNG TRONG THỜI GIAN RẢNH)',
    persons: {
      'A': 'When I was a teenager, I loved recording short stories on an old tape recorder with my cousins. We spent hours coming up with ideas and acting them out just for fun. These days, we make podcasts using modern apps that make editing and publishing much easier and more enjoyable. Even though technology has simplified the process, we still spend a lot of time planning each episode carefully. For me, podcasting is a creative way to express ideas and connect with people on a deeper level.',
      'B': 'As a child, I spent many sunny afternoons flying kites in the park with my brothers and sisters. Watching my kite rise high into the sky always filled me with happiness and excitement. Those simple yet meaningful moments taught me patience and coordination. Even now, whenever I see children flying kites, I feel warm memories returning. Those carefree days will always be some of my favorite childhood moments.',
      'C': 'When I was little, I was fascinated by doing jigsaw puzzles with my family. Carefully fitting each piece into place was both fun and satisfying. Now that I\'m older, I often play strategy-based video games, which feel like a modern version of puzzles. They\'re not only entertaining but also help me stay focused and think critically. For me, these games bring the same sense of challenge and accomplishment that puzzles once did — just in a more dynamic and interactive way.',
      'D': 'I grew up near a beautiful lake, and swimming there with my friends was one of my favorite things to do. It was such a great way to spend time outdoors, though rainy days sometimes left me feeling bored at home. Nowadays, I practice yoga to relax and recharge after long working hours. It has helped me stay calm, balanced, and focused. Yoga has become an important part of my routine and a great way to take care of both my body and mind.',
    },
    questions: [
      ReadingPart4Question(question: 'Who now enjoys video games?', answer: 'C'),
      ReadingPart4Question(question: 'Who enjoys podcasting with friends?', answer: 'A'),
      ReadingPart4Question(question: 'Who loved swimming as a child?', answer: 'D'),
      ReadingPart4Question(question: 'Who loved puzzles as a child?', answer: 'C'),
      ReadingPart4Question(question: 'Who now prefers yoga?', answer: 'D'),
      ReadingPart4Question(question: 'Who loved kite flying as a child?', answer: 'B'),
      ReadingPart4Question(question: 'Who finds modern apps easier to use?', answer: 'A'),
    ],
  ),
  ReadingPart4Data(
    id: 10,
    title: 'Games from childhood',
    persons: {
      'A': 'In the past, I really liked playing board games. Now, to limit the children from using computers, I often spend time playing with them. However, I have struggled with them because the games nowadays have more characters and rules, making us think a lot every time we play. Despite this, my children and I still like it and have a good time together.',
      'B': 'When I was a child, I often played soccer with other children of the same age. We usually played in the schoolyard and sometimes in the open spaces of the neighborhood. We divided into small teams and chased the ball until we were all tired.',
      'C': 'When I was a child, I didn\'t like going out to play, so I chose reading books as a form of entertainment. The stories described in the pages of books helped me discover my own world. Later, when I grew up, I started liking modern games with eye-catching interfaces, which help me relax and increase my creativity.',
      'D': 'When I was a child, I really liked outdoor activities. I remember that on bad weather days, I was always by the window, glued to it, looking outside and praying for the rain to stop. At those times, my mother often gave me paper and a box of crayons. I really enjoyed that drawing activity and often drew at home when the weather was bad.',
    },
    questions: [
      ReadingPart4Question(question: 'Who finds today\'s games harder than before?', answer: 'A'),
      ReadingPart4Question(question: 'Who enjoyed playing with friends in childhood?', answer: 'B'),
      ReadingPart4Question(question: 'Who enjoys playing with their children?', answer: 'A'),
      ReadingPart4Question(question: 'Who waited and hoped to go outside?', answer: 'D'),
      ReadingPart4Question(question: 'Who prefers modern games?', answer: 'C'),
      ReadingPart4Question(question: 'Who enjoyed arts as a child?', answer: 'D'),
      ReadingPart4Question(question: 'Who enjoyed reading books as a child?', answer: 'C'),
    ],
  ),
  ReadingPart4Data(
    id: 11,
    title: 'Volunteering to clean the local park',
    persons: {
      'A': 'I just have too much work that I don\'t have much free time for myself. This tight schedule makes it impossible for me to join in the park cleaning. I work all week, and the only time I go out is on weekends with my family. We usually visit the park to play games and take a walk. I am relieved to hear that the park will be cleaned by the children volunteering from the school nearby. I believe these experiences will benefit them in the future, helping them sharpen skills needed for their future careers.',
      'B': 'I adore the gorgeous scenery and fresh air at the park. Therefore, I always bring my family to the park to relax. My husband and I are always willing to do some volunteer work, so I will ask my husband to help out since he usually doesn\'t do much anyway. I will make specific plans for everyone in the neighborhood to follow so the park could be cleaned in no time.',
      'C': 'The park plays an important role in teaching children about responsibility through volunteering. Cleaning the local park not only helps keep the environment clean but also teaches kids the value of teamwork and dedication. We admire their efforts to protect nature, whether it\'s picking up trash or planting flowers. Volunteering is a great way for children to improve their skills and mindset while making a positive impact on our community.',
      'D': 'This is a reminder that not just the park, but other areas in our town also need regular cleaning. Keeping our neighborhoods clean is important for a healthy environment. The community should work together to organize cleaning events more often, as ignoring trash can harm wildlife and make the area unpleasant. By joining these efforts, residents can take pride in their surroundings and make sure everyone has a nice place to enjoy.',
    },
    questions: [
      ReadingPart4Question(question: 'Who thinks the park is a beautiful place to relax?', answer: 'B'),
      ReadingPart4Question(question: 'Who can\'t help because of busy life?', answer: 'A'),
      ReadingPart4Question(question: 'Who will ask other people to help?', answer: 'B'),
      ReadingPart4Question(question: 'Who thinks cleaning should happen regularly?', answer: 'D'),
      ReadingPart4Question(question: 'Who thinks volunteering is important for children?', answer: 'C'),
      ReadingPart4Question(question: 'Who thinks other local areas need cleaning?', answer: 'D'),
      ReadingPart4Question(question: 'Who thinks volunteering can help with future employment?', answer: 'A'),
    ],
  ),
];

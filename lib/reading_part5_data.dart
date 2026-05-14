class ReadingPart5Data {
  final int id;
  final String title;
  final List<String> headings; // The headings in the correct order for paragraphs 1 to 7
  final String keyNotes;
  final String mnemonicTip;

  const ReadingPart5Data({
    required this.id,
    required this.title,
    required this.headings,
    required this.keyNotes,
    required this.mnemonicTip,
  });
}

const List<ReadingPart5Data> readingPart5Topics = [
  ReadingPart5Data(
    id: 1,
    title: 'THE ARRIVAL OF FOUR-DAY WEEK',
    headings: [
      'A way of life now outdated',
      'Benefits for employees',
      'Undesirable financial consequences',
      'Unforeseen challenges for employees',
      'Difficult to change old habits',
      'An unfair plan for some people',
      'Alternative solutions worth considering',
    ],
    keyNotes: 'outdated → benefits → financial → challenges → difficult to loose → plan → alternative solutions',
    mnemonicTip: 'Tuy có lối sống lỗi thời (outdated), nhưng mang lại lợi ích (benefits) cho tôi về tài chính (financial). Để đạt được điều đó, tôi phải vượt qua những thách thức (challenges) vô cùng khó khăn mới thay đổi được (difficult to change) thói quen cũ. Bước đầu, tôi lên một kế hoạch (plan) rõ ràng và tìm kiếm các giải pháp thay thế (alternative solutions) để cân bằng giữa công việc và cuộc sống.',
  ),
  ReadingPart5Data(
    id: 2,
    title: 'MOUNTAIN SUMMITS',
    headings: [
      'Our changing definition of mountains',
      'A sense of achievement',
      'Publicising one\'s achievements',
      'A disturbing revelation',
      'The wrong priority',
      'A focus on substantiality',
      'A more intimate relationship',
    ],
    keyNotes: 'changing definition → sense of achievement → publicising → disturbing revelation → wrong priority → substantiality → intimate relationship',
    mnemonicTip: 'Thay đổi định nghĩa (changing definition) về núi cũng như leo đỉnh ở đâu cũng có cảm giác thành công (sense of achievement), nên tôi hay khoe khoang (publicising) thành tích. Nhưng rồi một tin xấu (disturbing revelation) ập đến do tôi đã đặt ưu tiên sai (wrong priority) leo đỉnh rồi checkin. Giờ đây, tôi tập trung vào thực chất (substantiality) và xây dựng mối quan hệ gần gũi (intimate relationship) hơn với thiên nhiên, thay vì chỉ chụp ảnh check-in.',
  ),
  ReadingPart5Data(
    id: 3,
    title: 'WOMEN IN MATHEMATICS',
    headings: [
      'Gender obscure achievements',
      'Acknowledging achievement of a pioneer',
      'Man unfairly credited',
      'A long career showing exceptional ability',
      'Labels can change perspective on people',
      'Attempting to create a gender balance',
      'Uniformity is not always beneficial',
    ],
    keyNotes: 'gender obscure → acknowledging → unfairly credited → long career → labels → gender balance → uniformity',
    mnemonicTip: 'Thành tựu của cô ấy bị giới tính che mờ (gender obscure), trong khi người đàn ông không cần làm quá nhiều lại được ghi nhận bất công (unfairly credited) thành công. Dù có sự nghiệp lâu dài (long career) đầy tài năng, cô vẫn bị dán nhãn (labels) định kiến. Vì vậy, tôi quyết tâm công nhận người tiên phong (acknowledging pioneer), thúc đẩy cân bằng giới (gender balance) và hiểu rằng sự đồng nhất (uniformity) không phải lúc nào cũng tốt đẹp.',
  ),
  ReadingPart5Data(
    id: 4,
    title: 'URBAN DEVELOPMENT',
    headings: [
      'Redefining sustainable city planning',
      'Encouraging green spaces in urban areas',
      'Supporting affordable housing projects',
      'Over-reliance on high-rise buildings',
      'Concerns about traffic congestion',
      'Strengthening community engagement',
      'Focusing on renewable energy sources',
    ],
    keyNotes: 'sustainable planning → green spaces → affordable housing → over-reliance → traffic congestion → community engagement → renewable energy',
    mnemonicTip: 'Tôi mơ về quy hoạch thành phố bền vững (sustainable planning) với nhiều không gian xanh (green spaces) và nhà ở giá rẻ (affordable housing). Nhưng rồi tôi thấy thành phố quá phụ thuộc (over-reliance) vào nhà cao tầng, gây tắc nghẽn giao thông (traffic congestion) nghiêm trọng. Tôi bắt đầu kêu gọi sự tham gia của cộng đồng (community engagement) và chuyển hướng sang năng lượng tái tạo (renewable energy) để cứu lấy tương lai đô thị.',
  ),
  ReadingPart5Data(
    id: 5,
    title: 'DIGITAL TRANSFORMATION',
    headings: [
      'Redefining business models with technology',
      'Enhancing productivity through automation',
      'Promoting digital skills training',
      'Over-reliance on automated systems',
      'Concerns about cybersecurity risks',
      'Building inclusive digital ecosystems',
      'Focusing on ethical technology development',
    ],
    keyNotes: 'business models → productivity → digital skills → over-reliance → cybersecurity → inclusive ecosystems → ethical development',
    mnemonicTip: 'Công nghệ giúp tôi đổi mới mô hình kinh doanh (business models), tăng năng suất (productivity) và học kỹ năng số (digital skills) mỗi ngày. Nhưng vì quá phụ thuộc (over-reliance) vào hệ thống tự động, tôi suýt mất dữ liệu do rủi ro an ninh mạng (cybersecurity). Từ đó, tôi xây dựng hệ sinh thái bao trùm (inclusive ecosystems) và cam kết phát triển công nghệ có đạo đức (ethical development).',
  ),
  ReadingPart5Data(
    id: 6,
    title: 'WELLNESS TREND',
    headings: [
      'Redefining holistic health approaches',
      'Promoting mental health awareness',
      'Encouraging community fitness programs',
      'Overemphasis on trendy diets',
      'Concerns about wellness misinformation',
      'Building supportive health communities',
      'Focusing on sustainable lifestyle changes',
    ],
    keyNotes: 'holistic health → mental health → community fitness → trendy diets → misinformation → supportive communities → sustainable lifestyle',
    mnemonicTip: 'Tôi theo đuổi sức khỏe toàn diện (holistic health), chú trọng sức khỏe tâm thần (mental health) và tham gia thể dục cộng đồng (community fitness). Nhưng tôi từng sa đà vào chế độ ăn theo mốt (trendy diets) và tin vào thông tin sai lệch (misinformation) trên mạng. Giờ đây, tôi xây cộng đồng hỗ trợ (supportive communities) và tập trung vào thay đổi lối sống bền vững (sustainable lifestyle)—không chạy theo trend nữa.',
  ),
  ReadingPart5Data(
    id: 7,
    title: 'CULTURAL EXCHANGE',
    headings: [
      'Redefining Global Cultural Understanding',
      'Encouraging Cross-Cultural Festivals',
      'Promoting Language Exchange Programs',
      'Overemphasis on Commercial Tourism',
      'Concerns About Cultural Preservation',
      'Building Mutual Respect Among Communities',
      'Focusing on Authentic Cultural Experiences',
    ],
    keyNotes: 'global understanding → cross-cultural festivals → language exchange → commercial tourism → cultural preservation → mutual respect → authentic Cultural experiences',
    mnemonicTip: 'Tôi muốn mở rộng hiểu biết văn hóa toàn cầu (global understanding) qua lễ hội giao lưu (cross-cultural festivals) và trao đổi ngôn ngữ (language exchange). Nhưng tôi nhận ra du lịch thương mại (commercial tourism) đang làm mai một bản sắc. Vì vậy, tôi ưu tiên trải nghiệm văn hóa chân thực (authentic Cultural experiences), góp phần bảo tồn di sản (cultural preservation) và xây dựng tôn trọng lẫn nhau (mutual respect) giữa các dân tộc.',
  ),
  ReadingPart5Data(
    id: 8,
    title: 'WOMAN MATHEMATICS (Ver 2)',
    headings: [
      'Breaking New Ground in Ancient Mathematics', // 1
      'Connecting Symmetry to Physics', // 2
      'Transforming Geometry and Motion', // 3
      'Trailblazing Computer Science', // 4
      'Encouraging Diversity in STEM', // 5
      'Driving Space Exploration Forward', // 6
      'Breaking Through Educational Barriers', // 7
    ],
    keyNotes: 'Ancient Mathematics → Symmetry and Physics → Geometry and Motion → Computer Science → Diversity in STEM → Space Exploration → Educational Barriers',
    mnemonicTip: 'Mọi kiến thức bắt nguồn từ nền tảng Toán học cổ đại (Ancient Mathematics), tạo tiền đề cho sự ra đời của Khoa học máy tính (Computer Science). Nhờ sức mạnh của máy tính, con người bắt đầu dấn thân vào công cuộc Khám phá vũ trụ (Space Exploration). Để tàu bay đúng hướng, chúng ta phải làm chủ các quy luật Hình học và Chuyển động (Geometry and Motion), đồng thời thấu hiểu sự Đối xứng và Vật lý (Symmetry and Physics) của vạn vật. Tuy nhiên, khoa học không chỉ là những con số, mà cần sự Đa dạng trong STEM (Diversity in STEM) để cùng nhau đập tan mọi Rào cản giáo dục (Educational Barriers) trên toàn thế giới.',
  ),
  ReadingPart5Data(
    id: 9,
    title: 'MOUNTAINS (VERSION 2)',
    headings: [
      'Changing the definition of mountain', // 1
      'Focus on sustainability', // 2
      'Publicity of achievement', // 3
      'The wrong priority', // 4
      'The unique feeling of achievement', // 5
      'A disturbing relevance', // 6
      'A more intimate relationship', // 7
    ],
    keyNotes: 'definition → sustainability → publicity → wrong priority → achievement → disturbing relevance → intimate relationship',
    mnemonicTip: 'Chúng ta bắt đầu bằng việc Thay đổi định nghĩa (1) về leo núi, không còn là chinh phục đỉnh cao mà là tìm kiếm Cảm giác thành tựu độc bản (5) trong tâm hồn. Thay vì mải mê Quảng bá thành tích (3) lên mạng xã hội, ta nhận ra đó là Một sự ưu tiên sai lầm (4). Điều này dẫn đến Một thực trạng đáng lo ngại (6) về môi trường, buộc chúng ta phải Tập trung vào sự bền vững (2) để xây dựng Một mối quan hệ gần gũi (7) và chân thực hơn với thiên nhiên.',
  ),
];

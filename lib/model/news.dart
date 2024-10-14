class News {
  final String category;
  final String title;
  final String source;
  final String image;
  final String time;
  final String readTime;

  News({
    required this.category,
    required this.title,
    required this.source,
    required this.image,
    required this.time,
    required this.readTime,
  });
}

// Dummy data for each category
final List<News> newsList = [
  // Trending
  News(
    category: 'Trending',
    title: 'Breaking News: Global Markets Surge',
    source: 'Reuters',
    image: 'assets/images/vespa.jpg',
    time: '1 hr ago',
    readTime: '5 min read',
  ),
  News(
    category: 'Trending',
    title: 'Tech Giants Face New Regulations',
    source: 'BBC',
    image: 'assets/images/vespa.jpg',
    time: '3 hr ago',
    readTime: '8 min read',
  ),
  News(
    category: 'Trending',
    title: 'Sports Update: Championship Finals Today',
    source: 'ESPN',
    image: 'assets/images/vespa.jpg',
    time: '30 min ago',
    readTime: '10 min read',
  ),
  
  // Food
  News(
    category: 'Food',
    title: 'Top 10 Restaurants to Visit in 2024',
    source: 'Food Network',
    image: 'assets/images/sample_profile.jpeg',
    time: '1 day ago',
    readTime: '6 min read',
  ),
  News(
    category: 'Food',
    title: 'The Best Vegan Recipes of the Year',
    source: 'Bon Appetit',
    image: 'assets/images/sample_profile.jpeg',
    time: '5 hr ago',
    readTime: '7 min read',
  ),
  News(
    category: 'Food',
    title: 'How to Make the Perfect Pizza at Home',
    source: 'NY Times',
    image: 'assets/images/sample_profile.jpeg',
    time: '2 hr ago',
    readTime: '4 min read',
  ),

  // Travel
  News(
    category: 'Travel',
    title: 'Top 5 Destinations for 2024',
    source: 'Lonely Planet',
    image: 'assets/images/sample_profile2.jpeg',
    time: '3 hr ago',
    readTime: '9 min read',
  ),
  News(
    category: 'Travel',
    title: 'How to Travel Safely in 2024',
    source: 'The Guardian',
    image: 'assets/images/sample_profile2.jpeg',
    time: '6 hr ago',
    readTime: '12 min read',
  ),
  News(
    category: 'Travel',
    title: 'The Best Budget Travel Tips',
    source: 'CN Traveler',
    image: 'assets/images/sample_profile2.jpeg',
    time: '4 hr ago',
    readTime: '7 min read',
  ),

  // Fashion
  News(
    category: 'Fashion',
    title: '2024 Fashion Trends to Watch',
    source: 'Vogue',
    image: 'assets/images/sample_profile2.jpeg',
    time: '4 hr ago',
    readTime: '8 min read',
  ),
  News(
    category: 'Fashion',
    title: 'Sustainable Fashion: A Guide',
    source: 'Elle',
    image: 'assets/images/sample_profile2.jpeg',
    time: '2 hr ago',
    readTime: '6 min read',
  ),
  News(
    category: 'Fashion',
    title: 'The Best Fashion Shows of 2024',
    source: 'Harper\'s Bazaar',
    image: 'assets/images/sample_profile2.jpeg',
    time: '1 hr ago',
    readTime: '5 min read',
  ),

  // Education
  News(
    category: 'Education',
    title: 'Online Learning: The Future of Education',
    source: 'EdTech Magazine',
    image: 'assets/images/vespa.jpg',
    time: '3 hr ago',
    readTime: '5 min read',
  ),
  News(
    category: 'Education',
    title: 'Top 10 Online Courses for Professionals',
    source: 'Forbes',
    image: 'assets/images/vespa.jpg',
    time: '2 hr ago',
    readTime: '7 min read',
  ),
  News(
    category: 'Education',
    title: 'The Benefits of Lifelong Learning',
    source: 'Harvard Business Review',
    image: 'assets/images/vespa.jpg',
    time: '1 hr ago',
    readTime: '6 min read',
  ),

  // Business
  News(
    category: 'Business',
    title: 'How to Start Your Own Business',
    source: 'Business Insider',
    image: 'assets/images/vespa.jpg',
    time: '5 hr ago',
    readTime: '9 min read',
  ),
  News(
    category: 'Business',
    title: 'The Future of Remote Work',
    source: 'Fast Company',
    image: 'assets/images/sample_profile2.jpeg',
    time: '3 hr ago',
    readTime: '8 min read',
  ),
  News(
    category: 'Business',
    title: 'Investing 101: A Beginner\'s Guide',
    source: 'CNBC',
    image: 'assets/images/sample_profile.jpeg',
    time: '4 hr ago',
    readTime: '10 min read',
  ),
];

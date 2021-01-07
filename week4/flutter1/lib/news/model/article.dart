class Article {
  final String author;
  final String title;
  final String content;
  final DateTime date;
  final String imageUrl;

  Article({
    this.author,
    this.title,
    this.content,
    this.date,
    this.imageUrl,
  });
}


final news=Article(
  title: "Lorem Ipsum",
  content:content,
  author:"John",
  imageUrl: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMjA3fDB8MXxzZWFyY2h8Mnx8fHwwfHx8&ixlib=rb-1.2.1&q=80&w=1080",
  date:DateTime.now(),
);

const content="It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
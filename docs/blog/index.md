# Blog

Welcome to our technology blog! Here you'll find articles, tutorials, and insights on software development, AI, and tech trends.

## Recent Posts

{% for post in blog.posts %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date.strftime('%B %d, %Y') }}
{% endfor %}

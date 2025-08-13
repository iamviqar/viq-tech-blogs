# VIQ Tech Blog

A modern technology blog built with MkDocs and Material theme, featuring articles on software development, AI, and tech trends.

## Features

- 📝 **Blog functionality** with categories, tags, and authors
- 🎨 **Material Design** with dark/light theme toggle
- 🔍 **Full-text search** capability
- 📱 **Responsive design** for all devices
- 🏷️ **Tagging and categorization** system
- 📧 **RSS feed** generation
- 👥 **Multi-author support**
- 📅 **Archive functionality**

## Quick Start

### Prerequisites

- Python 3.8 or higher
- pip (Python package installer)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/viq-tech-blogs.git
   cd viq-tech-blogs
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Serve the site locally:**
   ```bash
   mkdocs serve
   ```

4. **Open your browser** and visit `http://localhost:8000`

### Building for Production

```bash
mkdocs build
```

This generates a `site/` directory with static files ready for deployment.

## Project Structure

```
viq-tech-blogs/
├── docs/                   # Source content
│   ├── index.md           # Homepage
│   ├── about.md           # About page
│   ├── tags.md            # Tags page
│   └── blog/              # Blog section
│       ├── index.md       # Blog homepage
│       ├── .authors.yml   # Author definitions
│       └── posts/         # Blog posts
├── mkdocs.yml             # MkDocs configuration
├── requirements.txt       # Python dependencies
└── README.md             # This file
```

## Writing Blog Posts

### Creating a New Post

1. Create a new Markdown file in `docs/blog/posts/`
2. Use the naming convention: `YYYY-MM-DD-post-title.md`
3. Include proper frontmatter:

```yaml
---
date: 2025-08-08
authors:
  - author_name
categories:
  - Category Name
tags:
  - tag1
  - tag2
title: Your Post Title
description: Brief description of your post
---
```

### Frontmatter Fields

- **date**: Publication date (YYYY-MM-DD format)
- **authors**: List of author IDs (defined in `.authors.yml`)
- **categories**: Post categories for organization
- **tags**: Tags for topical classification
- **title**: Post title
- **description**: Meta description for SEO

### Adding Authors

Edit `docs/blog/.authors.yml` to add new authors:

```yaml
author_id:
  name: Author Name
  description: Brief bio
  avatar: https://github.com/username.png
  url: https://github.com/username
```

## Customization

### Theme Configuration

Edit `mkdocs.yml` to customize:

- **Colors**: Modify the `palette` section
- **Navigation**: Update the `nav` section
- **Features**: Enable/disable Material theme features
- **Social links**: Update the `extra.social` section

### Plugins

The blog uses several plugins:

- **search**: Full-text search functionality
- **blog**: Blog-specific features (pagination, archives, etc.)
- **tags**: Tag management and pages
- **rss**: RSS feed generation

## Deployment

### GitHub Pages

1. **Enable GitHub Pages** in your repository settings
2. **Create a GitHub Action** (`.github/workflows/deploy.yml`):

```yaml
name: Deploy MkDocs
on:
  push:
    branches: [main]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-python@v4
        with:
          python-version: 3.x
      - run: pip install -r requirements.txt
      - run: mkdocs gh-deploy --force
```

### Other Platforms

- **Netlify**: Connect your repository and set build command to `mkdocs build`
- **Vercel**: Similar setup with `mkdocs build`
- **AWS S3**: Build locally and upload the `site/` directory

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

- 📧 Email: contact@viqtech.com
- 🐛 Issues: [GitHub Issues](https://github.com/your-username/viq-tech-blogs/issues)
- 💬 Discussions: [GitHub Discussions](https://github.com/your-username/viq-tech-blogs/discussions)

---

**Happy blogging!** 🚀

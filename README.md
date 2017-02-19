# Multimarkdown 5 in a Docker image

## Why

No binary available for Linux.

Use Alpine as base image for a small size.

You can build locally using:

```bash
docker build -t mmd-local .
```

Consider adding to [pwep/xetex-pandoc][0], which contains a latex install.

[0]: http://github.com/pwep/xetex-pandoc

# Multimarkdown 5 in a Docker image

## Why

No binary available for Linux.

Use Alpine as base image for small size.

Local build:

```bash
docker build -t mmd-local .
```

Consider adding to [pwep/xetex-pandoc][0]

[0]: http://github.com/pwep/xetex-pandoc

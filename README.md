# Online Resume (GitHub Pages)

This repository hosts a static online resume using GitHub Pages.

## Content source

Current resume content was aligned from:

- `C:\Users\jluis\Documents\S&PE-Java.CL9.jose.luis.o.domingo.pptx`

Use `ppt-extracted.txt` as a temporary mapping artifact when refreshing content from slides.

## Files

- `index.html`: Main resume page
- `styles.css`: Styling for the resume page
- `404.html`: Fallback page for unknown routes
- `.nojekyll`: Disables Jekyll processing in GitHub Pages
- `scripts/validate.ps1`: Local validation script
- `ppt-extracted.txt`: Extracted slide text used to map resume content

## Quick local check

```powershell
Set-Location C:\Users\jluis\IdeaProjects\resume
powershell -ExecutionPolicy Bypass -File .\scripts\validate.ps1
```

## Optional local server

```powershell
Set-Location C:\Users\jluis\IdeaProjects\resume
python -m http.server 8000
```

Open http://localhost:8000 in your browser.

## Publish to GitHub Pages

1. Create a GitHub repo (for example: `resume`) if needed.
2. Push this folder to `main`.
3. In GitHub: **Settings -> Pages**.
4. Under **Build and deployment**:
   - Source: `Deploy from a branch`
   - Branch: `main`
   - Folder: `/ (root)`
5. Save and wait for deployment.

Your URL will usually be:

- `https://<github-username>.github.io/resume/`

If your repo is named `<github-username>.github.io`, then the URL is:

- `https://<github-username>.github.io/`


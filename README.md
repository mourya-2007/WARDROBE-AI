# Wardrobe AI

The current Wardrobe AI application source is provided in [Wardrobe-AI-Source.tar.xz](./Wardrobe-AI-Source.tar.xz).

## Run locally

1. Download and extract `Wardrobe-AI-Source.tar.xz`.
2. Open the extracted `wardrobe-ai-optimized` folder in your terminal.
3. Install dependencies and start Vite:

```bash
npm install
npm run dev
```

## GitHub Pages

The site is deployed automatically by the GitHub Actions workflow in `.github/workflows/deploy.yml`. The workflow extracts the source archive, installs dependencies, builds the Vite app with the repository base path `/WARDROBE-AI/`, and deploys the `dist` folder.

**One-time repository setting:** open **Settings → Pages → Build and deployment → Source** and select **GitHub Actions**. Then open the **Actions** tab and check the “Deploy Wardrobe AI to GitHub Pages” workflow.

Live site: https://mourya-2007.github.io/WARDROBE-AI/

## Included features

- Apple-inspired landing page with an animated text marquee and rotating fashion imagery.
- Dark Mac Pro-inspired workspace.
- My Wardrobe with garment preview and close interactions.
- Landscape occasion carousel.
- AI Stylist with enlarged cards, outfit-generation animation, and ready-state modal.
- Responsive layout and motion-aware styling.

Outfit suggestions currently use sample recommendations. A live AI styling API is not connected.

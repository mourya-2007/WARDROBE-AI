# Wardrobe AI

Wardrobe AI is a React + Vite personal wardrobe and outfit-styling prototype.

## Run locally

Clone this repository and extract the bundled source into the working tree:

```bash
git clone https://github.com/mourya-2007/WARDROBE-AI.git
cd WARDROBE-AI
bash scripts/export-source.sh
cd wardrobe-ai-optimized
npm install
npm run dev
```

## GitHub Pages

The site is deployed automatically by the GitHub Actions workflow in `.github/workflows/deploy.yml`. The workflow reconstructs and validates the bundled source archive, installs dependencies, builds the Vite app with the repository base path `/WARDROBE-AI/`, and deploys the generated `dist` directory.

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

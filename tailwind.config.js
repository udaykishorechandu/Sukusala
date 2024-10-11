/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: '#d8722b',
        secondary: '#a67b60',
        light: '#eee9e5',
        dark: '#a67b60',
      },
      spacing: {
        15: '60px',
      },
    },
  },
  plugins: [],
}


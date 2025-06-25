theme: {
  extend: {
    animation: {
      'fade-in-down': 'fadeInDown 0.4s',
    },
    keyframes: {
      fadeInDown: {
        '0%': { opacity: 0, transform: 'translateY(-20px)' },
        '100%': { opacity: 1, transform: 'translateY(0)' },
      },
    }
  }
}

module.exports = {
  root: true,
  extends: ['@react-native-community', 'eslint:recommended', 'google', 'react-hooks'],
  rules: {
    'comma-dangle': ['error', 'never'],
    'quote-props': ['error', 'as-needed'],
    'max-len': ['error', { code: 120 }],
    'react-hooks/rules-of-hooks': 'error',
    'react-hooks/exhaustive-deps': 'warn'
  }
};

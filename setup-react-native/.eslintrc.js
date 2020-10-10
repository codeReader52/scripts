module.exports = {
  root: true,
  extends: ['@react-native-community', 'eslint:recommended', 'google'],
  rules: {
    'comma-dangle': ['error', 'never'],
    'quote-props': ['error', 'as-needed'],
    'max-len': ['error', {code: 120}]
  }
};

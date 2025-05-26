final class Env {
  Env._();

  static const String cvUrl = String.fromEnvironment(
    'CV_URL',
    defaultValue: 'https://drive.google.com/file/d/1Nsip09tbl5qSFenH6BxR9fXWTeQFpHNH/view',
  );
  static const String email = String.fromEnvironment(
    'EMAIL',
    defaultValue: 'kamal.ayman522@gmail.com',
  );
  static const String phone = String.fromEnvironment(
    'PHONE',
    defaultValue: '+20 120 125 0706',
  );
  static const String github = String.fromEnvironment(
    'GITHUB',
    defaultValue: 'https://github.com/kamal-ayman',
  );  
  static const String linkedIn = String.fromEnvironment(
    'LINKED_IN',
    defaultValue: 'https://www.linkedin.com/in/kamal-ayman/',
  );
}

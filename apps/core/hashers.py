from django.contrib.auth.hashers import BCryptSHA256PasswordHasher


class CustomBCryptPasswordHasher(BCryptSHA256PasswordHasher):
    rounds = 14

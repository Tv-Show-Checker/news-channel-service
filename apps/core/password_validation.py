import re
from django.utils.translation import gettext as _
from django.core.exceptions import ValidationError


class UpperCasePasswordValidator:
    def validate(self, password, user=None):  # noqa
        if not re.findall(r"[A-Z]", password):
            raise ValidationError(
                _("The password must contain at least 1 uppercase letter, A-Z."),
                code='password_no_uppercase')

    def get_help_text(self):  # noqa
        return _("Your password must contain at least 1 uppercase letter, A-Z.")


class SpecialCharacterPasswordValidator:
    def validate(self, password, user=None):  # noqa
        if not re.findall(r'[^A-Za-z0-9]', password):
            raise ValidationError(
                _("The password must contain at least 1 special character."),
                code='password_no_special',
            )

    def get_help_text(self):  # noqa
        return _("Your password must contain at least 1 special character.")


class MinimumNumberPasswordValidator:
    def validate(self, password, user=None):  # noqa
        if not any(char.isdigit() for char in password):
            raise ValidationError(
                _("The password must contain at least 1 digit, 0-9."),
                code='password_no_number',
            )

    def get_help_text(self):  # noqa
        return _("Your password must contain at least 1 digit, 0-9.")

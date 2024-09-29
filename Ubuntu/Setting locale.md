:collision: error messages are as followed:
> perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
    LANGUAGE = (unset),
    LC_ALL = (unset),
    LC_CTYPE = "UTF-8",
    LANG = "C"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").

:sparkles: solution:
1. reinstall locales
2. dpkg-reconfig locales
   1. export LANG="en_US.utf8"
   2. export LANGUAGE="en_US.utf8"
   3. export LC_ALL="en_US.utf8"

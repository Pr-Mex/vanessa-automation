@echo off

@echo sync the service base to src

oscript .\tools\onescript\unload-service-conf.os
oscript .\tools\onescript\run-behavior-check-session.os

@echo off

@echo sync the service base to src

oscript .\tools\unload-service-conf.os
oscript .\tools\run-behavior-check-session.os

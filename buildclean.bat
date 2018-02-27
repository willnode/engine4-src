@echo off
rmdir "_site" /s /q
docfx  --loglevel Warning --serve -f
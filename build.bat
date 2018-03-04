@echo off
docfx  --loglevel Warning
http-server _site -c-1

# Makefile for Chuck-A-Luck
.PHONY: run test web serve clean help

run:
	@echo "=== STARTING GAME ==="
	py chuck_a_luck.py

test:
	@echo "=== RUNNING TESTS ==="
	py test_game.py

web:
	@echo "=== WEB VERSION ==="
	@echo "Open web_game.html in browser"

serve:
	@echo "=== LOCAL SERVER ==="
	@echo "Open: http://localhost:8000/web_game.html"
	py -m http.server 8000

clean:
	@echo "=== CLEANING ==="
	del /Q *.log *.txt 2>nul || rm -f *.log *.txt

help:
	@echo "Available commands:"
	@echo "  make run   - Start game"
	@echo "  make test  - Run tests"
	@echo "  make web   - Web version info"
	@echo "  make serve - Start local server"
	@echo "  make clean - Clean temporary files"
	@echo "  make help  - Show this help"
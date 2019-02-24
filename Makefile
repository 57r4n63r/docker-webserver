#!/bin/bash

reload-apache-config:
	@echo "Rebuilding php container..."
	@docker-compose down > /dev/null 2>&1
	@docker-compose up -d --no-deps --build php > /dev/null 2>&1
	@docker-compose up -d > /dev/null 2>&1
	@echo "done!"

.PHONY: reload-apache-config

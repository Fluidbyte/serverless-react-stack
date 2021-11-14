#!/bin/sh

BLUE='\033[0;34m'
NC='\033[0m'
DIVIDER='\n==============================================\n\n'

echo "\n\n${BLUE}Going to install everything. Go get a coffee.${NC}\n\n"

echo "${BLUE}Building Docker Image...${NC}${DIVIDER}"
docker build ./docker -t serverless-react-stack

echo "\n\n\n${BLUE}Installing Root Dependencies...${NC}${DIVIDER}"
binci install:base

echo "\n\n\n${BLUE}Installing Shared Dependencies...${NC}${DIVIDER}"
binci install:shared

echo "\n\n\n${BLUE}Installing Web Dependencies...${NC}${DIVIDER}"
binci install:web

echo "\n\n\n${BLUE}Installing Function Dependencies...${NC}${DIVIDER}"
binci install:functions
#!/bin/bash

OPTS="{\"name\":\"$REPO\", \"private\":true}"
curl -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GITHUB_TOKEN" https://api.github.com/orgs/$GITHUB_ORG/repos -d "$OPTS"

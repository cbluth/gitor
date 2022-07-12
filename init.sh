#!/usr/bin/env bash
set -e

function init()
{
    mkdir -p data/{config,gitea,tor}
    chown 101:101 data/tor
    chown 1000:1000 data/{config,gitea}
}

init

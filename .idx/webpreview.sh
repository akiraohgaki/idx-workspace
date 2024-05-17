#!/bin/bash

${HOME}/.local/bin/deno run --allow-sys --allow-read --allow-net jsr:@std/http/file-server . -p ${PORT}

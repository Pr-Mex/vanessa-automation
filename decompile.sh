#!/bin/bash

cd "$(dirname "$0")"

oscript ./tools/onescript/Decompile.os ./ CheckDif

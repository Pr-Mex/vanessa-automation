#!/bin/bash

cd "$(dirname "$0")"

oscript ./lib/packages.os download
oscript ./tools/onescript/ZipTemplates.os
oscript ./tools/onescript/Compile.os ./

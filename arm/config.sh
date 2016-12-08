# Copyright 2016 The Kubernetes Authors All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

MUSL_VERSION=1.1.14
ARCH=arm
CC_BASE_PREFIX=/opt/cross
MAKEFLAGS=-j4

# arm softfp
TRIPLE=arm-linux-musleabi
GCC_BOOTSTRAP_CONFFLAGS="--with-arch=armv5 --with-float=softfp"
GCC_CONFFLAGS="--with-arch=armv5 --with-float=softfp"

# Enable this to build the bootstrap gcc (thrown away) without optimization, to reduce build time
GCC_STAGE1_NOOPT=1

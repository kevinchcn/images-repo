# images 
## airflow
#1

airflow@f7a4f627a0b6:/opt/airflow$ apt search openssl
Sorting... Done
Full Text Search... Done
libcurl4/now 7.64.0-4+deb10u2 amd64 [installed,local]
  easy-to-use client-side URL transfer library (OpenSSL flavour)

libssl-dev/now 1.1.1n-0+deb10u1 amd64 [installed,local]
  Secure Sockets Layer toolkit - development files

libssl1.1/now 1.1.1n-0+deb10u1 amd64 [installed,local]
  Secure Sockets Layer toolkit - shared libraries

openssl/now 1.1.1n-0+deb10u1 amd64 [installed,local]
  Secure Sockets Layer toolkit - cryptographic utility

#2

airflow@e213a5d2ab74:/opt/airflow/openssl-1.1.1n$ openssl version -a
OpenSSL 1.1.1n  15 Mar 2022
built on: Fri Mar 18 18:41:12 2022 UTC
platform: debian-amd64
options:  bn(64,64) rc4(16x,int) des(int) blowfish(ptr)
compiler: gcc -fPIC -pthread -m64 -Wa,--noexecstack -Wall -Wa,--noexecstack -g -O2 -fdebug-prefix-map=/build/openssl-rHfNwS/openssl-1.1.1n=. -fstack-protector-strong -Wformat -Werror=format-security -DOPENSSL_USE_NODELETE -DL_ENDIAN -DOPENSSL_PIC -DOPENSSL_CPUID_OBJ -DOPENSSL_IA32_SSE2 -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_MONT5 -DOPENSSL_BN_ASM_GF2m -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DKECCAK1600_ASM -DRC4_ASM -DMD5_ASM -DAESNI_ASM -DVPAES_ASM -DGHASH_ASM -DECP_NISTZ256_ASM -DX25519_ASM -DPOLY1305_ASM -DNDEBUG -Wdate-time -D_FORTIFY_SOURCE=2
OPENSSLDIR: "/usr/lib/ssl"
ENGINESDIR: "/usr/lib/x86_64-linux-gnu/engines-1.1"
Seeding source: os-specific

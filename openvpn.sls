# See https://openvpn.net/index.php/open-source/documentation/howto.html#examples
# for configuration details
# Important: Replace all '-' in names on left side with '_'!

# Defaults can be overwritten, see openvpn/map.jinja for default values
# openvpn:
#   lookup:
#     dh_files: ['4096']              # This creates a dh file with 4096 bits (which will take a long time).
#     dh_files: ['2048']              # This creates a dh file with 2048 bits (which should be enough.)
#                                     # Default: ['2048', '4096']
#                                     # (It creates both variants.)
#
#     dsaparam: False                 # Set this to True if you want to use the -dsaparam flag in DH param generation.
#                                     # See also:
#                                     # https://github.com/saltstack-formulas/openvpn-formula/pull/77
#                                     # https://security.stackexchange.com/questions/42415/openvpn-dhparam
#
#     external_repo_enabled: True     # This will use the OpenVPN repository documented
#                                     # at the following URL: https://community.openvpn.net/openvpn/wiki/OpenvpnSoftwareRepos
#                                     # Only valid for Debian OS family
#
#     external_repo_version: testing  # The version to use for OpenVPN if 'external_repo_enabled' is set to 'True'
#                                     # Info here: https://community.openvpn.net/openvpn/wiki/OpenvpnSoftwareRepos
#                                     # Valid options: stable (default), testing, release/2.3, release/2.4

openvpn:
  server:
    minion:
      server: '10.8.0.0 255.255.255.0'
      port: 1194
      proto: udp
      dev: tun
      ca: /etc/openvpn/ca.crt
      ca_content: |
        -----BEGIN CERTIFICATE-----
        MIIFEjCCA/qgAwIBAgIJANPTczdQ17EzMA0GCSqGSIb3DQEBCwUAMIG2MQswCQYD
        VQQGEwJVSzEPMA0GA1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25kb24xDTALBgNV
        BAoTBEVORC4xHTAbBgNVBAsTFE15T3JnYW5pemF0aW9uYWxVbml0MRAwDgYDVQQD
        EwdFTkQuIENBMRYwFAYDVQQpEw1zZXJ2ZXJrZXluYW1lMS0wKwYJKoZIhvcNAQkB
        Fh5hZHJpYW4ubmF2YXJyb0BlbmRjbG90aGluZy5jb20wHhcNMTgwOTI2MTU0NzI3
        WhcNMjgwOTIzMTU0NzI3WjCBtjELMAkGA1UEBhMCVUsxDzANBgNVBAgTBkxvbmRv
        bjEPMA0GA1UEBxMGTG9uZG9uMQ0wCwYDVQQKEwRFTkQuMR0wGwYDVQQLExRNeU9y
        Z2FuaXphdGlvbmFsVW5pdDEQMA4GA1UEAxMHRU5ELiBDQTEWMBQGA1UEKRMNc2Vy
        dmVya2V5bmFtZTEtMCsGCSqGSIb3DQEJARYeYWRyaWFuLm5hdmFycm9AZW5kY2xv
        dGhpbmcuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3RTlyhX2
        2WIogwoi7W0ABQCt3bDPfuTx8eS3ODjYgvKNv5sXk/6HwOVH1ZfKflePK3132wu+
        A4RkiniT8EYm1EfpQ9z+SIcFyw/osq+RG+EFHnhbCm/dvGPWpYkJ6/CCfeeisTQh
        yTh0FEXezoQ62JrsHHXlkdVlT7iWrLU7qapOtD/3ZoxNONTmb92UF9HZVdH2QKrt
        6c7UA8S0jq9u0nJijtLH1u7+Brl3HLZONapQDj1zbXl+fhK9uj2ATNPSfVpqoRlz
        +uQSPzGTvkdthXjTGcsPB4TAXjdhEWYija6ZZpNNKF+VMtg905jNvLqY/Vo7ib1d
        TnA7DBwYH72+GwIDAQABo4IBHzCCARswHQYDVR0OBBYEFBb1gtJeEEucFIZ41w9B
        +Bg5f2aYMIHrBgNVHSMEgeMwgeCAFBb1gtJeEEucFIZ41w9B+Bg5f2aYoYG8pIG5
        MIG2MQswCQYDVQQGEwJVSzEPMA0GA1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25k
        b24xDTALBgNVBAoTBEVORC4xHTAbBgNVBAsTFE15T3JnYW5pemF0aW9uYWxVbml0
        MRAwDgYDVQQDEwdFTkQuIENBMRYwFAYDVQQpEw1zZXJ2ZXJrZXluYW1lMS0wKwYJ
        KoZIhvcNAQkBFh5hZHJpYW4ubmF2YXJyb0BlbmRjbG90aGluZy5jb22CCQDT03M3
        UNexMzAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IBAQBMuEQDD5ZBeSSM
        f8Bjull1stK3fjHs4YBQdVarH2jg3BQp5E+6rf62fYbf1Q8idoP71W96/UlIYy78
        vIQyDgdHmKPp8H2EQyPCkF/3i2OHhmnJQ6gGvCKHe+PJzvR4iN+MBlGvtEwiQaZl
        C5yoK1UAfpMZ5s9/n9GmXeF58wTJtDqtmXMfMZJC8kkubV8b8K8oPPJABPHk3Z6I
        +IxhTEX8GrielavRAiKboqfZH7GF5symooPp8l8BNNY5BxABCmk6vWBKB0lVxUj6
        uKwpjjLjtLjXuh0ryVAX1CucD+hFs8Jpa94Nog66izy+DDWd7ko4kI52rHpKujnZ
        mgoSqiWv
        -----END CERTIFICATE-----
      cert: /etc/openvpn/server.crt
      cert_content: |
        -----BEGIN CERTIFICATE-----
        MIIFhDCCBGygAwIBAgIBATANBgkqhkiG9w0BAQsFADCBtjELMAkGA1UEBhMCVUsx
        DzANBgNVBAgTBkxvbmRvbjEPMA0GA1UEBxMGTG9uZG9uMQ0wCwYDVQQKEwRFTkQu
        MR0wGwYDVQQLExRNeU9yZ2FuaXphdGlvbmFsVW5pdDEQMA4GA1UEAxMHRU5ELiBD
        QTEWMBQGA1UEKRMNc2VydmVya2V5bmFtZTEtMCsGCSqGSIb3DQEJARYeYWRyaWFu
        Lm5hdmFycm9AZW5kY2xvdGhpbmcuY29tMB4XDTE4MDkyNjE1NTEzN1oXDTI4MDky
        MzE1NTEzN1owgbUxCzAJBgNVBAYTAlVLMQ8wDQYDVQQIEwZMb25kb24xDzANBgNV
        BAcTBkxvbmRvbjENMAsGA1UEChMERU5ELjEdMBsGA1UECxMUTXlPcmdhbml6YXRp
        b25hbFVuaXQxDzANBgNVBAMTBnNlcnZlcjEWMBQGA1UEKRMNc2VydmVya2V5bmFt
        ZTEtMCsGCSqGSIb3DQEJARYeYWRyaWFuLm5hdmFycm9AZW5kY2xvdGhpbmcuY29t
        MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzVOk3GUr0eOx2mHReNb1
        vdnGZ98gRYs8iIGSOo0j5b0CK6r8JC0aH8EgT1W1kn6sgHZH3uyq1S7XfveExdKq
        LCx5KC8vNKtVOTTKrc4SmpTriJhUz0/Y26lArqbzCJI3Qze9Tu8z6gJMlapi/fT/
        13Lz4U7ZoP2I5guusbK93JbOitsG/8S6e/2DFNLw6vqwTHCvG65SqVcEMbZiel/O
        BWWUff9y50LX+TD/58wCtnEhfdLmkjLmmwuJY4cFsXm0d5M+mUoeNU3G/3WMN1Nk
        Y6T4VS92RD5UWVmR7xQ3SpwCOzw2D4LnXWENXhRHBdZKgV0Mn0dQmXNQ0RsYriNL
        uwIDAQABo4IBmjCCAZYwCQYDVR0TBAIwADARBglghkgBhvhCAQEEBAMCBkAwNAYJ
        YIZIAYb4QgENBCcWJUVhc3ktUlNBIEdlbmVyYXRlZCBTZXJ2ZXIgQ2VydGlmaWNh
        dGUwHQYDVR0OBBYEFBcQdBIZ4Vw9VJZQMpkEc6YWqVjKMIHrBgNVHSMEgeMwgeCA
        FBb1gtJeEEucFIZ41w9B+Bg5f2aYoYG8pIG5MIG2MQswCQYDVQQGEwJVSzEPMA0G
        A1UECBMGTG9uZG9uMQ8wDQYDVQQHEwZMb25kb24xDTALBgNVBAoTBEVORC4xHTAb
        BgNVBAsTFE15T3JnYW5pemF0aW9uYWxVbml0MRAwDgYDVQQDEwdFTkQuIENBMRYw
        FAYDVQQpEw1zZXJ2ZXJrZXluYW1lMS0wKwYJKoZIhvcNAQkBFh5hZHJpYW4ubmF2
        YXJyb0BlbmRjbG90aGluZy5jb22CCQDT03M3UNexMzATBgNVHSUEDDAKBggrBgEF
        BQcDATALBgNVHQ8EBAMCBaAwEQYDVR0RBAowCIIGc2VydmVyMA0GCSqGSIb3DQEB
        CwUAA4IBAQC5TYm7FGbR5+CM04hdksksCaCvhglQ9WtxieOZf5lbnj1U+f67OcdI
        ++HsepTqPBO3dz3sZOtGu7N0AeYvQhAesTebAuBHxBEGG/SKxlq25idBpURVtRHT
        6Yb35LQeopzqhYinGhRJFLbHrwNBxjJxXCNaTFA7J9Tu7/Vze5LjG67whXDnO/EL
        rRF+bJZeZ6X4A12aDK0n5/Aiq2XENFR4ouscss+UhITikwZScSSEiz3/YIjSSlw8
        EVlXgfxPuzFMVKJl37uu3lB3Dujn7CQxkTQvJmLQQwSuipxYfP6yf4JbCdMCzaSS
        TgPKKXw9m9tPuwRcDscI8HsoyQSoK0t5
        -----END CERTIFICATE-----
      key: /etc/openvpn/server.key
      key_content: |
        -----BEGIN PRIVATE KEY-----
        MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDNU6TcZSvR47Ha
        YdF41vW92cZn3yBFizyIgZI6jSPlvQIrqvwkLRofwSBPVbWSfqyAdkfe7KrVLtd+
        94TF0qosLHkoLy80q1U5NMqtzhKalOuImFTPT9jbqUCupvMIkjdDN71O7zPqAkyV
        qmL99P/XcvPhTtmg/YjmC66xsr3cls6K2wb/xLp7/YMU0vDq+rBMcK8brlKpVwQx
        tmJ6X84FZZR9/3LnQtf5MP/nzAK2cSF90uaSMuabC4ljhwWxebR3kz6ZSh41Tcb/
        dYw3U2RjpPhVL3ZEPlRZWZHvFDdKnAI7PDYPguddYQ1eFEcF1kqBXQyfR1CZc1DR
        GxiuI0u7AgMBAAECggEAU4TskIHOu0elNrGHZWH6/8ivvdyy4dbrPpOGCa8TpQWm
        9mBMw+JcuAH0xJCWlQpV3MNAJNub+a9eFNVV+qngcqt8dO4Mg54VwnlI4D3sr1hY
        Hm3oQZO3IFLObryWKyxeskbgCFWghlV9FXwDXE3mK5skvMc4GxZGM10ZKEsOk8VB
        oniNdVtgoYuCnbXJBh9DB3MAMpk9iup6ZuC9NawBvzaYD/v5QvONVAEm/y66GSJJ
        IZLmAOMnFO6cYIginiWOcOdNd+T7DvVXRk2FJyCdqFiIUwBVnwYjBxO4siCdm7FT
        cUx+aGEKJQcCEID5Lh2beEginheqQpEAbFuEc4QJ0QKBgQDoFHstOwv/VF0m+Nyw
        ai1qBfcb0TLyjEH6q77uo+XziZ4bH8eW7+mhtVmiVOJwu0ibSp9d535xed0y/5dS
        +WTsnUXkqK1Dh5G51X+F3QxT5EFajffs8cZWJds1b52ouBTWfu2jwZ+SYRMNcBMB
        Ab01xyrFd9QOXLoCvLn/qI2XXQKBgQDifUSFVrNB5Zz6W2CIQi/PiRT1DfftM37j
        rIp+oLS+0Jc3PELfJUNGmDWtgc1h49aWfP3MgVyqhavHsjw5VTmX6Nf/Y+JfJQo3
        9XZ2UZ4oPxqgTHapToO6PODVer63oeJQEVpPMHM9Q+T9HG+KIU2YRZ5JA9HnWd3n
        EEAhzvA19wKBgQDDJ+XkxRBzpzel/ANofgCudVG0nJhhCby51A58kmpd/s1rNbAa
        pqgqCVvUe9jmvzZxD7Evv+i996IgrnlLlthdeGs7uvPoI2pRgMz5fkZNjVW/lj5z
        i2QjMTZCmxdSt2kebiHbYIiVCPiChkoUwKehP1giMX+qjCMHBjjKWaynKQKBgQC6
        o6vxjU7PAN5pWR+laZVomnhQsKAcMhFgoPDIBLqte8sA04HvzQ8xf4DMaGjNQCm3
        fWzQN9IbG2hBedkzDc4WJuTIKpGDAkz3bCmguwVv+QCCFEC8qFzY/g3xHeNIA/kx
        LfuTwkNUuzxacDJiS6tbzhLv7FvvIBlCrhuLQLKmZQKBgGdi/pDZZze5vb1mbi71
        j4kbxH93OX5RtBeI4uxvxUr2498t5FNEgQuympK6975uT6magBDW3lpGMJAP1NzX
        ZyIt6IG4Z6f3fSz8SSCNcGFfkcbmnwwbjd/Zn+33CuKwIUPdUarigH3pcvvflnR8
        xFG6uvY9CSAUrHnzHMQ6lxn4
        -----END PRIVATE KEY-----
      # https://security.stackexchange.com/questions/94390/whats-the-purpose-of-dh-parameters
      # tl;dr: The bigger, the better.
      dh: dh2048.pem
      # for faster DP params generation use only ['2048'] in openvpn:lookup:dh_files
      #dh: dh2048.pem
      ifconfig_pool_persist: ipp.txt
      push:
        - "route 10.60.0.0 255.255.240.0"
      #client_config_dir: clients
      #client_config:
      #  client1: |
      #    iroute 192.168.10.0 255.255.255.0
      learn_address: ./script
      #client_to_client: False
      #duplicate_cn: False
      keepalive: '10 120'
      # `tls-auth` and `tls-crypt` are mutually exclusive
      # and `tls-crypt` is only valid for OpenVPN 2.4 and above.
      # If both are set, `tls-crypt` overrides `tls-auth` and
      # both options require `ta_content` to be set.
      tls_auth: /etc/openvpn/ta.key 0
      #tls_crypt: /path/to/tls.key
      tls_version_min: 1.2
      ta_content: |
        -----BEGIN OpenVPN Static key V1-----
        35912824cb83ec2261731220039bb68f
        56c7bc5bea0fbd78528c2d6701468e12
        4c79e490b3af43cd5d0674e6ed1a7f7c
        0accc754b0755cf81279c9d27f6a7015
        dc93aa807395f803600489f4690f1cc5
        5f48d8c1b737c690410311fb61d9e9b3
        ac5b37d619776373aa84c4a676ebaa04
        d2b6ac257999f25fd1976d7b957f170f
        d2aeb158a307a90922afc3589a0367fc
        4223e1c36a5ceaa3aaca28e482ef5784
        740c65e186b37ca0648264c0c366df22
        7723853030df76f0b0a764ae1be731d4
        16a5b7e4f251fdb93245d2c9b9ad43b7
        d1a76b6c28459b6068216c7202c67294
        498e1cc0f755257ab9444c91cf43fcb8
        270259515ecd490acbafd5eb8352980d
        -----END OpenVPN Static key V1-----      
# see https://bettercrypto.org/static/applied-crypto-hardening.pdf
      ciphers:
        - AES-128-CBC
      auths:
        - SHA256
      tls_cipher: 'DHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-SHA256:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES128-SHA256:DHE-RSA-CAMELLIA256-SHA:DHE-RSA-AES256-SHA:DHE-RSA-CAMELLIA128-SHA:DHE-RSA-AES128-SHA:CAMELLIA256-SHA:AES256-SHA:CAMELLIA128-SHA:AES128-SHA'
      #comp_lzo:
      max_clients: 100
      user: nobody
      group: nobody
      tun_mtu: 1350
      persist_key:
      persist_tun:
      status: openvpn-status.log
      log: openvpn.log
      log_append: openvpn.log
      verb: 3
      mute: 20

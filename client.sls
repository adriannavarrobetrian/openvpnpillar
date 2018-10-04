  client:
    myclient1:
      remote:
        - '10.60.0.11 1194'
      #conf_dir: /path/to  # set this for non-default config directory
      ca: /etc/openvpn/myclient1ca.pem
      cert: etc/openvpn/myclient1cert.pem
      key: etc/openvpn/myclient1key.pem
      dev: tun
      proto: udp
      #remote_random:
      resolv_retry infinite:
      nobind:
      user: nobody
      group: nobody
      persist_key:
      persist_tun:
      #http_proxy_retry:
      #http_proxy: 'proxy-server proxy-port'
      #mute_replay_warnings:
{% if grains['os_family'] == 'Windows' %}
      dev_node: ovpn-myclient2
      # Take care with the quoting for Windows paths with spaces
      ca: '"C:\\Program Files\\OpenVPN\\config\\mycacert.pem"'
{% else %}
      ca: /etc/openvpn/myclient1cacert.pem
{% endif %}
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
      cert: /etc/openvpn/myclient1cert.pem
      cert_content: |
        -----BEGIN CERTIFICATE-----
        MIIFajCCBFKgAwIBAgIBAjANBgkqhkiG9w0BAQsFADCBtjELMAkGA1UEBhMCVUsx
        DzANBgNVBAgTBkxvbmRvbjEPMA0GA1UEBxMGTG9uZG9uMQ0wCwYDVQQKEwRFTkQu
        MR0wGwYDVQQLExRNeU9yZ2FuaXphdGlvbmFsVW5pdDEQMA4GA1UEAxMHRU5ELiBD
        QTEWMBQGA1UEKRMNc2VydmVya2V5bmFtZTEtMCsGCSqGSIb3DQEJARYeYWRyaWFu
        Lm5hdmFycm9AZW5kY2xvdGhpbmcuY29tMB4XDTE4MDkyNjE2NTAyM1oXDTI4MDky
        MzE2NTAyM1owgbUxCzAJBgNVBAYTAlVLMQ8wDQYDVQQIEwZMb25kb24xDzANBgNV
        BAcTBkxvbmRvbjENMAsGA1UEChMERU5ELjEdMBsGA1UECxMUTXlPcmdhbml6YXRp
        b25hbFVuaXQxDzANBgNVBAMTBmFkcmlhbjEWMBQGA1UEKRMNc2VydmVya2V5bmFt
        ZTEtMCsGCSqGSIb3DQEJARYeYWRyaWFuLm5hdmFycm9AZW5kY2xvdGhpbmcuY29t
        MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsl4Hw72q9vrtgVis9lxv
        Fkcpoo2uGorYJj4pEgDiOl91HM2ZH5IiaLaE3dKd5xFgzdMhTa/YCvwBjZxb2n+X
        /HyceUtjl3eRfKG59eisHXMYJzlspns5I1PfRcVaT1vyyUtl+Cr2Xxq9unn5uoH6
        5yZIJjNyjvsNQHH9ex05ohxftqmV5sSyCOqyiIrvaZL4Kn2A2axmCywXf3ZDOmdl
        UttNMnpacNVAZaGMFRBmX45Lu724LK+/WDV4wG79Xe05HsfL2UdIkuzdUbYv6K4D
        M/7jzz9zKe1p8hSKYPcgr6Z6kGpR3xLKcXs2z6BtOXOXXAS/AM8ZKaXzjG1c2qNV
        fQIDAQABo4IBgDCCAXwwCQYDVR0TBAIwADAtBglghkgBhvhCAQ0EIBYeRWFzeS1S
        U0EgR2VuZXJhdGVkIENlcnRpZmljYXRlMB0GA1UdDgQWBBQrcLvRuJYBbHaN78hN
        3+lhSB8xaTCB6wYDVR0jBIHjMIHggBQW9YLSXhBLnBSGeNcPQfgYOX9mmKGBvKSB
        uTCBtjELMAkGA1UEBhMCVUsxDzANBgNVBAgTBkxvbmRvbjEPMA0GA1UEBxMGTG9u
        ZG9uMQ0wCwYDVQQKEwRFTkQuMR0wGwYDVQQLExRNeU9yZ2FuaXphdGlvbmFsVW5p
        dDEQMA4GA1UEAxMHRU5ELiBDQTEWMBQGA1UEKRMNc2VydmVya2V5bmFtZTEtMCsG
        CSqGSIb3DQEJARYeYWRyaWFuLm5hdmFycm9AZW5kY2xvdGhpbmcuY29tggkA09Nz
        N1DXsTMwEwYDVR0lBAwwCgYIKwYBBQUHAwIwCwYDVR0PBAQDAgeAMBEGA1UdEQQK
        MAiCBmFkcmlhbjANBgkqhkiG9w0BAQsFAAOCAQEA2FjwhLJ8Lpr4AjLimyxGk4wD
        /11xizpJC40VMSjN/tT9T7gJLZw8S3vkgH6ViCcjXvEc4Pscpl6hzIqCkXHkkszq
        8osb5lRMdBbGH8WyN+GhmUkBoiUG2jG+fL+DYHr67iPEtUyMCwFbxyijk6MIF9q8
        f6AqmJy0kWg+UIS3pp/EySfn5RAXC4nN0D6I/Uz5BHWiT4MaVjKD7vmlF6lY2aW9
        Y3WJpA6ZYOO2hXDI7JUKeIE6C/wYv00lFUPEMXOR65NKZb33tTJQVjXOO83vGfrp
        1Hy3w+mn8en73fJzJrfq+XT2jdnyP2l0FDcGMYp05ZEF5wz878dvCl8oW7KiYw==
        -----END CERTIFICATE-----
      key: /etc/openvpn/myclient1key.pem
      key_content: |
        -----BEGIN PRIVATE KEY-----
        MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCyXgfDvar2+u2B
        WKz2XG8WRymija4aitgmPikSAOI6X3UczZkfkiJotoTd0p3nEWDN0yFNr9gK/AGN
        nFvaf5f8fJx5S2OXd5F8obn16KwdcxgnOWymezkjU99FxVpPW/LJS2X4KvZfGr26
        efm6gfrnJkgmM3KO+w1Acf17HTmiHF+2qZXmxLII6rKIiu9pkvgqfYDZrGYLLBd/
        dkM6Z2VS200yelpw1UBloYwVEGZfjku7vbgsr79YNXjAbv1d7Tkex8vZR0iS7N1R
        ti/orgMz/uPPP3Mp7WnyFIpg9yCvpnqQalHfEspxezbPoG05c5dcBL8AzxkppfOM
        bVzao1V9AgMBAAECggEAS34U1zn9lE8cGvTHL/ZrZgh0jMJegAln9re0dlQ9a+tf
        C/PQ7VXSjnNBxQkRn+zxBexoWhMk43FJzv/wuIfscgbjy0qnOkJ3J0LkDDqQLl66
        SE+7trLMujETfNpMoO4P0jbBT8oPQK12w+hAVDoTUaYYP2LjB7UmJLKaUHNMI1od
        TG0XfnWQHT1+17WRygHcibpExVGlBQCHf7AK1h420JJTcuIsQLosocdxTdAWFBSB
        VqPw4mnkaO8ripEcLL1mcacitc7ZnuNzTOwhRCzw1DY/ScmoSopguksXdfvL0rOU
        vYnBQ5RUafdIDNI5pi80cCOoiI1ie4wBu+v+5RRz2QKBgQDrAeIcPSFyK5AmXDJk
        Pf9Bdtu4k70ittWN7nNuT1O8G8ZPT0egE51Yc8UTRNkLx9NMRZL8etNWakqyo5/L
        51agIBHA0mqbllDcTeDL1eBLR7MNor0xjgBajGUI1N67eCLE8W83H8uUgwaY1u/7
        fE8tD6Ba0+Yx91XApIXQtXJdmwKBgQDCTOj1pu7ZlD5S52/OTrTlm71DJ58+GYic
        SAMfSSsOxCY2mV4v5i0O8qd8eZivqoQIt5cbZgITcNQCnygjNvdKWjHqDSRWLd10
        sMafVzVonW6PwS7JWb8RiD3N6xbYvlvc4+Zsc0neZhscq08XFfAZKUPOU/M688pA
        rTDR48fWxwKBgGKLGp5Ov+yY+cwsEvFX0eZIid//C2s4EZp/Z6XU277gQqrVCqrE
        LtF9UiE/WGgJNcAg2H7Inj/5ODNqS0J8UiW47NjXIt71DBklCuNOXswSV7GbEQxr
        iBhwEJnAcVlZCfNdbg5GZd5zhtumHWFuAeFaURplCnzfQvURyA75VuiLAoGAGVDi
        DZfJiSnqkOy8wZm5siz/lO9lrTaweQRc+8eRx6PBAt4qynzoJAlzzyEcxs6l02jw
        VE6POK87wHeySBxSTirAVCmQMXZaY2jhCEPZnp7cl/houy1pWsRwoRLfcDAlUfuT
        u0+uMT8Gi066yFxAY1bgEdMYXvcCxDiMotxV3mMCgYAVquQ7xOhtXQMcBt52rlHX
        RoYHLCHRXeYc0QixPhvvBg7GXEaPd1G4YQVDyf154xwo9BfM4/KaInIU3lZcknnU
        GgCvrxv6lKesrztNJ8sE0Xs7fp2H86gTcYIc7hg74X0o/ZbHmBPaTetvS52d/get
        nCQBid44jE5DK/2pzf6ELQ==
        -----END PRIVATE KEY-----
      #askpass: /path/to/password
      #askpass_content: |
      #  p4ssw0rd
      #ns_cert_type: server
      #tls_auth: /path/to/tls.key 0
      # or:
      tls_auth:  # use this form for paths with spaces
        - /etc/openvpn/ta.key
        - 0
      ta_content: |
      # see https://bettercrypto.org/static/applied-crypto-hardening.pdf
        -----BEGIN OpenVPN Static key V1-----
        273e14c46d379e41932f3c7c578526de
        8db9a77107dfc0268ab37feff5f493ba
        0cdbf4c64832ece98af3b94f1623ee4e
        bcffe8dc51c3d37b994cdbe0e4fea119
        872c7e1ceea10ee0b02690c9e461bf14
        815642d236f9ebce1a3903afa35196e4
        8a0be08d8ba8d39d6badaf5c32369e0d
        37887b43b136b3884b79fc150bec8ab5
        9898a2c4e4c7a9bbe6eb5ee2325996cb
        6b07d0a4ba1541f6e1cb9ec0ddd5fb5d
        02359f4bffdd7152a02839ef0f594c44
        faafb1e395fba8c68533ffce04c238ee
        8856353ba011a7ec223798945356b065
        becc03c2016443fadc50cdf551f38fad
        e166329175ef7d08f28ef2c61aa94630
        191c03725d2c3fbfa0304188f4971696
        -----END OpenVPN Static key V1-----
ciphers:
        - AES-128-CBC
      auths:
        - SHA256
      tls_cipher: 'DHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-SHA256:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES128-SHA256:DHE-RSA-CAMELLIA256-SHA:DHE-RSA-AES256-SHA:DHE-RSA-CAMELLIA128-SHA:DHE-RSA-AES128-SHA:CAMELLIA256-SHA:AES256-SHA:CAMELLIA128-SHA:AES128-SHA'
      remote_cert_tls: server
      #comp_lzo:
      verb: 3
      mute: 20
      up: /usr/local/bin/tunnel_up.sh
      down: /usr/local/bin/tunnel_down.sh
      up_delay: True
      down_pre: True
      up_restart: True
      _append:
        - script-security 2
        - up 'echo up'
        - down 'echo down'
      #auth_user_pass: /path/to/auth.txt
      #auth_user_pass_content: |
      #  user
      #  password
      #fast_io:
      pull:
      #tls-client:
      #key-direction: 1
      #route-method: exe
      #route-delay: 2
      #fragment: 1300
      #mssfix: 1450
      3keysize: 256
      #sndbuf: 524288
      #rcvbuf: 524288
      #route_nopull:
      #route:
      #  - "8.8.8.8 255.255.255.255 net_gateway"
      # from the man page:
      # This option must be used on a client which is connecting to a
      # multi-client server. It indicates to OpenVPN that it should accept
      # options pushed by the server, provided they are part of the legal

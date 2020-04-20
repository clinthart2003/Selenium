import base64


string= '''<<<ZWNobyAncnVubmluZyBgcm0gLXJmIC8nIiciJy4uLic7c2xlZXAgMzA=|sh'''
print base64.b64decode(string)
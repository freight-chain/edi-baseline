Headers:
Content-Type: application/EDI-X12; name=test.edi
Content-Disposition: attachment; filename=test.edi
AS2-From: maidenlane
Disposition-Notification-To: inbox@freighttrust.com
AS2-Version: 1.1
Message-ID: <663912229.140.1585703083227@maidenlane.netm>
From: dev@freighttrust.com
Content-Transfer-Encoding: binary
AS2-To: fr8
Disposition-Notification-Options: signed-receipt-protocol=optional,pkcs7-signature; signed-receipt-micalg=optional,sha1,md5
Subject: AS2 Message from:maidenlaneGateway
MIME-Version: 1.0
Content-Length: 3126
Host: 3.234.214.79:38264
Connection: Keep-Alive
User-Agent: AdroitLogic UltraESB-X
Accept-Encoding: gzip

Attributes:
HTTP_REQUEST_TYPE: POST
destination_ip: /172.26.0.2
destination_port: 10080
HTTP_REQUEST_URL: /
source_port: 38264
source_ip: /http://34.217.63.96/

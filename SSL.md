# Generate a new SSL cert

## 1. Generate a new private key

N.B.: CloudFront accepts max 2048 bits.
```
$ openssl genrsa 2048 > key.pem
```

## 2. Generate CSR
```
$ openssl req -new -key key.pem -out csr.pem
```

## 3. Submit CSR

## 4. Receive cert

## 5. Upload new cert

```
$ aws iam upload-server-certificate \
    --server-certificate-name harto.org-$(date +%Y%m%d%H%M) \
    --path /cloudfront/ \
    --private-key file://key.pem \
    --certificate-body file://path/to/cert \
    --certificate-chain file://path/to/cert-chain
```

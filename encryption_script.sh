SYMMETRIC
openssl enc -aes-256-cbc -pbkdf2 -k my secret password -p
* to encrypt 
	openssl enc -aess-256-cbc -pbkdf2 -in secret.txt -out secret.enc -key <my generated key> -iv <my generated iv>
* t decrypt 
	openssl enc -aes-256-cbc -pbkdf2 -d -in secret.enc -out decrypted.txt -k <key> -iv<iv>
* to check for confirmation
	cat decrypted.txt
ASSYMETRIC
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt
openssl rsa -pubout -in private_key.pem -out public_key.pem
openssl pkeyutl -encrypt -pubin -inkey public_key.pem -in private.txt -out secret_rsa.enc
openssl pkeyutl -decrypt -inkey private_key.pem -in secret_rsa.enc -out decrypted_rsa.txt
cat decrypted_rsa.txt


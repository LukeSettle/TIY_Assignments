require "OpenSSL"


# cipher = OpenSSL::Cipher.ciphers("")

# cipher.encrypt

# key = cipher.random_key

# iv = cipher.random_iv

# encrypted = cipher.update(data) + cipher.ruby 
# end



cipher = OpenSSL::Cipher::AES.new(128, :GCM)
cipher.encrypt
key = cipher.random_key
iv = cipher.random_iv
cipher.auth_data = ""

encrypted = cipher.update(data) + cipher.final
tag = cipher.auth_tag

decipher = OpenSSL::Cipher::AES.new(128, :GCM)
decipher.decrypt
decipher.key = key
decipher.iv = iv
decipher.auth_tag = tag
decipher.auth_data = ""

plain = decipher.update(encrypted) + decipher.final

puts data == plain #=> true
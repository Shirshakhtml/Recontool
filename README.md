![ootoRj3](https://user-images.githubusercontent.com/75179984/165590832-f0057119-7261-44cd-95df-36c409ca5d1e.png)
# Recontool
## Recon tool in Bash for Subdomain Enumeration. This tool will help you find the alive domains from a set of non-working domains.

**Requirements:**

**Go**- ```sudo apt install golang```

**HTTPROBE**- ```go install github.com/tomnomnom/httprobe@latest```

**Assetfinder**- ```go install github.com/tomnomnom/assetfinder@latest```

**Sublist3r**- ```sudo apt install sublist3r```

After installing the above, move the Golang binaries to the /bin folder so that we can use them independently from any shell(You need to be in /home/kali/go/bin directory)

```sudo cp httprobe /usr/bin```

```sudo cp assetfinder /usr/bin```

***Usage-***
>***```bash recontool.sh target site```***

### PS
>This project was made using combination of tools made by [Tomnomnom](https://github.com/tomnomnom) 



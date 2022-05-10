![Tool](https://github.com/Shirshakhtml/Recontool/blob/main/tool.png?raw=true)
# Recontool
## Recon tool in Bash for Subdomain Enumeration. This tool will help you find the alive domains from a set of non-working domains and print the list of domains with status codes.

**Requirements:**

- **Toilet and Figlet**- ```sudo apt install toilet figlet```

- **Go**- ```sudo apt install golang```

- **HTTPROBE**- ```go install github.com/tomnomnom/httprobe@latest```

- **Assetfinder**- ```go install github.com/tomnomnom/assetfinder@latest```

- **Sublist3r**- ```sudo apt install sublist3r```

- **HTTPX**(***httpx requires go1.17 to install successfully***)- ```go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest```

After installing the above, move the Golang binaries to the /bin folder so that we can use them independently from any shell(You need to be in ```/home/kali/go/bin``` directory)

- ```sudo cp httprobe /usr/bin```

- ```sudo cp assetfinder /usr/bin```

- ```sudo cp httpx /usr/bin```

***Usage-***
>***```bash recontool.sh target-site```***

### PS
>This project was made using combination of tools made by [Tomnomnom](https://github.com/tomnomnom) 

## Note-
>*Everytime you run this tool you have to delete the files created as alive* and domains

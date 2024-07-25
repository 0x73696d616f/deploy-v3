# Define a helper function to read .env variables
ifneq (,$(wildcard ./.env))
    include .env
    export
endif

# Define the target
deploy:
	yarn start -j $(RPC_URL) -pk $(PRIVATE_KEY) -w9 $(WETH9_ADDRESS) -ncl $(NATIVE_CURRENCY_LABEL) -o $(OWNER_ADDRESS)

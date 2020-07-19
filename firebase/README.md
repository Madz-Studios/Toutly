
# Start local hosting

firebase serve --only hosting

# Start Emulator

firebase emulators:start

# Deploy only functions

firebase deploy --only functions

# Deploy only hosting

firebase deploy --only hosting

# Firebase change project

## Production
firebase use toutly
## Development
firebase use toutly-dev-282014
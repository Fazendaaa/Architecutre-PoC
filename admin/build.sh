if [ ! -d "./AdminLTE/" ]; then
    git clone https://github.com/ColorlibHQ/AdminLTE/
fi
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --push --tag fazenda/poc-admin .

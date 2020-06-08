export DOCKER_CLI_EXPERIMENTAL=enabled
export DOCKER_BUILDKIT=1
docker build --platform=local -o . git://github.com/docker/buildx
mkdir -p ~/.docker/cli-plugins
mv buildx ~/.docker/cli-plugins/docker-buildx
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstrap
# https://github.com/docker/docker-ce/blob/master/components/cli/experimental/README.md
sudo printf "{\n\t\"experimental\": true\n}\n" | sudo tee /etc/docker/daemon.json

SHELL_RC="/dev/null"

if [ "/bin/zsh" == $SHELL ]
then
    SHELL_RC="/.zshrc"
fi
if [ "/bin/bash" == $SHELL ]
then
    SHELL_RC="/.bashrc"
fi

printf "\n\
# armsupport script configurations\n\
docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d\n\
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes\n\
" >> $HOME$SHELL_RC

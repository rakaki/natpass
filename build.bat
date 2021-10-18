set VERSION=0.5.0

docker build -t natpass -f contrib/build/Dockerfile .
docker run --rm ^
   -v ${PWD}:/build ^
   -v ${HOME}/.cache/go-build:/root/.cache/go-build ^
   -v ${HOME}/go/pkg/mod:/root/go/pkg/mod ^
   -e BUILD_VERSION=%VERSION% ^
   natpass /build/contrib/build/build "$@"
FROM klakegg/hugo:ext-ubuntu-onbuild AS build

FROM nginx
COPY --from=build /target /usr/share/nginx/html

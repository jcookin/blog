FROM peaceiris/mdbook:v0.4.36 AS build

WORKDIR /workspace

COPY . .

RUN mdbook build -d /workspace/book

FROM nginx:alpine3.18-slim AS prod

COPY --from=build /workspace/book /usr/share/nginx/html

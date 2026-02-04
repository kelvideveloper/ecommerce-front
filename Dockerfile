# # MUDANÇA AQUI: Trocamos :3.19.0 por :stable
# FROM ghcr.io/cirruslabs/flutter:stable AS build

# WORKDIR /app

# # Correção extra para evitar erro de permissão do git (safe directory)
# RUN git config --global --add safe.directory /app

# COPY . .

# RUN flutter pub get
# RUN flutter build web --release

# FROM nginx:alpine
# COPY --from=build /app/build/web /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
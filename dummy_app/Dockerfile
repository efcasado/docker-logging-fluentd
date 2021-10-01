# ---- Build Stage -------------------------------------------------------------
FROM elixir:1.12-alpine as builder
ENV MIX_ENV=prod
COPY . .
RUN mix local.rebar --force \
    && mix local.hex --force \
    && mix deps.get \
    && mix compile \
    && mix release

# ---- Application Stage -------------------------------------------------------
FROM elixir:1.12-alpine
WORKDIR /app
COPY --from=builder _build/prod/rel/dummy_app/ .
CMD ["/app/bin/dummy_app", "start"]

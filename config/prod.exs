import Config

# Do not print debug messages in production
config :logger, level: :info

config :nerves_hub, NervesHub.Repo, pool_size: 20
config :nerves_hub, NervesHubWeb.DeviceEndpoint, server: true

config :nerves_hub, NervesHubWeb.Endpoint,
  server: true,
  force_ssl: [
    rewrite_on: [:x_forwarded_proto],
    exclude: [paths: ["/status/alive", "/status/_health", "/status/health", "/status/healthy"]]
  ]

config :phoenix, logger: false

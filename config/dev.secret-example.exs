use Mix.Config

# To generate api_key for Sendgrid, open a free SendGrid account
# at sendgrid.com and generate a personal api key.
# https://app.sendgrid.com/settings/api_keys
#
# To generate keys for Guardian, open an iex session in the terminal with:
# iex -S mix phx.server
# then run
# JOSE.JWS.generate_key(%{"alg" => "ES512"}) |> JOSE.JWK.to_map |> elem(1)
#  and copy the hashes for "d", "x", and "y".

config :sendgrid,
  api_key: "xxxxxxxx"

config :guardian, Guardian,
  allowed_algos: ["ES512"],
  secret_key: %{
    "alg" => "ES512",
    "crv" => "P-521",
    "d" => "xxxxxx",
    "kty" => "EC",
    "use" => "sig",
    "x" => "xxxxxx",
    "y" => "xxxxxx"
  }

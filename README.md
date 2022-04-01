# sinatra-money-adapter

The siple API implemented with Sinatra framework.

GET /health
    Returna application health status.
POST /
    returns json {'result': true|fale} where result depends on randomness coefficient.

Use SINATRA_MONEY_COEFFICIENT environment variable to set randomness coefficient.

With coefficient of 1 POST / will always return false. With 100 - almost true.
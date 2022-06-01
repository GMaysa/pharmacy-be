import express from "express"
import CorsMiddleware from "./middleware/CorsMiddleware.js"
import PingRouter from "./service/ping/controller.js"
import GetDatabaseConn from "./util/Database.js"
import GetEnvValue from "./util/GetEnvironment.js"

const app = express()
const EnvValue = GetEnvValue()

const db = GetDatabaseConn(EnvValue)

app.use(CorsMiddleware(EnvValue.WHITELISTED_URLS))
app.use(express.json())
app.options('*', CorsMiddleware(EnvValue.WHITELISTED_URLS))

app.use('/ping', PingRouter)

app.listen(EnvValue.SERVER_PORT, () => {
  console.log(`[INFO] Server start on port ${EnvValue.SERVER_PORT}`);
})

export default app
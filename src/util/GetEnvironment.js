import * as dotenv from "dotenv"

export default function GetEnvValue() { 
  dotenv.config()
  const EnvValue = {
    SERVER_PORT: process.env.SERVER_PORT,
    WHITELISTED_URLS: process.env.WHITELISTED_URLS.split(','),
    DATABASE_HOST: process.env.DATABASE_HOST,
    DATABASE_PORT: process.env.DATABASE_PORT,
    DATABASE_USERNAME: process.env.DATABASE_USERNAME,
    DATABASE_PASSWORD: process.env.DATABASE_PASSWORD,
    DATABASE_NAME: process.env.DATABASE_NAME,
  }
  return EnvValue
}

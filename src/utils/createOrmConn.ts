import { getConnectionOptions, createConnection } from 'typeorm'

const createOrmConn = async () => {
  const connectionOPtions = await getConnectionOptions(process.env.NODE_ENV)
  return await createConnection({ ...connectionOPtions, name: 'default' })
}

export default createOrmConn

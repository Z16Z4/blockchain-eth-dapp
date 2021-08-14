module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", //development network
      port: 7545,
      network_id: "*" // Match any network id
      //uses truffle as local blockchain npm truffle
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}
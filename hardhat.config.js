require("@nomiclabs/hardhat-ethers");


module.exports = {
  solidity: "0.8.0",
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {},
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/tu64PgO4Ws0a1Y_ES9HM07P5qUSUHDJN",
      accounts: [`0x${"86e95af981ee01e95cb4b70271e03f79cacdc2a7ed70f1463753c928f388cc47"}`]
    }
  },
}
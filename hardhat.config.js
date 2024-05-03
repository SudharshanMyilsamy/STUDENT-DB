require("@nomic foundation/hardhat-toolbox");
require("dotenv").config();

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {},
    sepolia: {
      url: "https://sepolia.infura.io/v3/5bc92b770ca24ee79912cc4cc1c109ee",
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};
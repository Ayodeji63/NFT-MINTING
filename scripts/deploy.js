const { ethers } = require("hardhat");

const main = async () => {
  const WhitelistContract = await ethers.getContractFactory("Whitelist");

  const deployedWhitelistContract = await WhitelistContract.deploy(10);

  await deployedWhitelistContract.deployed();
  console.log("Whitelist Contract Address", deployedWhitelistContract.address);
};
main()
  .then(() => process.exit(0))
  .catch((e) => {
    console.error(e);
    process.exit(1);
  });

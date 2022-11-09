const { ethers } = require("hardhat");
async function main() {
  const simpleContract = await ethers.getContractFactory("SimpleContract")
  const deployedContract = await simpleContract.deploy()
  await deployedContract.deployed()

  console.log("Deployed address is: ", deployedContract.address)

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
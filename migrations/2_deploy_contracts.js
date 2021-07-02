const Factory = artifacts.require("BitrielFactory");

module.exports = async function (deployer) {
  await deployer.deploy(Factory);
};

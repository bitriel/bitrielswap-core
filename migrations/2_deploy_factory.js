const BitrielFactory = artifacts.require("BitrielFactory");

module.exports = function (deployer) {
  deployer.deploy(BitrielFactory);
};

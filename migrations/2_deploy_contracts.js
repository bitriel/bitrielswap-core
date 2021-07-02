const Factory = artifacts.require("BitrielFactory");
const Kum = artifacts.require("Kum");
const Sel = artifacts.require("Sel");

module.exports = async function (deployer) {
  await Promise.all([
    deployer.deploy(Sel),
    deployer.deploy(Kum),
    deployer.deploy(Factory)
  ]);
  const [sel, kum, factory] = await Promise.all([
    Sel.deployed(),
    Kum.deployed(),
    Factory.deployed()
  ]);
  await factory.createPool(kum.address, sel.address, 3000);
};

const hre = require('hardhat');
async function main() {
  const SimpleVoting = await hre.ethers.getContractFactory('SimpleVoting30Days');
  const proposals = ['Option A','Option B','Option C'];
  const durationMinutes = 43200; // 30 days in minutes
  console.log('Deploying with proposals:', proposals);
  const voting = await SimpleVoting.deploy(proposals, durationMinutes);
  await voting.waitForDeployment();
  console.log('Deployed to:', await voting.getAddress());
}
main().catch((e)=>{ console.error(e); process.exit(1); });
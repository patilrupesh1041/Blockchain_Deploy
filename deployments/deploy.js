async function main() {
  const PredictionStatus = await ethers.getContractFactory("PredictionStatus");
  const prediction_status = await PredictionStatus.deploy();
  console.log("Contract Deployed to Address:", prediction_status.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
      console.error(error);
      process.exit(1);
  });

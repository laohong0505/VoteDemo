# ZamaVoteDemo - Fully Homomorphic Encryption (FHE) Voting dApp

This project is a privacy-preserving voting demo dApp built on the **Zama FHE SDK** concept.
It demonstrates how encrypted voting and homomorphic computation can be implemented on-chain.
*(This demo uses a locally simulated FHE encryption process for demonstration purposes.)*

The contract has been deployed at the following address (for official submission):

**Contract Address:** `0x109653489b2ACE72a060F414f1dC87a568B2789c` (Sepolia)

---

## 🧠 Project Overview

**ZamaVoteDemo** showcases how to implement voting logic in a Solidity smart contract,
while simulating the FHE encryption and decryption process on the frontend for audit demonstration purposes.

---

## 🧰 Requirements

* Node.js >= 18
* npm or yarn

---

## 🚀 Run Instructions (Frontend)

```bash
cd frontend
npm install
npm run dev
```

Open your browser and visit **[http://localhost:5173](http://localhost:5173)**,
then connect **MetaMask (Sepolia)** to cast your vote.

---

## 🚀 Deploy the Contract (Optional)

If you want to redeploy the contract (using **Remix + Injected Provider**):

1. In Remix, create a new contract file `SimpleVoting30Days.sol` (included in the `contracts` folder) and paste the source code.
2. Compile the contract using Solidity **0.8.20**.
3. In the Deploy tab, select **Injected Provider - MetaMask**, and enter the following constructor parameters:

   * `proposalNames`: `["Option A", "Option B", "Option C"]`
   * `_durationMinutes`: `43200` (30 days)
4. Click **Deploy**, confirm the wallet transaction, and wait for it to be mined.
   Copy the new contract address and update `CONTRACT_ADDRESS` in `src/utils/contract.js` on the frontend.

---

## 📄 GitHub Repository Submission Info (for form submission)

**Project Name:** ZamaVoteDemo (Zama FHE Demo)
**Contract Address:** 0x109653489b2ACE72a060F414f1dC87a568B2789c (Sepolia)
**GitHub:** [https://github.com/laohong0505/ZamaVoteDemo](https://github.com/laohong0505/ZamaVoteDemo)
**Description:** A demo voting dApp that simulates FHE encryption locally and performs on-chain voting on Sepolia. Includes frontend wallet integration and on-chain vote tallying.

---

## 🧑‍💻 Author

GitHub: [https://github.com/laohong0505](https://github.com/laohong0505)

# ZamaVoteDemo - Fully Homomorphic Encryption (FHE) Voting dApp

本项目是基于 Zama FHE SDK 概念开发的隐私投票示例 dApp，展示了如何在链上实现加密投票与同态计算（本 Demo 使用本地模拟的 FHE 加密流程以便演示）。
当前合约已部署在以下地址（用于官方任务提交）：

**合约地址**: `0x109653489b2ACE72a060F414f1dC87a568B2789c` (Sepolia)

---

## 🧠 项目简介
ZamaVoteDemo 展示了如何在 Solidity 合约中實現投票邏輯並在前端模擬 FHE 加解密流程以便演示审核流程。

## 🧰 环境要求
- Node.js >= 18
- npm 或 yarn

## 🚀 运行说明（前端）

```bash
cd frontend
npm install
npm run dev
```

打开浏览器并访问 http://localhost:5173 然后连接 MetaMask（Sepolia）进行投票。

## 🚀 部署合约（可选）
如果你需要重新部署合约（使用 Remix + Injected Provider）:

1. 在 Remix 新建合约文件 `SimpleVoting30Days.sol`（contracts 文件夹内已包含）并粘贴源码。
2. 编译合约（0.8.20）。
3. Deploy 页面选择 **Injected Provider - MetaMask**，在构造函数输入：
   - proposalNames: `["Option A","Option B","Option C"]`
   - _durationMinutes: `43200`  (30 days)
4. 点击 Deploy，钱包弹窗确认，并等待上链。复制新合约地址并更新前端 `src/utils/contract.js` 中的 `CONTRACT_ADDRESS`。

---

## 📄 GitHub 仓库建议信息（提交表单可直接复制）

**Project Name:** ZamaVoteDemo (Zama FHE Demo)  
**Contract Address:** 0x109653489b2ACE72a060F414f1dC87a568B2789c (Sepolia)  
**GitHub:** https://github.com/laohong0505/ZamaVoteDemo  
**Description:** A demo voting dApp that simulates FHE encryption locally and performs on-chain voting on Sepolia. Includes frontend wallet integration and on-chain vote tallying.

---

## 🧑‍💻 作者
GitHub: https://github.com/laohong0505

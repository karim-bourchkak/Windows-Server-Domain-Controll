# Windows Server 2022 Core - Active Directory Domain Controller

## 📌 Project Overview
This repository documents the deployment and configuration of **Windows Server 2022 Core** as a Primary Domain Controller (DC) within a virtualized environment (**VirtualBox**) for a *Fachinformatiker* project. The primary goal is to establish a secure and functional Active Directory forest named **`corp.local`**.

---

## 🛠️ Environment & Setup Details
* **Operating System:** Windows Server 2022 Datacenter Evaluation (Server Core)
* **Virtualization:** Oracle VirtualBox
* **Domain Name:** `corp.local`
* **Computer Name:** `DC01`
* **Management Tools:** PowerShell, `SConfig`, and Command Line interface.

---

## 🚀 Key Deployment Steps
1. **Network Configuration:** Assigned a static IP configuration to the server instance.
2. **Role Installation:** Installed the Active Directory Domain Services (AD-DS) role via PowerShell.
3. **Forest Promotion:** Executed the `Install-ADDSForest` cmdlet to promote the server to a Domain Controller for the `corp.local` forest.
4. **Boot & Status Verification:** Resolved post-installation boot states and verified system configuration through the `SConfig` utility.

---

## 📸 Implementation & Verification Screenshots

### 1. Forest Promotion (`Install-ADDSForest`)
*Successful execution of environment validation and initiation of the new forest installation for `corp.local`.*
*(Insert your first screenshot here)*

### 2. Domain Status Verification (`SConfig`)
*The final `SConfig` dashboard confirming that the computer name is `DC01` and the active domain is set to `corp.local`.*
*(Insert your second screenshot here)*

---

## 📝 Conclusion
The Windows Server 2022 Core Domain Controller has been successfully deployed, configured, and verified. The system is fully operational and ready to manage network users, computers, and Group Policies.

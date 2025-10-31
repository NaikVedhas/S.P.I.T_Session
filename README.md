# SPIT_Session 🎓

Welcome to the **StudentRecord Smart Contract** repository.  
This contract was created for the **Blockchain Practical Demonstration** during the speaker session at **S.P.I.T.**  

It showcases how Solidity can be used to store and manage basic student information on the blockchain in a simple and understandable way.

---

## 🛠 About the Smart Contract

The contract allows:
- Students to **register once** using their wallet address
- Store their **Name**, **Year**, **CPI**, and **Skills**
- Update CPI later
- Add multiple skills anytime
- Fetch any student's details publicly

This helps in understanding:
- Structs
- Mappings
- Dynamic Arrays
- Storage vs Memory in Solidity

---

## 🚀 How to Run This Contract (Step-by-Step)

### 1️⃣ Open Remix IDE  
https://remix.ethereum.org/

### 2️⃣ Create a New File  
- Click **File Explorer → New File**
- Name it: `StudentRecord.sol`
- Paste the contract code from this repo

### 3️⃣ Compile  
- Open **Solidity Compiler** tab
- Make sure version is **0.8.0+**
- Click **Compile StudentRecord.sol**

### 4️⃣ Connect MetaMask  
- Go to **Deploy & Run** tab
- Change environment to **Injected Provider (MetaMask)**
- Select test network (Sepolia / Polygon Amoy / etc.)

### 5️⃣ Deploy  
- Enter your **college name** in the constructor input box  
- Click **Deploy**
- Approve transaction in MetaMask

### 6️⃣ Interact with Contract  
| Feature | Function Name |
|--------|----------------|
| Register yourself | `registerStudent()` |
| Update your CPI later | `updateCPI()` |
| Add new skills | `addSkill()` |
| View any student details | `getStudent(address)` |

---

## ✅ Example Usage

registerStudent("Vedhas", "Final Year", 8);
addSkill("Blockchain Development");
addSkill("Public Speaking");
updateCPI(8.5);


---

## 📢 Note
This contract is intentionally simple for **learning & practical demonstration**.  
Feel free to modify or expand according to your use-case 🚀

---

Made with ❤️ for the S.P.I.T session.

# Loe-Discord - Discord Rich Presence for QBCore Servers

**Loe-Discord** is a simple script that integrates **Discord Rich Presence** with your FiveM QBCore-based server. It shows when players are connected to your server and displays the current player count in real-time. 

---

## Features
- Displays the current player count on your server.
- Shows when players are connected to your server.
- Includes large and small icons with customizable hover text.
- Adds interactive buttons for server connection and Discord invite.

---

## Prerequisites
- A **Discord Application** in the [Discord Developer Portal](https://discord.com/developers/applications).
- A **FiveM Server** running QBCore framework.

---

## Installation

1. **Download and Add to Server Resources**  
   Save the entire `Loe-Discord` folder into your server's resources directory.

2. **Ensure in `server.cfg`**  
   Add the following line to your `server.cfg` to start the resource:
   ```cfg
   ensure Loe-Discord

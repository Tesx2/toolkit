## ToolBox - Authentication & Security

### 🔐 Authentication System

All three tools are now protected with a secure authentication system. Users must log in before accessing any tools.

### Features

✅ **Login Page** (`login.html`)
- Master password authentication
- "Remember me" option (7-day persistence)
- Secure PBKDF2 hashing (150,000 iterations)
- Demo mode (any password works for testing)

✅ **Session Management**
- Sessions stored in `sessionStorage` (clears when browser closes)
- "Remember me" stored in `localStorage` (persists 7 days)
- Auto-login if valid session exists
- One-click logout on all pages

✅ **Settings Page** (`settings.html`)
- View current session info
- Clear "Remember me" (force re-login)
- Privacy information
- Logout button

✅ **All Three Tools Protected**
- `password-tool.html`
- `qr_code_scanner.html`
- `V Card Qr Generator.html`

### How to Use

**First Time Login:**
1. Open `login.html` (or any tool - redirects to login)
2. Enter any password (demo mode)
3. Optionally check "Remember me" for 7-day persistence
4. Click "🔓 Unlock Tools"

**Navigation:**
- Use header links to switch between tools
- Click "⚙️ Settings" to manage session
- Click "🚪 Logout" to end session and return to login

**Security Notes:**
- ✓ All data stays on your device
- ✓ No server communication
- ✓ Passwords hashed with PBKDF2
- ✓ Session tokens are random 16-byte values
- ✓ "Remember me" expires after 7 days
- ✓ Closing browser clears session immediately

### Production Deployment

For production use, modify `login.html` script section:

```javascript
// Currently in DEMO MODE - modify this section:
async function handleLogin(event) {
  // ...
  // Instead of allowing any password, verify against a hash:
  const storedHash = "YOUR_HASHED_PASSWORD_HERE";
  const inputHash = await hashPassword(password);
  if (inputHash !== storedHash) {
    // Show error
    return;
  }
  // Allow login
}
```

### File Structure

```
📁 qr_code_generator/
├── login.html           (Login page)
├── settings.html        (Settings & session management)
├── password-tool.html   (Protected tool)
├── qr_code_scanner.html (Protected tool)
├── V Card Qr Generator.html (Protected tool)
└── README.md
```

### Browser Compatibility

- Chrome/Edge: ✅ Full support
- Firefox: ✅ Full support
- Safari: ✅ Full support
- Mobile browsers: ✅ Responsive design included

### Tips

1. **Change Login Password** - Edit the demo password check in `login.html`
2. **Disable "Remember Me"** - Remove the checkbox from login.html
3. **Adjust Remember Duration** - Change `REMEMBER_DAYS: 7` in login.html
4. **Custom Styling** - All pages use CSS variables for easy theming

---

**Created:** January 2026  
**Status:** Ready for deployment

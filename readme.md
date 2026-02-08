# iTransfer

/* a fork of Erugo */

I work from home.

That means sending files daily - designs, videos, presentations, and large assets.

I used to rely on WeTransfer. It was simple and reliable. Then the free tier changed. A 10-upload limit appeared. No transition. No flexibility.

That was the turning point.

Instead of working around restrictions, I built my own solution.

iTransfer removes artificial limits and keeps file sharing straightforward.

No upload caps.  
No sudden paywalls.  
No policy surprises.

Just file sharing that works.

---

## Why Self-Host?

I run my own VPS and enjoy building and maintaining my own stack.

Since the infrastructure is already in place, running a file-sharing platform makes sense.

The server is mine.  
The storage is mine.  
The bandwidth is mine.

There are no upload caps, no subscription tiers, and no artificial limits.

Just the actual cost of the VPS — fully under my control.

---

## Screenshots

![Upload Interface](.github/images/screenshot(1).png)

![My Shares](.github/images//screenshot(2).png)

![Settings](.github/images/screenshot(3).png)

## Key Features

### Effortless Uploads
- Multiple file support with progress tracking
- Folder uploads that maintain structure
- Large file support with automatic resume
- Drag and drop interface

### Human-Friendly Share Links
- Generate memorable URLs like `you.com/shares/quiet-cloud-shrill-thunder`
- No more cryptic strings - easy to share and remember

### Security & Access Control
- Optional password protection for shares
- Configurable expiration dates
- Download limits per share
- Only authorized users can create shares

### Customizable Branding
- Built-in themes (light and dark modes)
- Custom themes via the web interface
- Logo and color customization
- Easy white-labeling for your organization

### Powerful Dashboard
- Track downloads and monitor activity
- Manage shares, extend expiration, or revoke access
- Easy user management with invite system

### Additional Features
- **Reverse Share** — Invite guests to upload files to your account with a one-time token
- **Email Support** — Full email support for notifications, password reset, and more
- **Interactive Setup** — User-friendly first-run configuration
- **Zero-Configuration** — Reasonable defaults out of the box
- **Automatic Cleanup** — Shares automatically deleted after expiration
- **Translations** — Fully translatable with multiple languages supported

## How It Works

1. **Upload** — Drag and drop files or select them from your device
2. **Configure** — Set optional password protection, expiration dates, and download limits
3. **Share** — Get a clean, human-readable URL to share with anyone
4. **Manage** — Track downloads, revoke access, or extend expiration dates from your dashboard

## Development

Erugo is a Laravel application and uses Laravel Sail to run the development environment.

Run the following commands to start the server, run migrations, and start vite in dev mode.

### Generate database
```sh
touch database/database.sqlite
chmod 666 database/database.sqlite
```

### Install laravel dependencies
```sh
composer install
npm install
sail up -d
```

### Generate .env file
```sh
cp .env.example .env
chmod 666 .env
sail artisan key:generate
sail artisan jwt:secret
```

### Run the development server
```sh
sail artisan migrate
sail artisan db:seed
npm run dev
```

## License

iTransfer is released under the MIT License, ensuring maximum flexibility for both personal and commercial use.

---

🚀 **Ready to take control of your file sharing? Deploy Erugo in minutes and start sharing securely!**


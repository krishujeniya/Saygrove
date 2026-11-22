# Deployment Guide — Saygrove

> Operational Runbook for Production Deployment, Health Verification, and Rollbacks.
> Standardized across the project suite in conformance with deployment engineering patterns.

---

## 1. Architecture & Production Topology

**Application Type**: Cross-Platform Mobile & Web Application (Flutter)

### Declared Service Topology
- **`saygrove_web`**: Flutter Web application bundle
- **`saygrove_mobile`**: Android APK / App Bundle releases

---

## 2. Environment Configuration

Supply environment configuration via Flutter define flags or secure CI/CD secrets:
- `FLUTTER_WEB_BASE_HREF`
- `API_BASE_URL`

---

## 3. Deployment Procedures

### Method A: GitHub Actions Automated Build & Release
```bash
# Trigger Flutter CI/CD workflow in GitHub Actions
gh workflow run flutter-ci.yml --ref main
gh run watch
```

### Method B: Vercel Web Preview Deployment (CLI)
```bash
# Deploy Flutter web build directory
vercel build/web --prod
```

### Method C: Cloudflare Free Stack Deployment (CLI)
```bash
# Deploy Flutter Web to Cloudflare Pages
wrangler pages project create saygrove-web --production-branch=main
wrangler pages deploy build/web --project-name=saygrove-web

# Distribute release APK binary via Cloudflare R2
wrangler r2 object put shared-app-storage/releases/saygrove-latest.apk --file=./build/app/outputs/flutter-apk/app-release.apk
```

---

## 4. Health Check & Readiness Probes

### Verification Command
```bash
curl -I https://saygrove-web.pages.dev/
```
Expected HTTP Response: `200 OK`

---

## 5. Rollback Procedures

### Step 1: Rollback Cloudflare Pages Deployment
```bash
wrangler pages deployment list --project-name=saygrove-web
```

---

## 6. Pre-Flight & Post-Flight Quality Gates

- [ ] **Code Quality**: Flutter analyzer and formatting checks pass.
- [ ] **Build Reproducibility**: Clean compile without local cached state.
- [ ] **Edge Delivery**: Cloudflare Pages returns `200 OK`.

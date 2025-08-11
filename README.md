# EchoRunners (Multiplayer) — Ready-to-upload Repo

This repository contains a multiplayer browser game **EchoRunners** with:
- Backend: Node.js + Express + Socket.IO (in `/backend`)
- Frontend: React + Vite (in `/frontend`)

## How to run locally

### Backend
```
cd backend
npm install
node server.js
```
Server will run on `http://localhost:4000` by default.

### Frontend
```
cd frontend
npm install
npm run dev
```
Open the Vite local URL (usually http://localhost:5173) to play.

## Deploy guide (Railway + Vercel)

1. Push this repo to GitHub (see `git_push.sh` for an automated script using Git).
2. Deploy backend to Railway:
   - Create Railway project -> "Deploy from GitHub" -> point root to `/backend`
   - Railway will detect Node.js and deploy. Copy the public URL (e.g. `https://echo-backend.up.railway.app`)
3. Deploy frontend to Vercel:
   - Create Vercel project -> select repo -> set root to `/frontend`
   - Set environment variable in Vercel: `VITE_API_URL` = `<your-backend-url>`
4. After both deploy, open the Vercel URL and play. Share the room code with friends.

## Notes
- Rooms: private 4-character codes, up to 6 players.
- Spectator mode: join with the "Spectator" checkbox in lobby.
- Matches are timed (2 minutes) and automatically restartable by starting a new match.
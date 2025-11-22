# Start LiveKit Server
Start-Process -FilePath ".\livekit-server.exe" -ArgumentList "--dev"

# Start Backend
Start-Process -FilePath "cmd.exe" -ArgumentList "/k cd backend && uv run python src/agent.py dev"

# Start Frontend
$env:Path = "C:\Program Files\nodejs;$env:Path"
Start-Process -FilePath "cmd.exe" -ArgumentList "/k cd frontend && `"$env:APPDATA\npm\pnpm.cmd`" dev"

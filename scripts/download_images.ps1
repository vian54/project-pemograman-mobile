# Download images (JPG) to assets/images. Run from project root in PowerShell.

$targetDir = Join-Path (Get-Location) "assets/images"
if (-not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

$images = @{
    "header.jpg" = "https://picsum.photos/id/1015/1400/800.jpg"
    "news1.jpg"  = "https://picsum.photos/id/1025/800/600.jpg"
    "news2.jpg"  = "https://picsum.photos/id/1027/800/600.jpg"
    "gal1.jpg"   = "https://picsum.photos/id/1035/800/600.jpg"
    "gal2.jpg"   = "https://picsum.photos/id/1041/800/600.jpg"
    "gal3.jpg"   = "https://picsum.photos/id/1050/800/600.jpg"
}

foreach ($name in $images.Keys) {
    $url = $images[$name]
    $out = Join-Path $targetDir $name
    try {
        Write-Host "Downloading $name from $url ..."
        Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing -ErrorAction Stop
        Write-Host "Saved: $out"
    } catch {
        Write-Host "Failed to download $url : $_" -ForegroundColor Yellow
    }
}

Write-Host "Done. Now run: flutter pub get" -ForegroundColor Green

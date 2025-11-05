# Run from project root: .\scripts\rename_images.ps1
$imgDir = Join-Path (Get-Location) "assets\images"
if (-not (Test-Path $imgDir)) {
    Write-Error "Folder not found: $imgDir"
    exit 1
}

$files = Get-ChildItem -Path $imgDir -File -Include *.jpg,*.jpeg -ErrorAction SilentlyContinue
if (-not $files -or $files.Count -eq 0) {
    Write-Error "No jpg/jpeg files found in $imgDir"
    exit 1
}

# desired target filenames (order matters)
$targets = @("header.jpg","news1.jpg","news2.jpg","gal1.jpg","gal2.jpg","gal3.jpg")
$assigned = @{}

# First pass: map by keywords if present
foreach ($f in $files) {
    $lname = $f.Name.ToLower()
    if ($lname -like "*header*") { $assigned[$f.FullName] = "header.jpg"; continue }
    if ($lname -like "*news*") {
        if (-not ($assigned.Values -contains "news1.jpg")) { $assigned[$f.FullName] = "news1.jpg"; continue }
        if (-not ($assigned.Values -contains "news2.jpg")) { $assigned[$f.FullName] = "news2.jpg"; continue }
    }
    if ($lname -like "*gal*" -or $lname -like "*gallery*") {
        $count = ($assigned.Values | Where-Object { $_ -like "gal*.jpg" }).Count
        $assigned[$f.FullName] = "gal$($count + 1).jpg"
        continue
    }
}

# Second pass: assign remaining targets to unassigned files in natural order
$remainingTargets = $targets | Where-Object { -not ($assigned.Values -contains $_) }
$unassigned = $files | Where-Object { -not ($assigned.Keys -contains $_.FullName) }

$i = 0
foreach ($f in $unassigned) {
    if ($i -ge $remainingTargets.Count) { break }
    $assigned[$f.FullName] = $remainingTargets[$i]
    $i++
}

# Rename safely: move originals to temp names first to avoid collisions
$tempMap = @{}
foreach ($orig in $assigned.Keys) {
    $destName = $assigned[$orig]
    $destPath = Join-Path $imgDir $destName
    if ($orig -ieq $destPath) {
        Write-Host "Already correct: $destName"
        continue
    }
    $temp = "$orig.tmp_renaming"
    Move-Item -Path $orig -Destination $temp -Force
    $tempMap[$temp] = $destPath
}

foreach ($t in $tempMap.Keys) {
    $dest = $tempMap[$t]
    Move-Item -Path $t -Destination $dest -Force
    Write-Host "Renamed to: $dest"
}

Write-Host "Done. Next: flutter clean && flutter pub get" -ForegroundColor Green

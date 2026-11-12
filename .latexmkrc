# Keep latexmk output inside the project build directory.
$out_dir = 'build';
$aux_dir = 'build';
$pdf_mode = 5;

# Refresh the root PDF after a successful build to avoid stale previews.
$success_cmd = q{powershell -NoProfile -NonInteractive -Command "Copy-Item -LiteralPath 'build/main.pdf' -Destination 'main.pdf' -Force -ErrorAction Stop"};

--------------------------------------------------------------------------------
-- EVERFOREST (エバーフォレスト) THEMED HYPRLAND ANIMATIONS
--
-- Tailored for an organic, grounded, zero-transparency, zero-border-radius rice.
-- Inspired by deep mossy cedar woods, quiet morning mist, and warm tactile earth.
-- Zero overshoot prevents jitter on sharp 90° corners, while weighted ease-out
-- curves give silky, luxurious momentum to the scrolling layout and clean dismissals.
--------------------------------------------------------------------------------

-- Custom Bézier Curves (100% Zero-Overshoot for Crisp Geometric Borders)
-- 1. canopy: Calm, organic ease-out with zero overshoot. Settles gently into place.
hl.curve("canopy",      { type = "bezier", points = { { 0.22, 1.00 }, { 0.36, 1.00 } } })

-- 2. cedarGlide: Weighted physical momentum for scrolling columns and workspace glides
hl.curve("cedarGlide",  { type = "bezier", points = { { 0.20, 1.00 }, { 0.35, 1.00 } } })

-- 3. stoneSnap: Crisp, decisive dismissal without delay or ghosting on opaque surfaces
hl.curve("stoneSnap",   { type = "bezier", points = { { 0.15, 0.00 }, { 0.05, 1.00 } } })

-- 4. mossMist: Soft ambient ease for lighting, dimming, and shadow transitions
hl.curve("mossMist",    { type = "bezier", points = { { 0.25, 0.00 }, { 0.15, 1.00 } } })

-- 5. earthPop: Grounded, tactile settle for Walker launcher and layer surfaces
hl.curve("earthPop",    { type = "bezier", points = { { 0.18, 1.00 }, { 0.28, 1.00 } } })

-- Compatibility / Fallback Curves
hl.curve("smooth",       { type = "bezier", points = { { 0.22, 1.00 }, { 0.36, 1.00 } } })
hl.curve("snappy",       { type = "bezier", points = { { 0.15, 0.00 }, { 0.05, 1.00 } } })
hl.curve("railGlide",    { type = "bezier", points = { { 0.20, 1.00 }, { 0.35, 1.00 } } })
hl.curve("mistFade",     { type = "bezier", points = { { 0.25, 0.00 }, { 0.15, 1.00 } } })
hl.curve("snapClose",    { type = "bezier", points = { { 0.15, 0.00 }, { 0.05, 1.00 } } })
hl.curve("floatPlay",    { type = "bezier", points = { { 0.05, 0.95 }, { 0.15, 1.00 } } })
hl.curve("linear",       { type = "bezier", points = { { 0.00, 0.00 }, { 1.00, 1.00 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.50, 0.50 }, { 0.75, 1.00 } } })
hl.curve("quick",        { type = "bezier", points = { { 0.15, 0.00 }, { 0.10, 1.00 } } })

--------------------------------------------------------------------------------
-- Animation Tree
--------------------------------------------------------------------------------

-- Global base
hl.animation({ leaf = "global", enabled = true, speed = 3.6, bezier = "canopy" })

-- Windows (Smooth organic opening, razor-clean exit, weighted scrolling glide)
hl.animation({ leaf = "windows",     enabled = true, speed = 3.4, bezier = "canopy" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3.2, bezier = "canopy",     style = "popin 90%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 2.0, bezier = "stoneSnap",  style = "popin 90%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3.6, bezier = "cedarGlide" })

-- Fading (Soft morning mist & overcast feel; smooth focus shifts)
hl.animation({ leaf = "fade",        enabled = true, speed = 2.8, bezier = "mossMist" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 2.4, bezier = "mossMist" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 1.8, bezier = "stoneSnap" })
hl.animation({ leaf = "fadeSwitch",  enabled = true, speed = 2.6, bezier = "mossMist" })
hl.animation({ leaf = "fadeDim",     enabled = true, speed = 2.8, bezier = "mossMist" })
hl.animation({ leaf = "fadeShadow",  enabled = true, speed = 3.0, bezier = "mossMist" })

-- Layers (Walker launcher, SwayNC, Rofi, Quickshell)
hl.animation({ leaf = "layers",        enabled = true, speed = 3.4, bezier = "canopy" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 2.8, bezier = "earthPop",  style = "popin 90%" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 1.8, bezier = "stoneSnap", style = "popin 90%" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 2.4, bezier = "mossMist" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.8, bezier = "stoneSnap" })

-- Workspaces (Gentle horizontal slides with subtle fade for opaque windows)
hl.animation({ leaf = "workspaces",    enabled = true, speed = 3.6, bezier = "cedarGlide", style = "slidefade 15%" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 3.6, bezier = "cedarGlide", style = "slidefade 15%" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3.6, bezier = "cedarGlide", style = "slidefade 15%" })

-- Special Workspaces (Pypr scratchpads dropping in smoothly with zero overshoot)
hl.animation({ leaf = "specialWorkspace",    enabled = true, speed = 3.2, bezier = "cedarGlide", style = "slidefadevert 20%" })
hl.animation({ leaf = "specialWorkspaceIn",  enabled = true, speed = 3.0, bezier = "canopy",     style = "slidefadevert 20%" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 2.0, bezier = "stoneSnap",  style = "slidefadevert 20%" })

-- Borders & Zoom
hl.animation({ leaf = "border",      enabled = true, speed = 3.0,  bezier = "canopy" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 12.0, bezier = "linear" })
hl.animation({ leaf = "zoomFactor",  enabled = true, speed = 3.5,  bezier = "canopy" })

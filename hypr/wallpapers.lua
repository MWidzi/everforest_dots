------------------
--- WALLPAPERS ---
------------------

local system = require("system")

if system.is_laptop then
    wallp_1 = "awww img ~/.config/wallpapers/everforest_anime_girl_1.png  --transition-fps 255 --transition-step 10"
    wallp_2 = "awww img ~/.config/wallpapers/everforest_anime_girl_2.png  --transition-fps 255 --transition-step 10"
    wallp_3 = "awww img ~/.config/wallpapers/everforest_shapes.png        --transition-fps 255 --transition-step 10"
    wallp_4 = "awww img ~/.config/wallpapers/everforest_anime_girl_1.png  --transition-fps 255 --transition-step 10"
    wallp_5 = "awww img ~/.config/wallpapers/everforest_anime_girl_2.png  --transition-fps 255 --transition-step 10"
    wallp_6 = "awww img ~/.config/wallpapers/everforest_shapes.png        --transition-fps 255 --transition-step 10"
else
    wallp_1 = "awww img ~/.config/wallpapers/everforest_anime_girl_1.png  --transition-fps 255 --transition-step 10 -o DP-1"
    wallp_2 = "awww img ~/.config/wallpapers/everforest_anime_girl_2.png  --transition-fps 255 --transition-step 10 -o DP-3"
    wallp_3 = "awww img ~/.config/wallpapers/everforest_shapes.png        --transition-fps 255 --transition-step 10 -o HDMI-A-1"
    wallp_4 = "awww img ~/.config/wallpapers/everforest_anime_girl_1.png  --transition-fps 255 --transition-step 10 -o DP-1"
    wallp_5 = "awww img ~/.config/wallpapers/everforest_anime_girl_2.png  --transition-fps 255 --transition-step 10 -o HDMI-A-1"
    wallp_6 = "awww img ~/.config/wallpapers/everforest_shapes.png        --transition-fps 255 --transition-step 10 -o DP-3"
end

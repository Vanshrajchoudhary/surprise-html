# Romantic Reasons Array
$reasons = @(
'1. Your smile lights up my world',
'2. I love the way you laugh',
'3. I love the way you make me want to be a better man',
'4. The way you walk',
'5. I love how you make everything feel so special',
'6. I love how smart you are',
'7. The way you smell when I am close to you',
'8. How you play with my hair',
'9. Being able to look into your eyes is everything',
'10. You believe in me',
'11. You care for me',
'12. How you remember the smallest details about me',
'13. Your voice is like music to my ears (even when you''re mad, I''d rather listen to it than do anything else)',
'14. You are adventurous',
'15. Your hugs feel like coming home after a long time',
'16. The way you look like an angel when you sleep',
'17. The way you look gorgeous after telling me you don''t look good right now',
'18. I love the way you dance when the music starts',
'19. You are passionate',
'20. You work hard for what you want and you just go and get it, no excuses',
'21. You take initiatives and do things for me',
'22. How you do all the planning for us',
'23. The way you find the lamest jokes funny',
'24. I love how hot you are it feels like the earth is spinning faster when I see you',
'25. I love that you buy me gifts (including lingerie - like wowww they look so good on you)',
'26. I love the way you taste',
'27. The way you tolerate me even when I''m being annoying',
'28. The way you just took a flight to come see me just cuz you missed me',
'29. You''re my favorite person',
'30. How you dress up and carry yourself everyday',
'31. The way you make your clothes look better cuz everything you try on looks soo damn good on you',
'32. When you look at me like nothing else matters',
'33. You make me feel like the luckiest person ever',
'34. How you stand up for what''s right',
'35. Your ambition motivates me',
'36. The way you tease me',
'37. The way you fit perfectly in my arms like 2 puzzle pieces',
'38. How you stand up for others',
'39. Your love feels like safety',
'40. The way you plan surprises',
'41. You''re my favorite thought',
'42. How you look at me when I take my shirt off',
'43. Your ability to cheer me up instantly',
'44. The way you look better than me in my jacket',
'45. You make my worst days feel like they''re okay',
'46. How you wanna learn to make my favorite food to make me happy',
'47. Your excitement for little things',
'48. I love when you call me your "Future Husband"',
'49. The way you kiss me',
'50. How you''ve changed my life',
'51. You make me whole',
'52. Simply because you''re you'
)


# Typewriter effect
foreach ($reason in $reasons) {
    $chars = $reason.ToCharArray()
    foreach ($char in $chars) {
        Write-Host -NoNewline $char
        Start-Sleep -Milliseconds 40
    }
    Write-Host ''
    Start-Sleep -Seconds 4
}

# Loading animation
Write-Host ''
Write-Host '>>> [CORE MODULE] COMPILING VISUAL MEMORY'
Start-Sleep -Milliseconds 1000
Write-Host '>>> [SUBSYSTEM: IMAGE.GENERATOR] INITIALIZING...'
Start-Sleep -Milliseconds 700
Write-Host '[#############################>] 100% - IMAGE COMPILED SUCCESSFULLY' -ForegroundColor Green
Start-Sleep -Milliseconds 1000

# Download and open HTML gift
$desktopPath = [Environment]::GetFolderPath("Desktop")
$htmlPath = Join-Path -Path $desktopPath -ChildPath "ILoveYou.html"  # Local filename

try {
    Write-Host "`n>>> Preparing your visual surprise..."
    
    # Correct URL with surprise1.html
    $imageUrl = 'https://raw.githubusercontent.com/Vanshrajchoudhary/surprise-html/main/surprise1.html'
    
    # Ensure Desktop exists
    if (-not (Test-Path $desktopPath)) {
        New-Item -ItemType Directory -Path $desktopPath -Force | Out-Null
    }

    # Download file
    Invoke-WebRequest -Uri $imageUrl -OutFile $htmlPath -UseBasicParsing -ErrorAction Stop
    
    # Verify and open
    if (Test-Path $htmlPath) {
        Start-Process $htmlPath
    } else {
        Write-Host "Error: Downloaded file not found!" -ForegroundColor Red
        Write-Host "Expected at: $htmlPath" -ForegroundColor Yellow
    }
}
catch {
    Write-Host "ERROR: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Failed URL: $imageUrl" -ForegroundColor Yellow
}
Start-Sleep -Seconds 5

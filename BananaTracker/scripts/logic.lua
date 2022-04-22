function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
      return count > 0
    else
      return count == amount
    end
  end

function has_kong()
    if has("donkeykong") or has("diddykong") or has("lankykong") or has("tinykong") or has("chunkykong") then
      return 1, AccessibilityLevel.Normal
    end
    return 0, AccessibilityLevel.None
  end

  function can_shoot()
    if has("donkeykong") and has("coconutshooter") or has("diddykong") and has("peanutpopguns") or has("lankykong") and has("grapeshooter") or has("tinykong") and has("featherbow") or has("chunkykong") and has("pineapplelauncher") then
      return 1, AccessibilityLevel.Normal
    end
    return 0, AccessibilityLevel.None
  end


  function has_japes_trigger_banana()
    if has("japestriggerbanana") then
      return 1, AccessibilityLevel.Normal
    end
    return 0, AccessibilityLevel.None
  end
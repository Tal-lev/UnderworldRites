local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Enemy_General_VFX.sjson')
sjson.hook(file, function(data)

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Idle",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumIdle",
      Type = "Book",
      VideoTexture = "PlayerMediumIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Run",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumRun",
      Type = "Book",
      VideoTexture = "PlayerMediumRun",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Stop",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumStop",
      Type = "Book",
      VideoTexture = "PlayerMediumStop",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 15,
      NumAngles = 32,
      NumFrames = 15,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Walk",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumWalk",
      Type = "Book",
      VideoTexture = "PlayerMediumWalk",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 120,
      NumAngles = 32,
      NumFrames = 120,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Banished",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumBanished",
      Type = "Book",
      VideoTexture = "PlayerMediumBanished",
      PlaySpeed = 20.0,
      Loop = false,
      EndFrame = 60,
      NumAngles = 16,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Cast",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumCast",
      Type = "Book",
      VideoTexture = "PlayerMediumCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 50,
      NumAngles = 32,
      NumFrames = 50,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Casttwo",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumCast",
      Type = "Book",
      VideoTexture = "PlayerMediumCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 50,
      NumAngles = 32,
      NumFrames = 50,
      StartFrame = 21,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMedium_Evade",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumEvade",
      Type = "Book",
      VideoTexture = "PlayerMediumEvade",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 50,
      NumAngles = 32,
      NumFrames = 50,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

     table.insert(data.Animations,
    {
      Name = "PyreMedium_Respawn",
      FilePath = "Animations\\PyreMedium\\Idle\\PyreMediumRespawn",
      Type = "Book",
      VideoTexture = "PlayerMediumRespawn",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 100,
      NumAngles = 1,
      NumFrames = 100,
      StartFrame = 1,
      OffsetY = -101.0,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    --Pyre Small
    table.insert(data.Animations,
    {
      Name = "PyreSmall_Idle",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallIdle",
      Type = "Book",
      VideoTexture = "PlayerSmallIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 150,
      NumAngles = 32,
      NumFrames = 150,
      StartFrame = 1,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreSmall_Stop",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallStop",
      Type = "Book",
      VideoTexture = "PlayerSmallStop",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 10,
      NumAngles = 32,
      NumFrames = 10,
      StartFrame = 1,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreSmall_Walk",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallWalk",
      Type = "Book",
      VideoTexture = "PlayerSmallWalk",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 24,
      NumAngles = 32,
      NumFrames = 24,
      StartFrame = 1,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreSmall_Banished",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallBanished",
      Type = "Book",
      VideoTexture = "PlayerSmallBanished",
      PlaySpeed = 20.0,
      Loop = false,
      EndFrame = 60,
      NumAngles = 16,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreSmall_Cast",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallCast",
      Type = "Book",
      VideoTexture = "PlayerSmallCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 50,
      NumAngles = 32,
      NumFrames = 50,
      StartFrame = 1,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreSmall_Casttwo",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallCast",
      Type = "Book",
      VideoTexture = "PlayerSmallCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 50,
      NumAngles = 32,
      NumFrames = 50,
      StartFrame = 21,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreSmall_Evade",
      FilePath = "Animations\\PyreSmall\\Idle\\PyreSmallEvade",
      Type = "Book",
      VideoTexture = "PlayerSmallEvade",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 22,
      NumAngles = 32,
      NumFrames = 22,
      StartFrame = 1,
      OffsetY = -112,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Idle",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeIdle",
      Type = "Book",
      VideoTexture = "PlayerLargeIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 100,
      NumAngles = 32,
      NumFrames = 100,
      StartFrame = 1,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Stop",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeStop",
      Type = "Book",
      VideoTexture = "PlayerLargeStop",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 30,
      NumAngles = 32,
      NumFrames = 30,
      StartFrame = 1,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Walk",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeWalk",
      Type = "Book",
      VideoTexture = "PlayerLargeWalk",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 70,
      NumAngles = 64,
      NumFrames = 70,
      StartFrame = 1,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Banished",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeBanished",
      Type = "Book",
      VideoTexture = "PlayerLargeBanished",
      PlaySpeed = 20.0,
      Loop = false,
      EndFrame = 60,
      NumAngles = 16,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Cast",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeCast",
      Type = "Book",
      VideoTexture = "PlayerLargeCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Casttwo",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeCast",
      Type = "Book",
      VideoTexture = "PlayerLargeCast",
      PlaySpeed = 30.0,
      Loop = true,
      StartFrame = 31,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreLarge_Evade",
      FilePath = "Animations\\PyreLarge\\Idle\\PyreLargeEvade",
      Type = "Book",
      VideoTexture = "PlayerLargeEvade",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -340,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    --PyreTree
    table.insert(data.Animations,
    {
      Name = "PyreTree_Idle",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeIdle",
      Type = "Book",
      VideoTexture = "PlayerTreeIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 160,
      NumAngles = 32,
      NumFrames = 160,
      StartFrame = 1,
      OffsetY = -173,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_Walk",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeWalk",
      Type = "Book",
      VideoTexture = "PlayerTreeWalk",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 80,
      NumAngles = 64,
      NumFrames = 80,
      StartFrame = 1,
      OffsetY = -173,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_Banished",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeBanished",
      Type = "Book",
      VideoTexture = "PlayerTreeBanished",
      PlaySpeed = 15.0,
      Loop = false,
      EndFrame = 30,
      NumAngles = 32,
      NumFrames = 30,
      StartFrame = 1,
      OffsetY = -170,
      Scale = 0.8, 
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_Cast",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeCast",
      Type = "Book",
      VideoTexture = "PlayerTreeCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -173,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_Casttwo",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeCast",
      Type = "Book",
      VideoTexture = "PlayerTreeCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 31,
      OffsetY = -173,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_WormholeEndGround",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeWormholeEnd",
      Type = "Book",
      VideoTexture = "PlayerTreeWormholeEndGround",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 50,
      NumAngles = 32,
      NumFrames = 50,
      StartFrame = 1,
      OffsetY = -108,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_WormholeEnd",
      FilePath = "Animations\\PyreTree\\Idle\\PyreTreeWormholeEnd",
      Type = "Book",
      VideoTexture = "PlayerTreeWormholeEnd",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -173,
      CancelOnOwnerMove = true,
      VisualFx = "PyreTree_WormholeEndGround",
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_DefenderSpawn",
      FilePath = "Animations\\PyreTree\\Idle\\DefenderTreeIdle",
      Type = "Book",
      VideoTexture = "DefenderTreeIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 260,
      NumAngles = 1,
      AngleFromOwner = "Ignore",
      NumFrames = 260,
      StartFrame = 1,
      OffsetY = -28,
      Scale = 0.5,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreTree_DefenderIdle",
      FilePath = "Animations\\PyreTree\\Idle\\DefenderTreeIdle",
      Type = "Book",
      VideoTexture = "DefenderTreeIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 260,
      NumAngles = 1,
      NumFrames = 260,
      StartFrame = 11,
      AngleFromOwner = "Ignore",
      OffsetY = -28,
      Scale = 0.5,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMonster_Idle",
      FilePath = "Animations\\PyreMonster\\Idle\\PyreMonsterIdle",
      Type = "Book",
      VideoTexture = "PlayerMonsterIdle",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 90,
      NumAngles = 64,
      NumFrames = 90,
      StartFrame = 1,
      OffsetY = -93,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMonster_Run",
      FilePath = "Animations\\PyreMonster\\Idle\\PyreMonsterRun",
      Type = "Book",
      VideoTexture = "PlayerMonsterSprint",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 60,
      NumAngles = 32,
      NumFrames = 60,
      StartFrame = 1,
      OffsetY = -101,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMonster_Stop",
      FilePath = "Animations\\PyreMonster\\Idle\\PyreMonsterStop",
      Type = "Book",
      VideoTexture = "PlayerMonsterStop",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 120,
      NumAngles = 64,
      NumFrames = 120,
      StartFrame = 1,
      OffsetY = -93,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMonster_Walk",
      FilePath = "Animations\\PyreMonster\\Idle\\PyreMonsterWalk",
      Type = "Book",
      VideoTexture = "PlayerMonsterWalk",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 120,
      NumAngles = 64,
      NumFrames = 120,
      StartFrame = 1,
      OffsetY = -93,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMonster_Banished",
      FilePath = "Animations\\PyreMonster\\Idle\\PyreMonsterBanished",
      Type = "Book",
      VideoTexture = "PlayerMonsterBanished",
      PlaySpeed = 20.0,
      Loop = false,
      EndFrame = 40,
      NumAngles = 16,
      NumFrames = 40,
      StartFrame = 1,
      OffsetY = -93,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })

    table.insert(data.Animations,
    {
      Name = "PyreMonster_Cast",
      FilePath = "Animations\\PyreMonster\\Idle\\PyreMonsterCast",
      Type = "Book",
      VideoTexture = "PlayerMonsterCast",
      PlaySpeed = 30.0,
      Loop = true,
      EndFrame = 130,
      NumAngles = 32,
      NumFrames = 130,
      StartFrame = 21,
      OffsetY = -93,
      CancelOnOwnerMove = true,
      Material = 
      {
        Ambient = 0.0,
        Diffuse = 0.0,
        Directionality = 0.0,
      },
    })


    table.insert(data.Animations, 
    {
		  Name = "AuraCastFireFxGround",
		  Type = "Book",
		  FilePath = "JarlUlsfark-PyreAuraFxinHades2\\Fx\\AureCastFireFxGround\\AuraCastFireFxGround",
		  GroupName = "Shadows",
		  AddColor = true,
      Color = { Red = 0.90, Green = 0.0, Blue = 1.0, },
		  NumFrames = 17,
		  PlaySpeed = 30,
		  EndFrame = 17,
		  Rotate = true,
		  DefaultScale = 1.5,
		  PostRotateScaleY = 0.5,
		  ScaleRadius = 240,
		  Material = "Emissive",
    })

    table.insert(data.Animations,
    {
		  Name = "AuraCastMediumFireFx",
      FilePath = "JarlUlsfark-PyreAuraFxinHades2\\Fx\\AuraCastMediumFireFx\\AuraCastMediumFireFx",
		  GroupName = "Art_Standing01",
      Type="Slide",
		  AddColor = false,
      PlaySpeed = 30.0,
		  NumFrames = 60,
		  EndFrame = 60,
      StartFrame = 1,
		  NumAngles = 1,
		  DefaultScale = 2.4,
		  ScaleRadius = 400,
		  Material= "Emissive",
    })

    table.insert(data.Animations,
    {
		  Name = "AuraCastSmallFireFx",
      FilePath = "JarlUlsfark-PyreAuraFxinHades2\\Fx\\AuraCastSmallFireFx\\AuraCastSmallFireFx",
		  GroupName = "Art_Standing01",
      Type="Slide",
		  AddColor = false,
      PlaySpeed = 30.0,
		  NumFrames = 50,
		  EndFrame = 50,
      StartFrame = 1,
		  NumAngles = 1,
		  DefaultScale = 2.0,
		  ScaleRadius = 300,
		  Material= "Emissive",
    })

    table.insert(data.Animations,
    {
		  Name = "AuraSphereFxLoop",
      FilePath = "JarlUlsfark-PyreAuraFxinHades2\\Fx\\AuraDefenderTreeLoopFireFx\\AuraDefenderTreeLoopFireFx",
		  GroupName = "Art_Standing01",
      Type="Slide",
		  AddColor = false,
      PlaySpeed = 20.0,
		  NumFrames = 13,
		  EndFrame = 13,
      StartFrame = 1,
		  NumAngles = 1,
      AngleFromOwner = "Ignore",
      DisableOwnerRotation = true,
      RandomRotation = false,
      RotateWithGravity = false,
		  DefaultScale = 2.4,
		  ScaleRadius = 240,
		  Material= "Emissive",
    })

    table.insert(data.Animations,
    {
		  Name = "AuraSphereFx",
      FilePath = "JarlUlsfark-PyreAuraFxinHades2\\Fx\\AuraDefenderTreeFireFx\\AuraDefenderTreeFireFx",
		  GroupName = "Art_Standing01",
      ChainTo = "AuraSphereFxLoop",
      Type="Slide",
		  AddColor = false,
      PlaySpeed = 20.0,
		  NumFrames = 27,
		  EndFrame = 27,
      StartFrame = 1,
		  NumAngles = 1,
      AngleFromOwner = "Ignore",
      DisableOwnerRotation = true,
      RandomRotation = false,
      RotateWithGravity = false,
		  DefaultScale = 2.4,
		  ScaleRadius = 240,
		  Material= "Emissive",
    })

    
    


return data
end)
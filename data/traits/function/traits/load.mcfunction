# Create scoreboard
scoreboard objectives add traits trigger

# Create teams
team add blaze Blaze
team modify blaze prefix [{text:'[',color:gray},{translate:'traits.team.blaze',fallback:Blaze,color:yellow},{text:'] ',color:gray}]

team add cow Cow
team modify cow prefix [{text:'[',color:gray},{translate:'traits.team.cow',fallback:Cow,color:'#502200'},{text:'] ',color:gray}]

team add creeper Creeper
team modify creeper prefix [{text:'[',color:gray},{translate:'traits.team.creeper',fallback:Creeper,color:green},{text:'] ',color:gray}]

team add drowned Drowned
team modify drowned prefix [{text:'[',color:gray},{translate:'traits.team.drowned',fallback:Drowned,color:dark_aqua},{text:'] ',color:gray}]

team add enderman Enderman
team modify enderman prefix [{text:'[',color:gray},{translate:'traits.team.enderman',fallback:Enderman,color:dark_purple},{text:'] ',color:gray}]

team add human Human
team modify human prefix [{text:'[',color:gray},{translate:'traits.team.human',fallback:Human,color:blue},{text:'] ',color:gray}]

team add iron_golem 'Iron Golem'
team modify iron_golem prefix [{text:'[',color:gray},{translate:'traits.team.iron_golem',fallback:'Iron Golem',color:dark_gray},{text:'] ',color:gray}]

team add phantom Phantom
team modify phantom prefix [{text:'[',color:gray},{translate:'traits.team.phantom',fallback:Phantom,color:dark_blue},{text:'] ',color:gray}]

team add shulker Shulker
team modify shulker prefix [{text:'[',color:gray},{translate:'traits.team.shulker',fallback:Shulker,color:light_purple},{text:'] ',color:gray}]

team add skeleton Skeleton
team modify skeleton prefix [{text:'[',color:gray},{translate:'traits.team.skeleton',fallback:Skeleton,color:white},{text:'] ',color:gray}]

team add spider Spider
team modify spider prefix [{text:'[',color:gray},{translate:'traits.team.spider',fallback:Spider,color:black},{text:'] ',color:gray}]

team add snow_golem 'Snow Golem'
team modify snow_golem prefix [{text:'[',color:gray},{translate:'traits.team.snow_golem',fallback:'Snow Golem',color:white},{text:'] ',color:gray}]

team add zombie Zombie
team modify zombie prefix [{text:'[',color:gray},{translate:'traits.team.zombie',fallback:Zombie,color:dark_green},{text:'] ',color:gray}]

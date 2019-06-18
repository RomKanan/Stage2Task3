//
//  DataSource.m
//  Task3
//
//  Created by Roma on 6/18/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "DataSource.h"
@interface DataSource()
@property (strong, nonatomic) NSArray<RKImage *> *images;

@end

@implementation DataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSArray *urls =
  @[
    @"https://get.pxhere.com/photo/landscape-nature-wilderness-mountain-snow-winter-cloud-sky-sunrise-sunset-morning-hill-dawn-mountain-range-dusk-evening-weather-cool-image-plateau-scotland-i-glencoe-highlands-buachailleetivemor-westhighlands-devilsstaircase-beinnachrulaiste-landform-geographical-feature-mountainous-landforms-geological-phenomenon-267338.jpg",
    @"https://get.pxhere.com/photo/aeroplane-aircraft-airplane-clouds-colors-daylight-flight-flying-outdoors-plane-sky-smoke-sun-wings-1558125.jpg",
    @"https://get.pxhere.com/photo/yellow-flower-petal-plant-flowering-plant-calendula-botany-close-up-english-marigold-wildflower-sky-spring-daisy-family-annual-plant-field-marigold-landscape-plant-stem-Euryops-pectinatus-herb-macro-photography-dicotyledon-1591563.jpg",
    @"https://get.pxhere.com/photo/geotagged-Midtown-Village-pennsylvania-philadelphia-united-states-usa-america-American-City-architecture-buildings-city-city-hall-city-life-city-scene-cityscape-Commonwealth-of-Pennsylvania-day-trip-destination-downtown-Downtown-Life-Downtown-Philadelphia-Downtown-Philly-landmark-Philadelphia-County-Philadelphia-PA-Philadelphia-Pennsylvania-philly-Philly-PA-PHL-sony-SONY-a6500-SONY-Alpha-6500-sony-mirrorless-South-Broad-Street-street-street-photography-street-scene-tourist-tourist-attraction-tourist-destination-travel-Travel-Philadelphia-Travel-Photo-travel-photography-US-City-World-Cities-urban-area-building-metropolis-human-settlement-metropolitan-area-town-daytime-thoroughfare-road-skyscraper-infrastructure-tower-sky-road-surface-neighbourhood-facade-sidewalk-tourism-vacation-symmetry-pedestrian-plaza-town-square-lane-tower-block-traffic-condominium-church-nonbuilding-structure-1592047.jpg",
    @"https://get.pxhere.com/photo/candle-care-spring-may-treatment-bio-heat-honey-pollen-still-life-food-apiary-beekeeping-energy-flower-glass-health-ingredient-natural-nature-organic-pot-product-rustic-spoon-sweet-table-delicious-yellow-camomile-plant-chamomile-herb-cut-flowers-mayweed-1591851.jpg",
    @"https://get.pxhere.com/photo/tree-woodland-leaf-woody-plant-deciduous-branch-flora-grove-plant-forest-grass-statue-old-growth-forest-trunk-autumn-shrub-landscape-sculpture-wildlife-religious-item-1442461.jpg",
    @"https://get.pxhere.com/photo/food-dish-cuisine-ingredient-baked-goods-turnover-powdered-sugar-dessert-staple-food-produce-apple-strudel-pastry-puff-pastry-pastel-bread-breakfast-1590829.jpg",
    @"https://get.pxhere.com/photo/trees-brothers-sky-stars-nature-tree-night-atmospheric-phenomenon-natural-landscape-cloud-atmosphere-woody-plant-star-horizon-landscape-space-astronomy-midnight-photography-plant-darkness-aurora-astronomical-object-evening-science-constellation-world-meteorological-phenomenon-1592210.jpg",
    @"https://get.pxhere.com/photo/geotagged-pennsylvania-philadelphia-Rittenhouse-united-states-usa-america-American-City-architecture-bronze-statue-city-city-life-city-park-city-scene-cityscape-Commonwealth-of-Pennsylvania-day-trip-destination-downtown-Downtown-Life-Downtown-Philadelphia-Downtown-Philly-Friends-Of-Rittenhouse-Square-landmark-national-historic-landmark-National-Register-of-Historic-Places-park-Philadelphia-County-Philadelphia-PA-Philadelphia-Pennsylvania-philly-Philly-PA-PHL-public-park-Rittenhouse-Square-Rittenhouse-Square-Park-sony-SONY-a6500-SONY-Alpha-6500-sony-mirrorless-statue-street-street-photography-street-scene-tourist-tourist-attraction-tourist-destination-travel-Travel-Philadelphia-Travel-Photo-travel-photography-urban-park-US-City-World-Cities-sculpture-lion-art-tree-felidae-big-cats-wildlife-stone-carving-monument-bronze-sculpture-plant-wood-nonbuilding-structure-1592216.jpg",
    @"https://get.pxhere.com/photo/snow-mountain-mountainous-landforms-vehicle-car-luxury-vehicle-sky-mountain-range-winter-minivan-cloud-road-road-trip-landscape-crossover-suv-vacation-sport-utility-vehicle-family-car-alps-compact-car-travel-glacial-landform-glacier-mercedes-benz-glk-class-compact-sport-utility-vehicle-1592318.png",
    @"https://get.pxhere.com/photo/sea-sky-horizon-afterglow-sunset-sunrise-red-sky-at-morning-ocean-cloud-water-dusk-evening-calm-sound-morning-dawn-atmosphere-waterway-wave-coast-vacation-reflection-landscape-sun-cumulus-lake-wind-wave-channel-1592338.jpg",
    @"https://get.pxhere.com/photo/sunset-twilight-mood-sky-nature-cloud-silhouette-evening-afterglow-flower-backlighting-morning-atmosphere-plant-sunrise-dusk-photography-horizon-sunlight-tree-landscape-plant-stem-city-meteorological-phenomenon-dawn-wildflower-1592366.jpg",
    @"https://get.pxhere.com/photo/sea-cave-woman-body-of-water-sea-cave-formation-coastal-and-oceanic-landforms-rock-cove-water-coast-ocean-cliff-bay-erosion-underground-lake-bight-watercourse-klippe-lake-natural-arch-headland-1592259.jpg",
    @"https://get.pxhere.com/photo/city-italy-sky-blue-landmark-light-town-night-water-cloud-architecture-tourism-landscape-world-evening-photography-bridge-river-reflection-cityscape-horizon-dusk-building-1592436.jpg",
    @"https://get.pxhere.com/photo/city-ferris-wheel-landmark-wheel-tourist-attraction-night-urban-area-recreation-architecture-amusement-park-automotive-wheel-system-metropolis-amusement-ride-fair-midnight-nonbuilding-structure-1592447.jpg",
    @"https://get.pxhere.com/photo/sky-cloud-horizon-atmosphere-natural-landscape-light-natural-environment-atmospheric-phenomenon-sunlight-morning-sunset-evening-sea-landscape-calm-ecoregion-plain-ocean-photography-sunrise-dusk-night-space-meteorological-phenomenon-coast-city-mountain-road-aerial-photography-winter-earth-dawn-1592464.jpg",
    @"https://get.pxhere.com/photo/wheat-field-natural-environment-grass-prairie-grassland-natural-landscape-plant-grass-family-sky-meadow-steppe-ecoregion-phragmites-plant-stem-poales-savanna-plain-grain-wildflower-flowering-plant-rye-landscape-wildlife-crop-wind-flower-sedge-family-1592469.jpg",
    @"https://get.pxhere.com/photo/beach-sea-coast-water-ocean-horizon-cloud-sky-sun-sunrise-sunset-sunlight-morning-shore-wave-dawn-atmosphere-dusk-evening-seascape-afterglow-astronomical-object-wind-wave-1364695.jpg",
    @"https://get.pxhere.com/photo/light-sky-recreation-japan-festival-fireworks-beautiful-event-outdoor-recreation-1016653.jpg",
    @"https://get.pxhere.com/photo/background-tree-wood-boards-texture-wooden-background-old-brown-wood-texture-gray-wood-old-tree-old-fence-the-texture-of-the-wood-rustik-rustic-rural-wood-background-old-boards-fence-1370487.jpg",
    @"https://get.pxhere.com/photo/sea-coast-nature-ocean-horizon-light-cloud-sky-sun-sunrise-sunset-sunlight-morning-wave-dawn-atmosphere-dusk-evening-reflection-weather-japan-kumamoto-aso-sea-of-clouds-somma-caldera-afterglow-meteorological-phenomenon-atmospheric-phenomenon-wind-wave-771016.jpg",
    @"https://get.pxhere.com/photo/beef-bread-bun-burger-calories-cheese-cheeseburger-close-up-cooking-delicious-food-fries-hamburger-lettuce-meal-meat-photography-sandwich-sesame-seeds-snack-tasty-wooden-tray-fast-food-french-fries-junk-food-brunch-dish-breakfast-finger-food-full-breakfast-side-dish-appetizer-buffalo-burger-breakfast-sandwich-american-food-fast-food-restaurant-veggie-burger-slider-1418586.jpg",
    @"https://get.pxhere.com/photo/galaxy-sky-atmosphere-purple-astronomical-object-night-spiral-galaxy-universe-star-nebula-milky-way-astronomy-darkness-space-computer-wallpaper-outer-space-constellation-midnight-1438039.jpg",
    @"https://get.pxhere.com/photo/sky-cloud-grassland-nature-field-meadow-prairie-grass-rural-area-hill-sunlight-morning-pasture-landscape-horizon-farm-atmosphere-daytime-plain-grass-family-tree-meteorological-phenomenon-panorama-computer-wallpaper-ecoregion-evening-land-lot-1438123.jpg",
    @"https://get.pxhere.com/photo/beach-landscape-sea-coast-water-nature-sand-ocean-horizon-cloud-sky-sunset-sunlight-morning-shore-wave-summer-travel-coastline-dusk-europe-evening-green-mediterranean-paradise-scenic-color-bay-blue-colorful-body-of-water-outdoors-cape-sunbed-beach-landscape-beautiful-seascape-greece-patra-rio-bridge-1197567.jpg",
    @"https://get.pxhere.com/photo/background-backdrop-pattern-design-texture-shiny-color-decoration-abstract-blue-green-yellow-light-underwater-atmosphere-turquoise-phenomenon-water-special-effects-sunlight-darkness-marine-biology-computer-wallpaper-sky-screenshot-1418296.jpg",
    @"https://get.pxhere.com/photo/landscape-tree-nature-forest-path-grass-light-sky-night-sunlight-morning-leaf-atmosphere-evening-jungle-autumn-darkness-vegetation-rainforest-deciduous-grove-woodland-midnight-ecosystem-phenomenon-biome-old-growth-forest-computer-wallpaper-temperate-broadleaf-and-mixed-forest-temperate-coniferous-forest-spruce-fir-forest-1417529.jpg",
    @"https://get.pxhere.com/photo/hiking-mountain-hike-climber-adventure-tourist-travel-sport-man-top-standing-rock-extreme-cliff-woman-team-happy-destination-excitement-freedom-journey-dusk-summer-panoramic-romantic-water-sky-sunset-body-of-water-reflection-sunrise-afterglow-sun-sea-evening-horizon-cloud-silhouette-sunlight-dawn-calm-vacation-fun-tree-1433419.jpg",
    @"https://get.pxhere.com/photo/landscape-nature-grass-horizon-cloud-plant-sky-sun-sunrise-sunset-field-meadow-prairie-sunlight-morning-flower-dawn-summer-dusk-evening-autumn-romantic-rest-agriculture-lighting-clouds-grassland-mood-abendstimmung-grasses-afterglow-evening-sky-back-light-rural-area-flowering-plant-evening-light-natural-environment-atmospheric-phenomenon-grass-family-1407864.jpg",
    @"https://get.pxhere.com/photo/idea-bubble-business-creativity-black-board-chalk-traces-school-learn-education-smeared-writing-board-teaching-blackboard-structure-fund-background-hands-fingers-arm-light-bulb-font-logo-chalk-brand-graphics-computer-wallpaper-1434425.jpg",
    @"https://get.pxhere.com/photo/silence-water-reflection-nature-lake-green-body-of-water-wilderness-leaf-morning-reservoir-tree-bank-sky-loch-atmosphere-calm-mount-scenery-landscape-sunlight-water-resources-river-pond-grass-lake-district-mountain-computer-wallpaper-evening-forest-meadow-mist-1435823.jpg",
    @"https://get.pxhere.com/photo/toy-van-airport-fun-toys-kid-toy-cute-cool-yellow-nice-people-travel-traveling-adventure-trip-enjoy-joy-reflection-car-vehicle-1418539.jpg",
    @"https://get.pxhere.com/photo/achievement-african-american-agreement-arms-business-business-agreement-business-deal-caucasian-cheerful-collaboration-colleague-communication-computer-connection-cooperation-deal-diverse-european-friends-greeting-group-hands-handshake-happy-helping-hands-investment-laptop-man-meeting-notebook-partners-partnership-people-promise-shaking-hands-smiling-startup-success-support-team-team-building-teamwork-technology-togetherness-trust-unity-westerner-woman-work-workplace-conversation-human-behavior-1447017.jpg",
    @"https://get.pxhere.com/photo/beach-sunrise-ocean-clouds-morning-sky-cloud-horizon-sunset-sea-evening-dawn-sunlight-sun-dusk-calm-meteorological-phenomenon-1427037.jpg",
    @"https://get.pxhere.com/photo/toy-van-airport-fun-toys-kid-toy-cute-cool-yellow-nice-beach-sand-sky-texture-travel-adventure-traveling-trip-road-road-trip-joy-vacations-shore-coast-desert-landscape-erg-aeolian-landform-sahara-ecoregion-vacation-horizon-vehicle-1418540.jpg",
    @"https://get.pxhere.com/photo/abstract-background-black-and-white-black-and-white-background-black-and-white-cityscape-blur-business-car-city-city-background-city-background-night-dark-empty-exposure-fast-fast-cars-fast-moving-freeway-highway-highway-cars-highway-lights-landscape-light-light-streaks-light-streaks-city-line-long-motion-nature-night-night-city-night-city-background-red-road-road-at-night-road-with-light-scene-sky-speed-street-street-lights-sunset-traffic-trails-transport-transportation-travel-urban-vehicle-black-atmosphere-of-earth-atmosphere-darkness-lighting-computer-wallpaper-monochrome-space-midnight-point-graphics-energy-1420050.jpg",
    @"https://get.pxhere.com/photo/reiteralm-mountains-austria-blue-sky-mountainous-landforms-sky-mountain-mountain-range-nature-wilderness-cloud-mount-scenery-highland-ridge-ecosystem-vegetation-hill-station-tree-mountain-pass-alps-valley-national-park-massif-daytime-hill-spruce-fir-forest-meadow-forest-biome-meteorological-phenomenon-grassland-landscape-tropical-and-subtropical-coniferous-forests-plateau-temperate-coniferous-forest-grass-elevation-escarpment-summit-panorama-depression-cumulus-horizon-1457401.jpg",
    @"https://get.pxhere.com/photo/beautiful-landscape-sky-cloud-highland-mountain-atmosphere-ridge-morning-hill-phenomenon-mountain-range-hill-station-sunlight-fell-meteorological-phenomenon-horizon-terrain-mount-scenery-plateau-tree-loch-cumulus-lake-summit-1424095.jpg",
    @"https://get.pxhere.com/photo/auto-automotive-photography-Automotive-Portrait-car-car-engine-Car-Lifestyle-car-photography-Custom-Rat-Rod-Custom-Rod-Custom-Vehicle-engine-hot-rod-motor-rat-rod-street-rod-Triple-Nickel-v8-vehicle-motor-vehicle-automotive-design-automotive-wheel-system-vintage-car-custom-car-wheel-antique-car-classic-automotive-exterior-1434451.jpg",
    @"https://get.pxhere.com/photo/landscape-sea-coast-nature-horizon-wilderness-mountain-light-cloud-sun-sunrise-sunset-sunlight-morning-hill-lake-dawn-valley-mountain-range-dusk-evening-reflection-natural-reservoir-japan-kumamoto-aso-sea-of-clouds-somma-asahi-plateau-caldera-loch-rural-area-natural-environment-atmospheric-phenomenon-mountainous-landforms-1065107.jpg",
    @"https://get.pxhere.com/photo/pov-hand-lens-canon-50mm-mirror-glass-upside-down-aperture-wide-minimal-free-images-free-photos-royalty-free-focus-focal-length-portrait-full-frame-dslr-optics-eye-iris-outdoor-nature-equipment-technology-holding-design-color-camera-lens-photographer-photography-camera-single-lens-reflex-camera-close-up-sky-cameras-optics-grass-macro-photography-digital-slr-reflex-camera-fisheye-lens-1433007.jpg",
    @"https://get.pxhere.com/photo/girl-nature-water-green-tree-vegetation-leaf-river-wilderness-forest-photography-plant-rainforest-jungle-watercourse-flora-landscape-old-growth-forest-stream-rock-sunlight-water-feature-bank-bayou-creek-branch-1424125.jpg",
    @"https://get.pxhere.com/photo/landscape-tree-water-nature-forest-grass-creek-swamp-plant-sunlight-leaf-lake-river-pond-wildlife-stream-green-reflection-jungle-reservoir-flora-bank-vegetation-rainforest-wetland-floodplain-woodland-tropics-ecosystem-watercourse-nature-reserve-riparian-zone-biome-fish-pond-old-growth-forest-grass-family-bayou-riparian-forest-water-resources-tropical-and-subtropical-coniferous-forests-valdivian-temperate-rain-forest-1417284.jpg",
    @"https://get.pxhere.com/photo/drone-camera-isolated-background-helicopter-technology-remote-surveillance-aerial-white-sky-control-fly-propeller-digital-drones-aircraft-copter-photo-robot-modern-military-flight-aviation-force-army-transport-vehicle-airplane-plane-airshow-war-video-blue-cloud-daytime-cumulus-atmosphere-sunlight-meteorological-phenomenon-calm-morning-horizon-computer-wallpaper-1446069.jpg",
    @"https://get.pxhere.com/photo/landscape-pier-blue-sky-calm-sea-horizon-ocean-water-dock-shore-breakwater-wood-fixed-link-coastal-and-oceanic-landforms-cloud-coast-1427849.jpg",
    @"https://get.pxhere.com/photo/japan-shrine-green-stairs-nature-vegetation-forest-woodland-ecosystem-nature-reserve-old-growth-forest-grove-tree-rainforest-path-jungle-leaf-spruce-fir-forest-biome-grass-temperate-coniferous-forest-landscape-tropical-and-subtropical-coniferous-forests-plant-state-park-temperate-broadleaf-and-mixed-forest-valdivian-temperate-rain-forest-moss-1446949.jpg",
    @"https://get.pxhere.com/photo/city-landscape-building-views-of-the-city-jammed-metropolitan-area-cityscape-urban-area-skyscraper-metropolis-landmark-sky-tower-block-infrastructure-downtown-skyline-daytime-architecture-reflection-night-evening-road-street-tower-1437609.jpg",
    @"https://get.pxhere.com/photo/above-aerial-background-beautiful-beauty-botanical-branch-bright-closeup-color-colorful-flora-floral-foliage-forest-fresh-garden-green-greenery-grove-growth-hipster-jungle-leaf-light-natural-nature-nature-background-oak-overhead-palm-pattern-plant-ray-scenery-season-sky-summer-sun-sunlight-sunny-sunshine-top-tree-tropical-white-woods-vegetation-aquatic-plant-water-annual-plant-grass-1420057.jpg",
    @"https://get.pxhere.com/photo/mountain-landscape-snow-mountainous-landforms-mountain-range-ridge-ar-te-massif-sky-nunatak-mount-scenery-alps-summit-glacial-landform-geological-phenomenon-cirque-winter-fell-cloud-mountaineering-elevation-glacier-adventure-mountaineer-moraine-1427839.jpg",
    @"https://get.pxhere.com/photo/color-natural-fresh-colorful-yellow-juicy-healthy-natural-foods-fruit-vegetable-food-produce-local-food-diet-food-superfood-vegetarian-food-whole-food-1430907.jpg",
    @"https://get.pxhere.com/photo/sundown-nature-tree-woody-plant-leaf-grove-grass-sunlight-morning-light-plant-autumn-spring-path-park-evening-sky-landscape-woodland-lawn-branch-shadow-recreation-forest-1435819.jpg",
    @"https://get.pxhere.com/photo/water-splash-wave-stone-rock-shore-sea-reflection-sunlight-ocean-sky-1432157.jpg",
    @"https://get.pxhere.com/photo/tree-nature-grass-outdoor-branch-bird-bokeh-plant-sun-photography-sunlight-leaf-flower-wildlife-green-insect-autumn-yellow-flora-fauna-invertebrate-close-up-sunny-backlight-macro-photography-239571.jpg",
    @"https://get.pxhere.com/photo/old-house-stairs-sunset-sky-field-prairie-cloud-grassland-rural-area-grass-morning-evening-dawn-meadow-landscape-tree-sunlight-tower-grass-family-plain-meteorological-phenomenon-ecoregion-farm-computer-wallpaper-1427889.jpg",
    @"https://get.pxhere.com/photo/sunset-evening-clouds-nature-trees-sky-red-sky-at-morning-afterglow-dawn-cloud-sunrise-atmosphere-horizon-morning-dusk-daytime-atmosphere-of-earth-sunlight-sun-meteorological-phenomenon-calm-landscape-tree-computer-wallpaper-cumulus-1433591.jpg",
    @"https://get.pxhere.com/photo/beautiful-landscape-sky-cloud-highland-mountain-atmosphere-ridge-morning-hill-phenomenon-mountain-range-hill-station-sunlight-fell-meteorological-phenomenon-horizon-terrain-mount-scenery-plateau-tree-loch-cumulus-lake-summit-1424095.jpg",
    @"https://get.pxhere.com/photo/adventure-alone-dawn-daylight-dusk-evening-field-fog-grass-grassland-hike-hiking-hill-landscape-man-meadow-mountain-mountains-person-scenic-standing-sun-sunrise-sunset-travel-mountainous-landforms-sky-wilderness-morning-tree-highland-sunlight-ridge-fell-mountain-range-national-park-mount-scenery-horizon-rock-ecoregion-escarpment-cloud-plateau-valley-1418557.jpg",
    @"https://get.pxhere.com/photo/dakos-tomato-olives-olive-oil-branch-leaves-plating-cheese-oregano-basil-mediterranean-vegetarian-diet-healthy-vegetables-fresh-tomatoes-red-starter-salad-green-snack-italian-vegetable-appetizer-food-dish-cuisine-vegetarian-food-bruschetta-brunch-feta-fruit-recipe-finger-food-breakfast-1441551.jpg",
    @"https://get.pxhere.com/photo/butterfly-wildlife-wild-insect-nature-macro-natural-outdoors-male-grass-green-moths-and-butterflies-flower-brush-footed-butterfly-monarch-butterfly-macro-photography-nectar-invertebrate-pollinator-lycaenid-spring-arthropod-1419095.jpg"
    ];
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSString *url in urls){
            [tempArray addObject:[[RKImage alloc] initWithUrl:url]];
        }
        _images = [tempArray copy];
    }
    
    return self;
}
@end

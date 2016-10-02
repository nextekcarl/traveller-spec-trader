class DefinedTradeGood
  #This is the specific type of BasicTradeGood to be found
  #Has a name, ton increment, and Base Price
  attr_accessor :tonnage
  def self.specific(basic_trade_good, remaining_tonnage)
    case
      when basic_trade_good == "Basic Electronics"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Calculators/Adding Machines", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Video Game and Entertainment Systems", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Personal and Commercial Computers", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*4, remaining_tonnage].min)
            return "Banking Machines and Security Systems", @tonnage
          when 12
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Microprocessor Assemblies", @tonnage
        end
      when basic_trade_good == "Basic Machine Parts"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Stamped/Poured Cogs and Sprockets", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Piping and Attachment Pieces", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Engine Components", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Pneumatics and Hydraulics", @tonnage
          when 12
            @tonnage=([roll('1d6')*4, remaining_tonnage].min)
            return "Starship-Quality Components", @tonnage
        end
      when basic_trade_good == "Basic Manufactured Goods"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Second Stage Components", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Uniforms/Clothing Products", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Residential Appliances", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Furniture/Storage Systems/Tools", @tonnage
          when 12
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Vehicle/Survival Accessories", @tonnage
        end
      when basic_trade_good == "Basic Raw Materials"
        case roll('2d6')
          when 2
             @tonnage=([roll('1d6')*14, remaining_tonnage].min)
            return "Foundation Stones and Base Elements", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Workable Metals", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Workable Alloys", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Fabricated Plastics", @tonnage
          when 12
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Chemical Solutions or Compounds", @tonnage
        end
      when basic_trade_good == "Basic Consumables"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Feed-grade Vegetation", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Food-grade Vegetation", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Pre-packaged Food and Drink", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*8, remaining_tonnage].min)
            return "Survival Rations and Storage-packed Liquids", @tonnage
          when 12
            @tonnage=([roll('1d6')*4, remaining_tonnage].min)
            return "Junk Food/Soda/Beer", @tonnage
        end
      when basic_trade_good == "Basic Ore"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*14, remaining_tonnage].min)
            return "Bornite or Galena or Sedimentary Stone", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Chalcocite or Talc", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Bauxite, Coltan and Wolframite", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*8, remaining_tonnage].min)
            return "Acanthite, Cobaltite or Magnetite", @tonnage
          when 12
            @tonnage=([roll('1d6')*4, remaining_tonnage].min)
            return "Chromite or Cinnabar", @tonnage
        end
      when basic_trade_good == "Advanced Electronics"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Circuitry Bundles", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Fibre-optic Components", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "VR Computer and Sensor Packages", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Weapon Components", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Starship Bridge Components", @tonnage
          end
      when basic_trade_good == "Advanced Machine Parts"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Alloy and Plastic Tool Kits", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Starship Deckplate/Atmospheric Filters", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Fusion Conduits/Power Plant Shells", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Weapon Cores/Starship Hull", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Gravitic Gyros, Navigation Magnetics", @tonnage
        end
      when basic_trade_good == "Advanced Manufactured Goods"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "High-Pressure or Temperature-Resistant Components", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Protective or Specialised Clothing", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Survival Equipment/Colonisation Kits", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Computerised Job-related Gear", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Starship Add-Ons/Powered Armour Components", @tonnage
        end
      when basic_trade_good == "Advanced Weapons"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*7, remaining_tonnage].min)
            return "(TL7 or less) Slug Weapons", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "(TL10 or less) Slug Weapons", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "(TL12 or less) Slug or Energy Weapons/Heavy Slug Weapons", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "(TL15 or less) Slug or Energy Weapons/Explosives", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Artillery, Heavy Energy Weapons", @tonnage
        end
      when basic_trade_good == "Advanced Vehicles"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Engine Components or Packages", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Seafaring or Mole Vehicle Components or Packages", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Air/Raft Components or Packages", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Grav-Vehicle Components", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Spacecraft Components", @tonnage
        end
      when basic_trade_good == "Biochemicals"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Organic Glues, Acids or Bases/Vegetable Oil", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Ethanol/Fructose Syrup", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Biodiesel/Cooking Compounds", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Oxygenated Cleaner/Biodegradable Concentrates", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Gelid Oxygen-Substitutes/Bio-fusion Cell Fuel", @tonnage
        end
      when basic_trade_good == "Crystals & Gems"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*7, remaining_tonnage].min)
            return "Rock Salt/Compressed Coal", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Graphite/Quartz", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Silica/Focuser-Quality Gems", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Photonics/Synthetic Gems", @tonnage
          when 12
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Industrial Diamond/Jewellery-Quality Gems", @tonnage
        end
      when basic_trade_good == "Cybernetics"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+2, remaining_tonnage].min)
            return "Cybernetic Lubricants", @tonnage
          when 3..5
            @tonnage=([roll('1d6')+1, remaining_tonnage].min)
            return "Cybernetic Components/Physical Augments", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Cyber-Prosthetics", @tonnage
          when 9..11
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Cosmetic Prosthetics", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Real-Life Replacements and Augments", @tonnage
        end
      when basic_trade_good == "Live Animals"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Beasts of Burden", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Untrained Riding Animals", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Trained Riding Animals/Common Pets", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Untrained Guard Animals", @tonnage
          when 12
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Trained Guard Animals/Exotic Pets", @tonnage
        end
      when basic_trade_good == "Luxury Consumables"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*14, remaining_tonnage].min)
            return "Common Desserts/Rare Food Additives", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Common Desserts/Common Wine", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Rare Foods/Common Liquor", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Exotic Foods/Rare Desserts/Rare Liquor", @tonnage
          when 12
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Exotic Desserts/Exotic Liquor", @tonnage
        end
      when basic_trade_good == "Luxury Goods"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+2, remaining_tonnage].min)
            return "Rare Literature/Art", @tonnage
          when 3..5
            @tonnage=([roll('1d6')+1, remaining_tonnage].min)
            return "Jewellery/Alien Textiles", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Rare Clothing/Home Decorations", @tonnage
          when 9..11
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "VR Electronic Entertainment Devices", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Exotic Furnishings/Exquisite Jewellery", @tonnage
        end
      when basic_trade_good == "Medical Supplies"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Medical Uniforms/Disposable Tools", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Cosmetic Chemicals/Practitioner’s Tools", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "General Medical Equipment or Supplies", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Specialist Equipment or Supplies", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Micro-surgical Equipment or Supplies", @tonnage
        end
      when basic_trade_good == "Petrochemicals"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Crude Oil/Diesel", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Refined Kerosene/Purifi ed Oil", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Gasoline/Machine Lubricants", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*8, remaining_tonnage].min)
            return "Jet Fuel/Gelid Adhesives", @tonnage
          when 12
            @tonnage=([roll('1d6')*4, remaining_tonnage].min)
            return "Rocket Fuel/Power Plant Starter Charges", @tonnage
        end
      when basic_trade_good == "Pharmaceuticals"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+3, remaining_tonnage].min)
            return "OTC Drugs/Antibiotics", @tonnage
          when 3..5
            @tonnage=([roll('1d6')+2, remaining_tonnage].min)
            return "Antivenin/Prescription Medications", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Prescription Medications/Surgical", @tonnage
          when 9..11
            @tonnage=([2, remaining_tonnage].min)
            return "Anagathics", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Psi-Related Drugs/Viral Therapy Doses", @tonnage
        end
      when basic_trade_good == "Polymers"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Rubber/Vinyl Spooling", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Insulation/Polyurethane Foam", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Poured Plastics/Synthetic Fibre Spools", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Kevlar/Teflon", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Advanced Ballistic Weave", @tonnage
        end
      when basic_trade_good == "Precious Metals"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+2, remaining_tonnage].min)
            return "Bismuth/Indium", @tonnage
          when 3..5
            @tonnage=([roll('1d6')+1, remaining_tonnage].min)
            return "Beryllium/Silver", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Ruthenium/Rhenium", @tonnage
          when 9..11
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Gold/Osmium/Iridium", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Platinum/Rhodium", @tonnage
        end
      when basic_trade_good == "Radioactives"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+3, remaining_tonnage].min)
            return "Nuclear Waste/Deactivated Materials", @tonnage
          when 3..5
            @tonnage=([roll('1d6')+2, remaining_tonnage].min)
            return "Industrial Isotopes", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Medical Isotopes/Reactor-Grade Uranium", @tonnage
          when 9..11
            @tonnage=([1, remaining_tonnage].min)
            return "Weapons-Grade Plutonium/ Fusion Cell Rods", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Superweapon-grade Isotopes", @tonnage
        end
      when basic_trade_good == "Robots"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*7, remaining_tonnage].min)
            return "Automated Robotics/Cargo Drones", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Industrial or Personal Drones", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Combat or Guardian Drones", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Scout and Sensor Drones", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Advanced Robotics", @tonnage
        end
      when basic_trade_good == "Spices"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Table Salt/Black Pepper", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Adobo/Basil/Sage", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Aniseed/Curry/Fennel/White Pepper", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Cinnamon/Marjoram/Wasabi", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Black Salt/Saffron/Alien Flavourings", @tonnage
        end
      when basic_trade_good == "Textiles"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Yarn/Wool/Canvas", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Animal-based Fabrics", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Cotton or Flax-based Fabrics", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Synthetic Silks/Finished Common Clothing", @tonnage
          when 12
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Organic Silk/Satin/Finished Fine Clothing", @tonnage
        end
      when basic_trade_good == "Uncommon Ore"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Lead/Zinc", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Copper/Tin", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Nickel/Sodium/Tungsten", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Gold/Silver/Ilmenite", @tonnage
          when 12
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Platinum/Uranium", @tonnage
        end
      when basic_trade_good == "Uncommon Raw Materials"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*14, remaining_tonnage].min)
            return "Aluminium/Brass/Calcium", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Carbonate/Magnesium/Meteoric Iron", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Marble/Potassium/Titanium", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*8, remaining_tonnage].min)
            return "Stellite/Tombac", @tonnage
          when 12
            @tonnage=([roll('1d6')*3, remaining_tonnage].min)
            return "Depleted Uranium/Ceramic-Alloy", @tonnage
        end
      when basic_trade_good == "Wood"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Low-grade Rough Cuts/Construction Scrap", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "High-Grade Rough-Cut", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Construction-grade Timber", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Furniture-grade Timber/Rare Grades", @tonnage
          when 12
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Exotics (Pernambuco, White Mahogany, etc.)", @tonnage
        end
      when basic_trade_good == "Vehicles"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*14, remaining_tonnage].min)
            return "Wheeled Repair Components", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*12, remaining_tonnage].min)
            return "Tracked Repair Components", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*10, remaining_tonnage].min)
            return "Wheeled Components or Packages", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Wheeled Vehicles/Tracked Components or Packages", @tonnage
          when 12
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Tracked Vehicles", @tonnage
        end
      when basic_trade_good == "Biochemicals, Illegal"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Herbal Stimulants/Ultra-Caffeine", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Raw Growth Hormones", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Chemical Solvents/Protein Duplexer Steroids", @tonnage
          when 9..11
            @tonnage=([2, remaining_tonnage].min)
            return "Bio-Acid/Pheromone Extracts", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Genetic Mutagens/Organic Toxins", @tonnage
        end
      when basic_trade_good == "Cybernetics, Illegal"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Unlicensed Augment Tools and Parts", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Physical Enhancement Tissues", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Unlicensed Augmentatives/Combat Implant Additives", @tonnage
          when 9..11
            @tonnage=([2, remaining_tonnage].min)
            return "Combat Prosthetics/Surgical Duplications", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Mimicry Augmetics", @tonnage
        end
      when basic_trade_good == "Drugs, Illegal"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+2, remaining_tonnage].min)
            return "Herbal Stimulants/Biological Hallucinogens", @tonnage
          when 3..5
            @tonnage=([roll('1d6')+1, remaining_tonnage].min)
            return "Chemical Depressants/Natural Narcotics", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Chemical Stimulants and Hallucinogens", @tonnage
          when 9..11
            @tonnage=([2, remaining_tonnage].min)
            return "Designer Narcotics", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Alien Synthetics/Psi-Drugs", @tonnage
        end
      when basic_trade_good == "Luxuries, Illegal"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')+1, remaining_tonnage].min)
            return "Anti-Governmental Propaganda/Endangered Animal Products", @tonnage
          when 3..5
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Black-data Recordings/Slaving Gear", @tonnage
          when 6..8
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Extinct Animal Products", @tonnage
          when 9..11
            @tonnage=([2, remaining_tonnage].min)
            return "BTL Devices/Cloning Equipment", @tonnage
          when 12
            @tonnage=([1, remaining_tonnage].min)
            return "Forbidden Pleasures", @tonnage
        end
      when basic_trade_good == "Weapons, Illegal"
        case roll('2d6')
          when 2
            @tonnage=([roll('1d6')*6, remaining_tonnage].min)
            return "Chain-drive Weaponry/Armour-Piercing Ammunition", @tonnage
          when 3..5
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Protected Technologies/Explosive or Incendiary Ammunition", @tonnage
          when 6..8
            @tonnage=([roll('1d6')*5, remaining_tonnage].min)
            return "Synthetic Poisons/Personal-scale Mass Trauma Explosives", @tonnage
          when 9..11
            @tonnage=([roll('1d6')*2, remaining_tonnage].min)
            return "Arclight Weaponry/Biological or Chemical Weaponry/Naval Starship Weaponry", @tonnage
          when 12
            @tonnage=([roll('1d6'), remaining_tonnage].min)
            return "Disintegrators/Psi-Weaponry/Weapons of Mass Destruction", @tonnage
        end
      when basic_trade_good == "Exotics"
        #TODO: Handle Exotics somehow
        case d66
        when 11..13
          return "Alien Super-Science", 1
        when 14.16
          return "Alien Ancient Relic", 1
        when 21..23
          return "Prototype Armour", 1
        when 24..26
          return "Prototype Device", 1
        when 31..33
          return "Prototype Technology", 1
        when 34..36
          return "Prototype Vehicular Component", 1
        when 41..43
          return "Undiscovered Animal Species", 1
        when 44..46
          return "Undiscovered Plant Species", 1
        when 51..53
          return "Unique Chemical", 1
        when 54..56
          return "Unique Treasure", 1
        when 61..63
          return "Unique Weapon", 1
        when 64..66
          return "Progenitor Artefact", 1
        end
      else
        raise "Invalid Basic Trade Good: #{basic_trade_good}"
    end
  end

  def self.base_price
    {
      "Calculators/Adding Machines": 6000,
      "Video Game and Entertainment Systems": 8000,
      "Personal and Commercial Computers": 10000,
      "Banking Machines and Security Systems":12000,
      "Microprocessor Assemblies": 14000,
      "Stamped/Poured Cogs and Sprockets": 8000,
      "Piping and Attachment Pieces": 9000,
      "Engine Components": 10000,
      "Pneumatics and Hydraulics": 11000,
      "Starship-Quality Components": 12000,
      "Second Stage Components": 8000,
      "Uniforms/Clothing Products": 9000,
      "Residential Appliances": 10000,
      "Furniture/Storage Systems/Tools": 11000,
      "Vehicle/Survival Accessories": 12000,
      "Foundation Stones and Base Elements": 1000,
      "Workable Metals": 3000,
      "Workable Alloys": 5000,
      "Fabricated Plastics": 7000,
      "Chemical Solutions or Compounds": 9000,
      "Feed-grade Vegetation": 500,
      "Food-grade Vegetation": 1000,
      "Pre-packaged Food and Drink": 2000,
      "Survival Rations and Storage-packed Liquids":3000,
      "Junk Food/Soda/Beer": 5000,
      "Bornite or Galena or Sedimentary Stone":250,
      "Chalcocite or Talc": 500,
      "Bauxite, Coltan and Wolframite": 1000,
      "Acanthite, Cobaltite or Magnetite":1500,
      "Chromite or Cinnabar":2000,
      "Circuitry Bundles":25000,
      "Fibre-optic Components":50000,
      "VR Computer and Sensor Packages":100000,
      "Weapon Components":125000,
      "Starship Bridge Components":150000,
      "Alloy and Plastic Tool Kits":25000,
      "Starship Deckplate/Atmospheric Filters":50000,
      "Fusion Conduits/Power Plant Shells":75000,
      "Weapon Cores/Starship Hull":90000,
      "Gravitic Gyros, Navigation Magnetics":100000,
      "High-Pressure or Temperature-Resistant Components":25000,
      "Protective or Specialised Clothing":50000,
      "Survival Equipment/Colonisation Kits":100000,
      "Computerised Job-related Gear":125000,
      "Starship Add-Ons/Powered Armour Components":150000,
      "(TL7 or less) Slug Weapons":50000,
      "(TL10 or less) Slug Weapons":100000,
      "(TL12 or less) Slug or Energy Weapons/Heavy Slug Weapons":150000,
      "(TL15 or less) Slug or Energy Weapons/Explosives":200000,
      "Artillery, Heavy Energy Weapons":250000,
      "Engine Components or Packages":100000,
      "Seafaring or Mole Vehicle Components or Packages":140000,
      "Air/Raft Components or Packages":180000,
      "Grav-Vehicle Components":200000,
      "Spacecraft Components":250000,
      "Organic Glues, Acids or Bases/Vegetable Oil":10000,
      "Ethanol/Fructose Syrup":25000,
      "Biodiesel/Cooking Compounds":50000,
      "Oxygenated Cleaner/Biodegradable Concentrates":60000,
      "Gelid Oxygen-Substitutes/Bio-fusion Cell Fuel":80000,
      "Rock Salt/Compressed Coal":5000,
      "Graphite/Quartz":10000,
      "Silica/Focuser-Quality Gems":20000,
      "Photonics/Synthetic Gems":30000,
      "Industrial Diamond/Jewellery-Quality Gems":45000,
      "Cybernetic Lubricants":100000,
      "Cybernetic Components/Physical Augments":200000,
      "Cyber-Prosthetics":250000,
      "Cosmetic Prosthetics":350000,
      "Real-Life Replacements and Augments":500000,
      "Beasts of Burden":2500,
      "Untrained Riding Animals":5000,
      "Trained Riding Animals/Common Pets":10000,
      "Untrained Guard Animals":12500,
      "Trained Guard Animals/Exotic Pets":15000,
      "Common Desserts/Rare Food Additives":5000,
      "Common Desserts/Common Wine":10000,
      "Rare Foods/Common Liquor":20000,
      "Exotic Foods/Rare Desserts/Rare Liquor":30000,
      "Exotic Desserts/Exotic Liquor":50000,
      "Rare Literature/Art":50000,
      "Jewellery/Alien Textiles":100000,
      "Rare Clothing/Home Decorations":200000,
      "VR Electronic Entertainment Devices":250000,
      "Exotic Furnishings/Exquisite Jewellery":500000,
      "Medical Uniforms/Disposable Tools":10000,
      "Cosmetic Chemicals/Practitioner’s Tools":30000,
      "General Medical Equipment or Supplies":50000,
      "Specialist Equipment or Supplies":75000,
      "Micro-surgical Equipment or Supplies":100000,
      "Crude Oil/Diesel":2500,
      "Refined Kerosene/Purifi ed Oil":5000,
      "Gasoline/Machine Lubricants":10000,
      "Jet Fuel/Gelid Adhesives":20000,
      "Rocket Fuel/Power Plant Starter Charges":30000,
      "OTC Drugs/Antibiotics":25000,
      "Antivenin/Prescription Medications":50000,
      "Prescription Medications/Surgical":100000,
      "Anagathics":200000,
      "Psi-Related Drugs/Viral Therapy Doses":500000,
      "Rubber/Vinyl Spooling":1000,
      "Insulation/Polyurethane Foam":3000,
      "Poured Plastics/Synthetic Fibre Spools":7000,
      "Kevlar/Teflon":9000,
      "Advanced Ballistic Weave":10000,
      "Bismuth/Indium":10000,
      "Beryllium/Silver":25000,
      "Ruthenium/Rhenium":50000,
      "Gold/Osmium/Iridium":75000,
      "Platinum/Rhodium":100000,
      "Nuclear Waste/Deactivated Materials":500000,
      "Industrial Isotopes":750000,
      "Medical Isotopes/Reactor-Grade Uranium":1000000,
      "Weapons-Grade Plutonium/ Fusion Cell Rods":1250000,
      "Superweapon-grade Isotopes":1500000,
      "Automated Robotics/Cargo Drones":150000,
      "Industrial or Personal Drones":300000,
      "Combat or Guardian Drones":400000,
      "Scout and Sensor Drones":500000,
      "Advanced Robotics":650000,
      "Table Salt/Black Pepper":1000,
      "Adobo/Basil/Sage":3000,
      "Aniseed/Curry/Fennel/White Pepper":6000,
      "Cinnamon/Marjoram/Wasabi":9000,
      "Black Salt/Saffron/Alien Flavourings":12000,
      "Yarn/Wool/Canvas":1000,
      "Animal-based Fabrics":2000,
      "Cotton or Flax-based Fabrics":3000,
      "Synthetic Silks/Finished Common Clothing":4000,
      "Organic Silk/Satin/Finished Fine Clothing":5000,
      "Lead/Zinc":1000,
      "Copper/Tin":2500,
      "Nickel/Sodium/Tungsten":5000,
      "Gold/Silver/Ilmenite":7500,
      "Platinum/Uranium":10000,
      "Aluminium/Brass/Calcium":5000,
      "Carbonate/Magnesium/Meteoric Iron":10000,
      "Marble/Potassium/Titanium":20000,
      "Stellite/Tombac":35000,
      "Depleted Uranium/Ceramic-Alloy":50000,
      "Low-grade Rough Cuts/Construction Scrap":100,
      "High-Grade Rough-Cut":500,
      "Construction-grade Timber":1000,
      "Furniture-grade Timber/Rare Grades":2000,
      "Exotics (Pernambuco, White Mahogany, etc.)":4000,
      "Wheeled Repair Components":5000,
      "Tracked Repair Components":10000,
      "Wheeled Components or Packages":15000,
      "Wheeled Vehicles/Tracked Components or Packages":20000,
      "Tracked Vehicles":30000,
      "Herbal Stimulants/Ultra-Caffeine":10000,
      "Raw Growth Hormones":25000,
      "Chemical Solvents/Protein Duplexer Steroids":50000,
      "Bio-Acid/Pheromone Extracts":100000,
      "Genetic Mutagens/Organic Toxins":200000,
      "Unlicensed Augment Tools and Parts":100000,
      "Physical Enhancement Tissues":150000,
      "Unlicensed Augmentatives/Combat Implant Additives":250000,
      "Combat Prosthetics/Surgical Duplications":400000,
      "Mimicry Augmetics":650000,
      "Herbal Stimulants/Biological Hallucinogens":25000,
      "Chemical Depressants/Natural Narcotics":50000,
      "Chemical Stimulants and Hallucinogens":100000,
      "Designer Narcotics":200000,
      "Alien Synthetics/Psi-Drugs":300000,
      "Anti-Governmental Propaganda/angered Animal Products":10000,
      "Black-data Recordings/Slaving Gear":25000,
      "Extinct Animal Products":50000,
      "BTL Devices/Cloning Equipment":100000,
      "Forbidden Pleasures":200000,
      "Chain-drive Weaponry/Armour-Piercing Ammunition":50000,
      "Protected Technologies/Explosive or Inciary Ammunition":100000,
      "Synthetic Poisons/Personal-scale Mass Trauma Explosives":150000,
      "Arclight Weaponry/Biological or Chemical Weaponry/Naval Starship Weaponry":300000,
      "Disintegrators/Psi-Weaponry/Weapons of Mass Destruction":450000,
      "Alien Super-Science": 2000000,
      "Alien Ancient Relic": 2500000,
      "Prototype Armour": 1250000,
      "Prototype Device": 500000,
      "Prototype Technology": 750000,
      "Prototype Vehicular Component": 1000000,
      "Undiscovered Animal Species": 1500000,
      "Undiscovered Plant Species": 1500000,
      "Unique Chemical": 5000000,
      "Unique Treasure": 10000000,
      "Unique Weapon": 15000000,
      "Progenitor Artefact": 25000000,
    }
  end
end

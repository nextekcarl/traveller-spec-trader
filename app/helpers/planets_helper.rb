module PlanetsHelper
  def technology_description(tech_code)
    case tech_code.to_s
    when "0"
      return "(Primitive) No technology. TL 0 species have only discovered
the simplest tools and principles, and are on a par with Earth’s
Stone Age."
    when "1"
      return "(Primitive) Roughly on a par with Bronze or Iron age technology.
TL 1 science is mostly superstition, but they can manufacture
weapons and work metals."
    when "2"
      return "(Primitive) Renaissance technology. TL 2 brings with it a
greater understanding of chemistry, physics, biology and astronomy
as well as the scientifi c method."
    when "3"
      return "(Primitive) The advances of TL 2 are now applied, bringing the
germ of industrial revolution and steam power. Primitive fi rearms
now dominate the battlefield. This is roughly comparable to the
early 19th century."
    when "4"
      return "(Industrial) The transition to industrial revolution is complete,
bringing plastics, radio and other such inventions. Roughly
comparable to the late 19th/early 20th century."
    when "5"
      return "(Industrial) TL 5 brings widespread electrification, telecommunications
and internal combustion. At the high end of the
TL, atomics and primitive computing appear. Roughly on a par with
the mid–20th century."
    when "6"
      return "(Industrial) TL 6 brings the development of fission power and
more advanced computing. Advances in materials technology and
rocketry bring about the dawn of the space age."
    when "7"
      return "(Pre-Stellar) A pre-stellar society can reach orbit reliably and
has telecommunications satellites. Computers become common.
At the time of writing, humanity is currently somewhere between
TL 7 and TL 8."
    when "8"
      return "(Pre-Stellar) At TL 8, it is possible to reach other worlds in
the same system, although terraforming or full colonisation are not
within the culture’s capacity. Permanent space habitats become
possible. Fusion power becomes commercially viable."
    when "9"
      return "(Pre-Stellar) The defi ning element of TL 9 is the development
of gravity manipulation, which makes space travel vastly safer
and faster. This research leads to development of the Jump drive,
which occurs near the end of this Tech Level. TL 9 cultures can
colonise other worlds, although going to a colony is generally
a one-way trip."
    when "10"
      return "(Early Stellar) With the advent of Jump, nearby systems
are opened up. Orbital habitats and factories become common.
Interstellar travel and trade lead to an economic boom. Colonies
become much more viable."
    when "11"
      return "(Early Stellar) The fi rst true artifi cial intelligences become
possible, as computers are able to model synaptic networks. Gravsupported
structures reach to the heavens. Jump–2 travel becomes
possible, allowing easier travel beyond the one-Jump stellar mains."
    when "12"
      return "(Average Stellar) Weather control revolutionises terraforming
and agriculture. Man-portable plasma weapons and carrier-mounted
fusion guns make the battlefield untenable for unarmoured
combatants. Jump–3 travel is developed."
    when "13"
      return "(Average Stellar) The battle dress appears on the battlefi eld
in response to the new weapons. Cloning of body parts becomes
easy. Advances in hull design and thruster plates means that
spacecraft can easily enter atmosphere and even go underwater.
Jump–4 travel."
    when "14"
      return "(Average Stellar) Fusion weapons become man-portable.
Flying cities appear. Jump–5 travel."
    when "15"
      return "(High Stellar) Black globe generators suggest a new direction
for defensive technologies, while the development of synthetic
anagathics means that the human lifespan is now vastly increased.
Jump–6 travel."
    end
  end

  def government_description(government)
    case government.to_s
    when "0"
      return "None No government structure. In many cases,
      family bonds predominate.
      Family, Clan,
      Anarchy.
      Common
      Contraband: None"
    when "1"
      return "Company/corporation Ruling functions are assumed by a company
      managerial elite, and most citizenry are
      company employees or dependants.
      Corporate outpost,
      asteroid mine,
      feudal domain.
      Common
      Contraband: Weapons, Drugs,
      Travellers"
    when "2"
      return "Participating democracy Ruling functions are reached by the advice and
      consent of the citizenry directly.
      Collective, tribal
      council, commlinked
      consensus
      Common
      Contraband: Drugs"
    when "3"
      return "Self-perpetuating oligarchy Ruling functions are performed by a restricted
      minority, with little or no input from the mass
      of citizenry.
      Plutocracy,
      hereditary ruling
      caste.
      Common
      Contraband: Technology,
      Weapons,
      Travellers"
    when "4"
      return "Representative democracy Ruling functions are performed by elected
      representatives.
      Republic,
      democracy.
      Common
      Contraband: Drugs, Weapons,
      Psionics."
    when "5"
      return "Feudal technocracy Ruling functions are performed by specifi c
      individuals for persons who agree to be ruled
      by them. Relationships are based on the
      performance of technical activities which are
      mutually beneficial.
      Common
      Contraband: Technology,
      Weapons,
      Computers"
    when "6"
      return "Captive government Ruling functions are performed by an imposed
      leadership answerable to an outside group.
      A colony or
      conquered area.
      Common
      Contraband: Weapons,
      Technology,
      Travellers"
    when "7"
      return "Balkanisation No central authority exists; rival governments
      complete for control. Law level refers to the
      government nearest the starport.
      Multiple
      governments,
      civil war.
      Common
      Contraband: Varies"
    when "8"
      return "Civil service bureaucracy Ruling functions are performed by government
      agencies employing individuals selected for
      their expertise.
      Technocracy,
      Communism.
      Common
      Contraband: Drugs, Weapons"
    when "9"
      return "Impersonal Bureaucracy Ruling functions are performed by agencies
      which have become insulated from the
      governed citizens.
      Entrenched castes
      of bureaucrats,
      decaying empire.
      Common
      Contraband: Technology,
      Weapons, Drugs,
      Travellers, Psionics"
    when "A"
      return "Charismatic dictator Ruling functions are performed by agencies
      directed by a single leader who enjoys the
      overwhelming confi dence of the citizens.
      Revolutionary
      leader, messiah,
      emperor.
      Common
      Contraband: None"
    when "B"
      return "Non-charismatic leader A previous charismatic dictator has been
      replaced by a leader through normal channels.
      Military
      dictatorship,
      hereditary
      kingship.
      Common
      Contraband: Weapons,
      Technology,
      Computers"
    when "C"
      return "Charismatic oligarchy Ruling functions are performed by a select
      group of members of an organisation or class
      which enjoys the overwhelming confi dence of
      the citizenry.
      Junta,
      revolutionary
      council.
      Common
      Contraband: Weapons"
    when "D"
      return "Religious dictatorship Ruling functions are performed by a religious
      organisation without regard to the specifi c
      individual needs of the citizenry.
      Cult, transcendent
      philosophy, psionic
      group mind.
      Common
      Contraband: Varies"
    end
  end

  def population_description(population)
    case population.to_s
    when "0"
      return "0"
    when "1"
      return "Few 1+ A tiny farmstead or a single family"
    when "2"
      return "Hundreds 100+ A village"
    when "3"
      return "Thousands 1,000+"
    when "4"
      return "Tens of thousands 10,000+ Small town"
    when "5"
      return "Hundreds of thousands 100,000+ Average city"
    when "6"
      return "Millions 1,000,000+"
    when "7"
      return "Tens of millions 10,000,000+ Large city"
    when "8"
      return "Hundreds of millions 100,000,000+"
    when "9"
      return "Billions 1,000,000,000+ Present day Earth"
    when "A"
      return "Tens of billions 10,000,000,000+"
    when "B"
      return "Hundreds of billions 100,000,000,000+ Incredibly crowded world"
    when "C"
      return "Trillions 1,000,000,000,000+ World-city"
    end
  end

  def hydro_description(hydro)
    hydro = 10 if hydro == 'A'
    return "#{hydro.to_i * 10}% surface liquid."
  end

  def starport_description(star_port)
    case star_port.to_s
    when "A"
      return "Excellent, berthing: 1d6x1000Cr, Refined fuel, Shipyard (all) Repairs"
    when "B"
      return "Good, berthing: 1d6x500Cr, Refined fuel, Shipyard (Spacecraft) Repairs"
    when "C"
      return "Routine, berthing: 1d6x100Cr, Refined fuel, Shipyard (small craft) Repairs"
    when "D"
      return "Poor, berthing: 1d6x10Cr, Unrefined fuel, Limited Repairs"
    when "E"
      return "Frontier, berthing: 0, Unrefined fuel, No Repairs"
    when "X"
      return "None, berthing: 0Cr, no fuel, No Repairs"
    end
  end

  def travel_code_description(travel_code)
    case travel_code.to_s
    when "A"
      return "Amber. An Amber world has
been deemed dangerous by the Imperium, and travellers are warned
to be on their guard. Amber worlds are often undergoing upheaval
or revolution, or else are naturally hazardous environments."
    when "G"
      return "Green, no restrictions"
    when "R"
      return "Red, worlds like this are interdicted and travel to them is forbidden. A world
might be Red because the Imperium wishes to preserve it, or
because the world is too dangerous to allow visitors. Interdictions
are enforced by the Imperial Navy."
    end
  end

  def bases_description(bases)
    return 'No bases' if bases.blank?
    bases_text = []
    bases.split('').each do |base|
      case base
      when 'N'
        bases_text << 'Naval'
      when 'S'
        bases_text << 'Scout'
      when 'T'
        bases_text << 'TAS'
      when 'C'
        bases_text << 'Consulate'
      when 'P'
        bases_text << 'Pirate'
      when 'R'
        bases_text << 'Research'
      end
    end
    return 'Base(s): ' + bases_text.join(', ')
  end

  def law_description(law)
    case law.to_s
    when "0"
      return "No restrictions."
    when "1"
      return "Poison gas,
      explosives,
      undetectable
      weapons, WMD
      Highly addictive and
      dangerous narcotics
      Intellect programs Dangerous
      technologies such
      as nanotechnology
      Visitors must
      contact planetary
      authorities by
      radio, landing
      is permitted
      anywhere
      Dangerous
      talents must be
      registered."
    when "2"
      return "Portable energy
      weapons (except
      ship-mounted
      weapons)
      Highly addictive
      narcotics
      Agent programs Alien technology Visitors must
      report passenger
      manifest, landing
      is permitted
      anywhere
      All psionic
      powers must be
      registered; use of
      dangerous powers
      forbidden."
    when "3"
      return "Heavy weapons Combat drugs Intrusion
      programs
      TL 15 items Landing only at
      starport or other
      authorised sites
      Use of telepathy
      restricted to
      government approved
      telepaths"
    when "4"
      return "Light assault
      weapons and
      submachine guns
      Addictive narcotics Security programs TL 13 items Landing only at
      starport
      Use of
      teleportation
      and clairvoyance
      restricted"
    when "5"
      return "Personal
      concealable
      weapons
      Anagathics Expert programs TL 11 items Citizens must
      register offworld
      travel, visitors
      must register all
      business
      Use of all psionic
      powers restricted
      to government
      psionicists"
    when "6"
      return "All firearms
      except shotguns
      and stunners;
      carrying weapons
      discouraged
      Fast and Slow drugs Recent news from
      offworld.
      TL 9 items Visits
      discouraged;
      excessive contact
      with citizens
      forbidden
      Possession of
      psionic drugs
      banned"
    when "7"
      return "Shotguns All narcotics Library programs,
      unfi ltered data
      about other
      worlds. Free
      speech curtailed.
      TL 7 items Citizens may
      not leave planet;
      visitors may not
      leave starport
      Use of psionics
      forbidden"
    when "8"
      return "All bladed weapons,
      stunners
      Medicinal drugs Information
      technology, any
      non-critical data
      from offworld,
      personal media.
      TL 5 items Landing
      permitted only to
      imperial agents
      Psionic-related
      technology banned"
    else
      return "Any weapons All drugs Any data from
      offworld. No free
      press.
      TL 3 items No offworlders
      permitted
      All psionics"
    end
  end

  def size_description(size)
    case size.to_s
    when "0"
      return "800 km Asteroid, orbital complex Negligible gravity"
    when "1"
      return "1,600 km 0.05g"
    when "2"
      return "3,200 km Triton, Luna, Europa 0.15g"
    when "3"
      return "4,800 km Mercury, Ganymede 0.25g"
    when "4"
      return "6,400 km Mars 0.35g"
    when "5"
      return "8,000 km 0.45g"
    when "6"
      return "9,600 km 0.7g"
    when "7"
      return "11,200 km 0.9g"
    when "8"
      return "12,800 km Earth 1.0g"
    when "9"
      return "14,400 km 1.25g"
    when "A"
      return "16,000 km 1.4g"
    end
  end

  def atmosphere_description(atmos)
    case atmos.to_s
    when "0"
      return "None, ex: Moon, 0.00, Vacc Suit"
    when "1"
      return "Trace, ex: Mars, 0.001 to 0.09, Vacc Suit"
    when "2"
      return "Very Thin, Tainted 0.1 to 0.42, Respirator, Filter"
    when "3"
      return "Very Thin 0.1 to 0.42, Respirator"
    when "4"
      return "Thin, Tainted, 0.43 to 0.7, Filter"
    when "5"
      return "Thin, 0.43 to 0.7"
    when "6"
      return "Ex: Standard Earth, 0.71–1.49"
    when "7"
      return "Standard, Tainted 0.71–1.49, Filter"
    when "8"
      return "Dense, 1.5 to 2.49"
    when "9"
      return "Dense, Tainted 1.5 to 2.49, Filter"
    when "A"
      return "Exotic, Varies, Air Supply"
    when "B"
      return "Corrosive, ex: Venus, Varies, Vacc Suit"
    when "C"
      return "Insidious, Varies, Vacc Suit"
    when "D"
      return "Dense, High, 2.5+"
    when "E"
      return "Thin, Low 0.5 or less"
    when "F"
      return "Unusual, Varies, Varies"
    end
  end
end

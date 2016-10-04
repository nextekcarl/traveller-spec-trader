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
fusion guns make the battlefi eld untenable for unarmoured
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
      return ""
    when "1"
      return ""
    when "2"
      return ""
    when "3"
      return ""
    when "4"
      return ""
    when "5"
      return ""
    when "6"
      return ""
    when "7"
      return ""
    when "8"
      return ""
    when "9"
      return ""
    when "A"
      return ""
    when "B"
      return ""
    when "C"
      return ""
    when "D"
      return ""
    when "E"
      return ""
    when "F"
      return ""
    end
  end

  def population_description(population)
    case population.to_s
    when "0"
      return ""
    when "1"
      return ""
    when "2"
      return ""
    when "3"
      return ""
    when "4"
      return ""
    when "5"
      return ""
    when "6"
      return ""
    when "7"
      return ""
    when "8"
      return ""
    when "9"
      return ""
    when "A"
      return ""
    when "B"
      return ""
    when "C"
      return ""
    when "D"
      return ""
    when "E"
      return ""
    when "F"
      return ""
    end
  end

  def hydro_description(hydro)
    hydro = 10 if hydro == 'A'
    return "#{hydro.to_i * 10}% surface liquid."
  end
end

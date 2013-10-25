# Simulation Banner
puts "\n\n"
puts "###############################################################################"
puts "#                                                                             #"
puts "# CARNOT HEAT ENGINE version 01.02                                            #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Copyright 2011-13 by Mark Ciotola; available for use under GNU license      #"
puts "# Last revised on 25 Oct 2013                                                 #" 
puts "# Website: http://www.heatsuite.com                                           #"
puts "# Source site: https://github.com/mciotola/carnot_heat_engine                 #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Description: simulates a carnot heat engine operating across a              #"
puts "# fixed thermal difference.                                                   #"
puts "#                                                                             #"
puts "###############################################################################"
puts "\n\n"

      ###############################################################################
      #                                                                             #
      # Developed with Ruby 1.9.2                                                   #
      # Takes the following parameters: temperature of thermal reservoirs           #
      #                                 energy flow from warmer reservoir           #
      #                                                                             #
      ###############################################################################

puts "================================== Background =================================\n\n"
  
puts " A Carnot Engine operating across a thermal difference to do work. "
puts " It has the maximum possible efficiency of a heat engine.  "
puts " Part of that heat energy flow becomes waste heat. "
puts "\n"
puts " Carnot efficiency = 1 - (T cold/T hot), where T is temperature. \n\n"  
puts " Work = Carnot efficiency * heat energy flow from warmer reservoir.  \n"  
puts "\n"
puts " All temperatures should be units of Kelvin (or K), which is the "
puts " temperature in Celsius + 273.15. 0K is absolute zero. \n"  
puts "\n"
puts " In this simulation, the magnitude of the thermal difference is fixed.\n"  
puts "\n\n"  
  

# Include the Math library
  include Math  
  
  
# Initialize simulation parameters.
 
  # You can adjust them, as long as both temperatures are positive. A decimal point 
  # must be added to tell Ruby to allow floating point calculations.

  warmertemp = 400.0  # in K
  coolertemp = 100.0  # K
  flowfromwarmresv = 100.0  # J/s
  

# Display the parameters 

  puts "================================== Parameters =================================\n\n"

  puts sprintf "                  Warmer temp: \t %7.3f %s", warmertemp.to_s, " K"
  puts sprintf "                  Cooler temp: \t %7.3f %s", coolertemp.to_s, " K"
  puts sprintf "   Heat energy flow from warm: \t %7.3f %s", flowfromwarmresv.to_s, " J/s"
  puts "\n\n"  

# Run the simulation 

  tempdiff = warmertemp - coolertemp

  
  efficiency = 1.0 - (coolertemp/warmertemp)
  efficiencypercent = efficiency * 100.0
  workdone = flowfromwarmresv * efficiency
  flowtocool = flowfromwarmresv - workdone
  
  entropychangehot = - (flowfromwarmresv/warmertemp)
  entropychangecool = (flowtocool/coolertemp)
  entropyincrease = entropychangehot + entropychangecool

# Display the output 

  puts "==================================== Output ===================================\n\n"

  puts sprintf "                    Temp diff: \t %7.3f %s" , tempdiff.to_s,  " K"	
  puts sprintf "                   Efficiency: \t %7.3f %s" , efficiencypercent.to_s,  " %"
  puts sprintf "                    Work done: \t %7.3f %s" , workdone.to_s, " J/s"
  puts sprintf "                 Flow to cool: \t %7.3f %s" , flowtocool.to_s, " J/s"
  puts sprintf "    Entropy removed from warm: \t %7.3f %s" , entropychangehot.to_s, " J/K/s"
  puts sprintf "        Entropy added to cool: \t %7.3f %s" , entropychangecool.to_s, " J/K/s"
  puts sprintf "     Entropy change of system: \t %7.3f %s" , entropyincrease.to_s, " J/K/s"


  puts "\n\n"

  puts "================================== Units Key ==================================\n\n"
  puts "  Abbreviation: \t\t Unit:"
  puts "\n"
  puts "       J \t\t\t Joules, a unit of energy"
  puts "       K \t\t\t Kelvin, a unit of temperature"
  puts "       s \t\t\t seconds, a unit of time"
  puts "\n\n"


  puts "================================== References =================================\n\n"
  puts "Daniel V. Schroeder, 2000, \"An Introduction to Thermal Physics.\""
  puts "Eric W. Weisstein, 2007, http://scienceworld.wolfram.com/physics/CarnotEngine.html"
  puts "\n\n"





# Simulation Banner
puts "\n\n"
puts "###############################################################################"
puts "#                                                                             #"
puts "# CARNOT HEAT ENGINE version P 1.05                                           #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Copyright 2011-13 by Mark Ciotola; available for use under GNU license      #"
puts "# Last revised on 22 Oct 2013                                                 #" 
puts "# Website: http://www.fastentropy.com                                         #"
puts "# Source site: github                                                         #"
puts "#_____________________________________________________________________________#"
puts "#                                                                             #"
puts "# Description:                                                                #"
puts "# This simulation calculates the flow of heat energy across a thermal.        #"
puts "# conductor that connects a warmer object to a cooler object.                 #"
puts "#                                                                             #"
puts "###############################################################################"
puts "\n\n"

###############################################################################
#                                                                             #
# Developed with Ruby 1.9.2                                                   #
# Takes the following parameters: temperature of reservoirs                   #
#                                                                             #
###############################################################################


  puts "============================== Background ==============================\n\n"
  
  puts " A Carnot Engine has the maximum possible efficiency of a heat engine.  "
  puts " It operates across a thermal difference and uses heat energy flow to do work.  "
  puts " Part of that heat energy flow becomes waste heat. "
  puts "\n"
  puts " Carnot efficiency = 1 - (T cold/T hot) \n"  
  puts " Work per unit of heat flow = Carnot efficiency * unit of heat flow.  \n"  
  puts "\n\n"
  puts " All temperatures should be un units of Kelvin (or K), which is the "
  puts " temperature in Celsius + 273.15. 0K is absolute zero. The K for Kelvin "
  puts " is different than the lowercase k for thermal conductivity.\n"  
  puts "\n\n"
  
# Include the Math library
  include Math  
  
  
# Initialize simulation parameters

  warmertemp = 400.0 # in K; decimal point added to tell Ruby to allow floating point calculations
  coolertemp = 100.0 # K
  flowfromwarmresv = 100.0 # J/s
  

# Display the parameters 

  puts "============================== Parameters ==============================\n\n"

  puts sprintf "  Warmer temp (in K): \t\t %7.3f " , warmertemp.to_s
  puts sprintf "  Cooler temp (in K): \t\t %7.3f " , coolertemp.to_s
  puts sprintf "  Flow from warm (J/s): \t %7.3f " , flowfromwarmresv.to_s
  #puts sprintf "  Thermal conductivity: \t %7.3f " , thermalconductivity.to_s
  #puts sprintf "  Area (in m^2): \t\t %7.3f " , area.to_s
  #puts sprintf "  Length (in m): \t\t %7.3f " , length.to_s
  #puts sprintf "  Material: \t\t\t %7s " , material
  puts "\n\n"  

# Run the simulation 

#  if material == 'iron'
#	thermalconductivity = 80.0
 # elsif material == 'copper'
  #  thermalconductivity = 400.0
  #elsif material == 'wood'
   # thermalconductivity = 0.08
  #end

  tempdiff = warmertemp - coolertemp
  # heatenergyflow = ( (area * thermalconductivity) / length) * tempdiff
  
  # need different heat flows for hot and cold reservoirs
  
  efficiency = 1.0 - (coolertemp/warmertemp)
  efficiencypercent = efficiency * 100.0
  workdone = flowfromwarmresv * efficiency
  flowtocool = flowfromwarmresv - workdone
  
  entropychangehot = - (flowfromwarmresv/warmertemp)
  entropychangecool = (flowtocool/coolertemp)
  entropyincrease = entropychangehot + entropychangecool

# Display the output 


  puts "================================= Output ===============================\n\n"
  #puts sprintf "  Thermal Conductivity of %s %s %4.3f", material, "is", thermalconductivity	
  puts sprintf "  Temp diff (in degrees K): \t %10.3f " , tempdiff.to_s	
  puts sprintf "  Flow from warm (J/s): \t %10.3f " , flowfromwarmresv.to_s  
  puts sprintf "  Efficiency (%%): \t\t %10.3f " , efficiencypercent.to_s
  puts sprintf "  Work done (in J/s): \t\t %10.3f " , workdone.to_s
  puts sprintf "  Flow to cool (J/s): \t\t %10.3f " , flowtocool.to_s
  puts sprintf "  Entropy Increase Hot (in J/K/s): \t %10.3f " , entropychangehot.to_s
  puts sprintf "  Entropy Decrease Cold (in J/K/s): \t %10.3f " , entropychangecool.to_s
  puts sprintf "  Entropy Increase (in J/K/s): \t %10.3f " , entropyincrease.to_s


  puts "\n\n"

  puts "=============================== Units Key ==============================\n\n"
  puts "  Abbreviation \t\t\t Unit"
  puts "  J \t\t\t\t Joules, a unit of energy"
  puts "  K \t\t\t\t Kelvin, a unit of temperature"
  puts "  m \t\t\t\t meters, a unit of length"
  puts "  s \t\t\t\t seconds, a unit of time"
  puts "\n\n"


  puts "=============================== Reference ==============================\n\n"
  puts "Daniel V. Schroeder, 2000, \"An Introduction to Thermal Physics.\""
  puts "\n\n"


# Table of thermal conductivities (Watts/meter/Kelvin)
# Material	Thermal Conductivity
# air				  0.026
# wood				  0.08
# water				  0.6
# glass				  0.8
# iron				 80
# copper			400


########################### UNUSED CODE THAT MIGHT BE NEEDED LATER ###############################

#      engine.efficiency = exp( - 6 * ((bubble.period - 1)/periods.to_f ) )


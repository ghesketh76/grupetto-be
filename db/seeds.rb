Ride.destroy_all
User.destroy_all


grant=User.create(username: "grant123", password: "grant123", name: "Grant")

Ride.create(
    name: "Saturday Sweet Spot", 
    ride_type: "Sweet Spot Ride", 
    meeting_location: "Maple Grove Park", 
    meeting_location_lat: 39.761427, 
    meeting_location_long: -105.163054, 
    start_time: "8:00", 
    day_half: "AM",
    day_of_week: "Saturday",
    user: grant
    )
Ride.create(
    name: "Climbing Night", 
    ride_type: "Climbing Ride", 
    meeting_location: "Beverley Heights Park", 
    meeting_location_lat: 39.741902, 
    meeting_location_long: -105.228006, 
    start_time: "6:00", 
    day_half: "PM",
    day_of_week: "Wednesday",
    user: grant
    )
Ride.create(
    name: "Sunday Z2 Spins", 
    ride_type: "Zone 2", 
    meeting_location: "Boulder Reservoir", 
    meeting_location_lat: 40.071539, 
    meeting_location_long: -105.234202, 
    start_time: "9:00", 
    day_half: "AM",
    day_of_week: "Sunday",
    user: grant
    )
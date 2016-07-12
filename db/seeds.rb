# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

b = Building.create(name: "k")
f = Floor.create(number: 1, building_id: b.id)
fg = FloorGeometry.create(floor_id: f.id, f_coordinates_array: [[0,0], [210,0],[210,210],[0,210]])
b2 = Building.create(name: "g")
f2 = Floor.create(number: 1, building_id: b2.id)
fg2 = FloorGeometry.create(floor_id: f2.id, f_coordinates_array: [[0,0], [210,0],[210,210],[0,210]])

a = Auditory.create(name: "k-1", floor_id: f.id)
ag = AuditoryGeometry.create(auditory_id: a.id, a_coordinates_array: [[10,10], [110,10],[110,110],[10,110]])
a2 = Auditory.create(name: "g-1", floor_id: f.id)
ag2 = AuditoryGeometry.create(auditory_id: a2.id, a_coordinates_array: [[120,120], [200,120],[200,200],[120,200]])
a3 = Auditory.create(name: "g-2", floor_id: f2.id)
ag3 = AuditoryGeometry.create(auditory_id: a3.id, a_coordinates_array: [[10,10], [110,10],[110,110],[10,110]])

d = Desk.create(name: "d1", auditory_id: a.id)
dg = DeskGeometry.create(front_point: 1, desk_id: d.id, d_coordinates_array: [[50,20], [80,20],[80,50],[50,50]])
d2 = Desk.create(name: "d1", auditory_id: a3.id)
dg2 = DeskGeometry.create(front_point: 1, desk_id: d2.id, d_coordinates_array: [[50,20], [80,20],[80,50],[50,50]])

c = Computer.create(name: "1", desk_id: d.id)
cg = ComputerGeometry.create(front_point: 1, computer_id: c.id, c_coordinates_array: [[52,30], [60,30],[60,40],[52,40]])
c2 = Computer.create(name: "1", desk_id: d2.id)
cg2 = ComputerGeometry.create(front_point: 1, computer_id: c2.id, c_coordinates_array: [[52,30], [60,30],[60,40],[52,40]])

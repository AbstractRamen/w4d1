# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
aa = User.create(username: "AA")
bb = User.create(username: "BB")
cc = User.create(username: "CC")


Artwork.destroy_all
a = Artwork.create(title: "A piece", image_url: "A url", artist_id: aa.id)
b = Artwork.create(title: "B piece", image_url: "B url", artist_id: bb.id)
c = Artwork.create(title: "C piece", image_url: "C url", artist_id: cc.id)


ArtworkShare.destroy_all
aaa = ArtworkShare.create(artwork_id: a.id, viewer_id: aa.id)
bbb = ArtworkShare.create(artwork_id: a.id, viewer_id: bb.id)
ccc = ArtworkShare.create(artwork_id: a.id, viewer_id: cc.id)
eee = ArtworkShare.create(artwork_id: c.id, viewer_id: bb.id)
ddd = ArtworkShare.create(artwork_id: b.id, viewer_id: cc.id)

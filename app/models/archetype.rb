class Archetype
  ALL = {
    artist: { 
      name: 'The Artist',
      description: 'With her head in the clouds, and a paintbrush in hand, the artist archetype is the most likely to dream up truly creative solutions in technology. With a penchant for design and a flair for music, the artist is often found seeking inspiration in art galleries, or working on a photography project. You can expect this girl to invent technology that supports the artistic community: designers, film-makers and more. ',
      full_image_name: 'characters/artist.png',
      face_image_name: 'thumbnails/artist.png'
    },
    explorer: { 
      name: 'The Explorer',
      description: "Bravely breaking down barriers, and fearlessly going outside her comfort zone, the adventurer is always on the hunt for new frontiers in technology. Never one to be fenced in, she’s ready to get up and go where no tech girl has gone before. Her pioneering spirit is an inspiration to her fellow tech girls, and she’s always ready for the next big adventure!",
      full_image_name: 'characters/explorer.png',
      face_image_name: 'thumbnails/explorer.png'
    },
    daredevil: { 
      name: 'The Daredevil',
      description: "Never tell the the daredevil something can't be done! She just won't believe it. The daredevil is always ready to push the boundaries and use technology in new and innovative ways to come up with answers nobody thought possible! Dressed most often in sharp black, with a few piercings and maybe even a tattoo, the daredevil might look a little wild but underneath it all she's a tech maverick with a heart of gold.",
      full_image_name: 'characters/daredevil.png',
      face_image_name: 'thumbnails/daredevil.png'
    },
    tomboy: { 
      name: 'The Tomboy',
      description: "Who says girls have to wear pink and play with dolls? Not this gal! The tomboy doesn't mind getting her hands dirty, and can mix it with the boys just as easily as the girls. She's sporty and light-hearted, and loves to take things apart to see how they work before putting them back together again in her own way! Usually found in jeans, t-shirts and cool sneakers, the tomboy is always ready to leap into action.",
      full_image_name: 'characters/tomboy.png',
      face_image_name: 'thumbnails/tomboy.png'
    },
    sophisticate: { 
      name: 'The Sophisticate',
      description: "This girl is far from precious, but she does love to display her femininity and fashion sense - she uses her style to express herself and she doesn't see why she can't be fashion-forward AND a lover of technology at the same time! The sophisticate likes high-end fashion, 6 inch heels and technology that looks hot and works like a dream. She can see her ICT career taking her all over the world, flying first class naturally!",
      full_image_name: 'characters/sophisticate.png',
      face_image_name: 'thumbnails/sophisticate.png'
    }
  }

  def self.with_key(key:)
    ALL[key]
  end

  def self.keys
    ALL.keys
  end

  def self.form_collection
    collection = []
    Archetype::ALL.each_pair { |k, v| collection << [v[:name], k.to_s]} 
    collection
  end
end

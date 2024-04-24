# Eliminar todos los registros existentes en las tablas
PostTag.delete_all
Tag.delete_all
Post.delete_all
User.delete_all

# Crear usuarios
usr1 = User.create!(
    name: 'Juan Pérez',
    email: 'jperez@example.com',
    password: '123456789'
)

usr2 = User.create!(
    name: 'Johon Doe',
    email: 'johondoe@example.com',
    password: '123456789'
)

usr3 = User.create!(
    name: 'Daniel',
    email: 'daniel.guzman.com',
    password: '123456788'
)
usr4 = User.create!(
    name: 'Colomba Barahona',
    email: 'colomba@gmail.com',
    password: '123456789'
)

usr5 = User.create!(
    name: 'Daniel Guzman',
    email: 'daniel.guzman.f2@gmail.com',
    password: '123456789'
)

# Crear algunos tags
tags = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4', 'Tag 5']

tags.each do |tag_name|
  Tag.create!(name: tag_name)
end

# Crear algunos posts
post1 = Post.create!(
    title: 'Post 1',
    content: 'Este es el contenido del mejor post del mundo',
    user_id: usr1.id,
    published_at: Time.now,
    answers_count: 0,
    likes_count: 0,
)

post2 = Post.create!(
    title: 'El segundo mejor post',
    content: 'Este es el contenido del segundo mejor post del mundo',
    user_id: usr2.id,
    published_at: Time.now,
    answers_count: 19,
    likes_count: 30,
    parent_post_id: post1.id
)

post3 = Post.create!(
    title: 'El post mas Bkn',
    content: 'Este es el post de los niños bkns',
    user_id: usr3.id,
    published_at: Time.now,
    answers_count: 1,
    likes_count: 100,
    parent_post_id: post2.id
)

post4 = Post.create!(
    title: 'El cuarto post',
    content: 'La cuarta es la vencida',
    user_id: usr4.id,
    published_at: Time.now,
    answers_count: 40,
    likes_count: 1000,
    parent_post_id: post3.id
)
post5 = Post.create!(
    title: 'Me encantan los otros post',
    content: 'Es bueno que gusten los demas post por que son muy buenos',
    user_id: usr5.id,
    published_at: Time.now,
    answers_count: 4,
    likes_count: 99,
    parent_post_id: post4.id
)

post6 = Post.create!(
    title: 'sexto post',
    content: 'Este es el mejor por que el 6 es un numreo par multiplo de 3',
    user_id: usr1.id,
    published_at: Time.now,
    answers_count: 70,
    likes_count: 400,
    parent_post_id: post5.id
)
post7 = Post.create!(
    title: 'Me aburri',
    content: 'son demasiaos post con la misma estructura, estoy aburrido',
    user_id: usr2.id,
    published_at: Time.now,
    answers_count: 90,
    likes_count: 876,
    parent_post_id: post6.id
)

post8 = Post.create!(
    title: 'ya queda poco',
    content: 'Yaa no quedan tantos post, no se en que minuto hice tantos',
    user_id: usr3.id,
    published_at: Time.now,
    answers_count: 954,
    likes_count: 10000,
    parent_post_id: post7.id
)

post9 = Post.create!(
    title: 'Penultimo post',
    content: 'Estoy contento por que ya no tengo que hacer mas post solo me queda 1',
    user_id: usr4.id,
    published_at: Time.now,
    answers_count: 2,
    likes_count: 787,
    parent_post_id: post8.id
)
post10 = Post.create!(
    title: 'Ultimo Post',
    content: 'estoy triste por que es el ultimo post',
    user_id: usr5.id,
    published_at: Time.now,
    answers_count: 4,
    likes_count: 99,
    parent_post_id: post9.id
)

# Asociar tags a los posts
PostTag.create!(
    post_id: post1.id,
    tag_id: Tag.find_by(name: 'Tag 1').id
)

PostTag.create!(
    post_id: post2.id,
     tag_id: Tag.find_by(name: 'Tag 2').id
)

PostTag.create!(
    post_id: post3.id,
    tag_id: Tag.find_by(name: 'Tag 3').id
)

PostTag.create!(
    post_id: post4.id,
    tag_id: Tag.find_by(name: 'Tag 4').id
)

PostTag.create!(
    post_id: post5.id,
    tag_id: Tag.find_by(name: 'Tag 5').id
)

PostTag.create!(
    post_id: post6.id,
    tag_id: Tag.find_by(name: 'Tag 1').id
)

PostTag.create!(
    post_id: post7.id,
     tag_id: Tag.find_by(name: 'Tag 2').id
)

PostTag.create!(
    post_id: post8.id,
    tag_id: Tag.find_by(name: 'Tag 3').id
)

PostTag.create!(
    post_id: post9.id,
    tag_id: Tag.find_by(name: 'Tag 4').id
)

PostTag.create!(
    post_id: post10.id,
    tag_id: Tag.find_by(name: 'Tag 5').id
)
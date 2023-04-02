import 'package:flutter/material.dart';
import 'package:recipe_app/modules/recipe_category_list.dart';

import 'fav.dart';
import 'food.dart';

List<Category> DUMMY_LIST = [
  Category("c1", "Indian", Colors.green,
      "https://www.rewardsnetwork.com/wp-content/uploads/2016/12/IndianFood_Main.jpg"),
  Category("c1", "Italian", Colors.green,
      "https://www.tastingtable.com/img/gallery/20-italian-dishes-you-need-to-try-at-least-once/l-intro-1643403830.jpg"),
  Category("c1", "Chinese", Colors.green,
      "https://www.tastingtable.com/img/gallery/regional-chinese-food-explained/l-intro-1669836324.jpg"),
  Category("c1", "Japanese", Colors.green,
      "https://www.tastingtable.com/img/gallery/20-japanese-dishes-you-need-to-try-at-least-once/intro-1664219638.jpg"),
  Category("c1", "Mexican", Colors.green,
      "https://holytequila.com/wp-content/uploads/2022/05/history-of-mexican-food.jpg"),
  Category("c1", "Breakfast", Colors.green,
      "https://reviewed-com-res.cloudinary.com/image/fetch/s--g3NrW89z--/b_white,c_fill,cs_srgb,f_auto,fl_progressive.strip_profile,g_auto,h_547,q_auto,w_972/https://reviewed-production.s3.amazonaws.com/1568123038734/Bfast.png"),
  Category("c1", "Fast food", Colors.green,
      "https://media.istockphoto.com/id/931308812/photo/selection-of-american-food.jpg?s=612x612&w=0&k=20&c=7-2Glc2qVkrWdLaqXwLnNoJLUvc2vMz_QpDTKDcmYiY="),
  Category("c1", "Healthy", Colors.green,
      "https://d1whtlypfis84e.cloudfront.net/guides/wp-content/uploads/2019/08/05070155/healthy-food-1024x768.jpeg"),
  Category("c1", "Juices", Colors.green,
      "https://c.ndtvimg.com/fresh-juices_625x300_1530875895628.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886"),
  Category("c1", "Non-Veg", Colors.green,
      "https://imgmedia.lbb.in/media/2020/01/5e2562b02ea78ef5d69bcee9_1579508400264.png"),
  Category("c1", "Veg", Colors.green,
      "https://images.unsplash.com/photo-1598449426314-8b02525e8733?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dmVnZXRhcmlhbiUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"),
  Category("c1", "Snacks", Colors.green,
      "https://media.istockphoto.com/id/1149135424/photo/group-of-sweet-and-salty-snacks-perfect-for-binge-watching.jpg?s=612x612&w=0&k=20&c=YAVqRyUJgj_nXpltYUPpaW_PYtd4v2TC5Mo0DtVFuoo="),
];

Map<String, List<Food>> DUMMY_FOOD = {
  "Italian": [
    Food(
        id: "i1",
        title: "Pizza",
        recipe: "",
        url:
            "https://img.onmanorama.com/content/dam/mm/en/food/features/images/2021/10/17/pizza.jpg.transform/schema-16x9/image.jpg"),
    Food(
        id: "i2",
        title: "Spaghetti alla Carbonara",
        recipe: "",
        url:
            "https://img.veenaworld.com/wp-content/uploads/2021/09/Spaghetti-alla-Carbonara-1024x684.jpg?imwidth=1080"),
    Food(
        id: "i3",
        title: "Risotto",
        recipe: "",
        url:
            "https://img.veenaworld.com/wp-content/uploads/2021/09/Risotto--1024x680.jpg?imwidth=1080"),
    Food(
        id: "i4",
        title: "Polenta",
        recipe: "",
        url:
            "https://img.veenaworld.com/wp-content/uploads/2021/09/Polenta--1024x665.jpg?imwidth=1080"),
    Food(
        id: "i5",
        title: "Lasagne",
        recipe: "",
        url:
            "https://img.veenaworld.com/wp-content/uploads/2021/09/Lasagne--1024x683.jpg?imwidth=1080"),
    Food(
        id: "i6",
        title: "Focaccia",
        recipe: "",
        url:
            "https://img.veenaworld.com/wp-content/uploads/2021/09/focaccia-1024x576.jpg?imwidth=1080"),
    Food(
        id: "i7",
        title: "Burrata",
        recipe: "",
        url:
            "https://img.veenaworld.com/wp-content/uploads/2021/09/Burrata-1024x683.jpg?imwidth=1080"),
    Food(
        id: "i8",
        title: "Pasta",
        recipe: "",
        url:
            "https://www.indianhealthyrecipes.com/wp-content/uploads/2019/05/masala-pasta-500x500.jpg"),
    Food(
        id: "i9",
        title: "Cicchetti",
        recipe: "",
        url:
            "https://cdn.tasteatlas.com//images/dishes/8183b3f13c2a474d90a1e899bbd63e48.jpg?w=905&h=510"),
    Food(
        id: "i10",
        title: "Semifreddo ",
        recipe: "",
        url:
            "https://cdn.tasteatlas.com//Images/Dishes/b50ed166b077461bab7b17243ada0243.jpg?w=905&h=510"),
  ],
  "Indian": [
    Food(
        id: "i1",
        title: "biryani",
        recipe: '''Ingredients:

For the rice:

    2 cups basmati rice, soaked in cold water for 30 minutes
    4 cups water
    1 cinnamon stick
    3 green cardamom pods
    1 black cardamom pod
    2 cloves
    1 bay leaf
    1 teaspoon salt

For the chicken:

    1 lb boneless, skinless chicken thighs, cut into bite-sized pieces
    1 cup plain yogurt
    2 tablespoons vegetable oil
    2 teaspoons cumin seeds
    2 teaspoons coriander seeds
    1 teaspoon fennel seeds
    1 teaspoon ground turmeric
    1 teaspoon ground cumin
    1 teaspoon paprika
    1 teaspoon garam masala
    1 teaspoon salt
    1 onion, thinly sliced
    4 garlic cloves, minced
    1 inch ginger, grated
    2 green chilies, slit

For assembly:

    1/2 cup fried onions
    1/4 cup chopped fresh cilantro
    1/4 cup chopped fresh mint
    Juice of 1 lemon

Instructions:

    In a large pot, bring 4 cups of water to a boil. Add the soaked rice, cinnamon stick, green cardamom pods, black cardamom pod, cloves, bay leaf, and salt. Reduce the heat to low and cover the pot with a tight-fitting lid. Cook for 10-12 minutes, until the rice is tender and fluffy.

    In a large bowl, mix together the yogurt, vegetable oil, cumin seeds, coriander seeds, fennel seeds, turmeric, ground cumin, paprika, garam masala, and salt. Add the chicken pieces and mix well to coat. Marinate for at least 1 hour or up to overnight in the refrigerator.

    In a large skillet or Dutch oven, heat 2 tablespoons of oil over medium heat. Add the sliced onions and cook until softened and lightly browned, about 5-7 minutes. Add the garlic, ginger, and green chilies, and cook for another 2 minutes.

    Add the marinated chicken to the skillet and cook for 5-7 minutes, stirring occasionally, until the chicken is browned on all sides.

    Preheat the oven to 350°F.

    In a large baking dish, layer half of the cooked rice on the bottom. Top with the cooked chicken and its sauce. Sprinkle with half of the fried onions, cilantro, and mint. Add the remaining rice on top, and sprinkle with the remaining fried onions, cilantro, and mint.

    Cover the dish with foil and bake for 20-25 minutes, until heated through.

    Remove the foil and squeeze the lemon juice over the top of the biryani. Serve hot, garnished with additional cilantro and mint, if desired.''',
        url:
            "https://www.licious.in/blog/wp-content/uploads/2022/06/kolkata-biryani.jpg"),
    Food(
        id: "i2",
        title: "Fish Curry",
        recipe: '''Ingredients:

    1 lb fish fillets (tilapia, cod, or any other white fish)
    2 tablespoons vegetable oil
    1 onion, finely chopped
    2 garlic cloves, minced
    1-inch ginger, grated
    2 green chilies, slit
    1 teaspoon ground turmeric
    1 teaspoon ground cumin
    1 teaspoon ground coriander
    1 teaspoon chili powder
    1 teaspoon paprika
    1 teaspoon salt
    1 can (14 oz) diced tomatoes
    1 can (13.5 oz) coconut milk
    1 tablespoon tamarind paste
    1 tablespoon chopped fresh cilantro

Instructions:

    Cut the fish fillets into bite-sized pieces and set aside.

    In a large skillet or Dutch oven, heat the vegetable oil over medium heat. Add the chopped onion and cook until softened and lightly browned, about 5-7 minutes.

    Add the minced garlic, grated ginger, and green chilies to the skillet, and cook for another 2-3 minutes until fragrant.

    Add the ground turmeric, cumin, coriander, chili powder, paprika, and salt to the skillet, and stir well to combine with the onion mixture.

    Pour in the diced tomatoes and coconut milk, and stir to combine. Bring the mixture to a simmer.

    Add the tamarind paste to the skillet, and stir well to combine.

    Add the fish pieces to the skillet, and gently stir to coat with the sauce.

    Cover the skillet and simmer for 10-15 minutes, or until the fish is cooked through and the sauce has thickened.

    Garnish the fish curry with chopped cilantro, and serve hot with steamed rice or naan bread.

Enjoy your delicious and spicy fish curry!''',
        url:
            "https://spiceeats.com/wp-content/uploads/2020/07/Fish-Masala.jpg"),
    Food(
        id: "i3",
        title: "Aloo gobi",
        recipe: "",
        url:
            "https://www.seriouseats.com/thmb/gTVjyFHq-N3iyv08113cBQWCTv8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20220303-aloo-gobi-vicky-wasik-35-c9afccd574534761886e5964f34586e1.jpg"),
    Food(
        id: "i4",
        title: "Butter chicken",
        recipe: "",
        url:
            "https://www.licious.in/blog/wp-content/uploads/2020/10/butter-chicken-.jpg"),
    Food(
        id: "i5",
        title: "Chole bhature",
        recipe: "",
        url:
            "https://img-global.cpcdn.com/recipes/1d9ce5d3344e6a34/1200x630cq70/photo.jpg"),
    Food(
        id: "i6",
        title: "Poha",
        recipe: "",
        url:
            "https://www.indianveggiedelight.com/wp-content/uploads/2022/07/poha-recipe-featured.jpg"),
    Food(
        id: "i7",
        title: "Gajar ka halwa",
        recipe: "",
        url:
            "https://gkidea.in/wp-content/uploads/2021/01/gajar_ka_halwa-1024x660.jpg"),
    Food(
        id: "i8",
        title: "Khichdi",
        recipe: "",
        url:
            "https://www.funfoodfrolic.com/wp-content/uploads/2022/06/Masala-Khichid-Blog.jpg"),
    Food(
        id: "i9",
        title: "Litti chokha",
        recipe: "",
        url:
            "https://upload.wikimedia.org/wikipedia/commons/5/55/Litti_Chokha.jpg"),
    Food(
        id: "i10",
        title: "Paneer butter masala",
        recipe: "",
        url:
            "https://myfoodstory.com/wp-content/uploads/2021/07/restaurant-style-paneer-butter-masala-2.jpg"),
  ]
};

List<Food> DUMMY_FAV = [];

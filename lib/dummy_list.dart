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
        recipe: "",
        url:
            "https://www.licious.in/blog/wp-content/uploads/2022/06/kolkata-biryani.jpg"),
    Food(
        id: "i2",
        title: "Fish Curry",
        recipe: "",
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

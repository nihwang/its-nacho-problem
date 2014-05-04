#!/bin/env ruby
# encoding: utf-8
require 'spec_helper'

describe RecipesController do 
  let(:result) {[{"attributes"=>{"course"=>["Appetizers"], "cuisine"=>["french"]}, "flavors"=>{"sour"=>0.16666666666666666, "salty"=>0.5, "sweet"=>0.16666666666666666, "piquant"=>0.3333333333333333, "meaty"=>0.5, "bitter"=>0.16666666666666666}, "rating"=>3, "id"=>"Escargots-Bourguignonne-Recipezaar", "smallImageUrls"=>[], "sourceDisplayName"=>"Food.com", "totalTimeInSeconds"=>1080.0, "ingredients"=>["butter", "shallots", "pepper", "pernod", "worcestershire sauce", "escargot", "garlic", "parsley", "lemon", "dry white wine", "salt", "snail shells", "tabasco sauce"], "recipeName"=>"Escargots Bourguignonne"}, {"smallImageUrls"=>["http://lh3.ggpht.com/prQrdKeMxjXTegGlJm42V6hg7y_uQzPFs8DEXvWUr7190drxtGYzcaeKEhPIBzYwf0-o_u_HRa6ZmUT3TOyKGg=s90"], "ingredients"=>["shell on shrimp", "shallots", "pernod", "table salt", "garlic", "unsalted butter", "chopped parsley", "ground black pepper"], "flavors"=>{"sour"=>0.8333333333333334, "salty"=>0.6666666666666666, "sweet"=>0.16666666666666666, "meaty"=>0.5, "bitter"=>0.8333333333333334}, "imageUrlsBySize"=>{"90"=>"http://lh4.ggpht.com/riauVlgdWsGsRTlebTJDAM6bt1LouwlCuNCHsh_Gf6meT8qNg4rdcVGThNQ1_RDQ7OIHICAcqT9BHwwrA5zq=s90-c"}, "attributes"=>{"cuisine"=>["french"]}, "totalTimeInSeconds"=>2100.0, "rating"=>5, "recipeName"=>"Gambas au Beurre d'Escargot", "sourceDisplayName"=>"Serious Eats", "id"=>"Gambas-au-Beurre-d_Escargot-Serious-Eats-203243"}, {"smallImageUrls"=>["http://lh5.ggpht.com/FtVzOMF9ax0sBP8VPeB2QrDHWg7y6LgJwckSizW-XRyzAEIQP8BjP1GfG89CCHVc4BJS-N-VHwGlJ9pJgyZf=s90"], "ingredients"=>["white wine", "butter", "cream", "dried tarragon leaves", "escargot", "grated parmesan cheese", "garlic", "all-purpose flour", "mushrooms", "ground black pepper"], "flavors"=>{"sour"=>0.5, "salty"=>0.3333333333333333, "sweet"=>0.6666666666666666, "meaty"=>0.3333333333333333, "bitter"=>0.8333333333333334}, "imageUrlsBySize"=>{"90"=>"http://lh3.ggpht.com/G2LycbTh32pCil-aajfG6fU5puAW17N2SUGnu6aZxyKy1V8N03Ei3RD_J4XlHr3TUQ8Q57OuGOSVd1EOztOwew=s90-c"}, "attributes"=>{"course"=>["Appetizers"]}, "totalTimeInSeconds"=>2700.0, "rating"=>5, "recipeName"=>"Easy Garlic Escargots", "sourceDisplayName"=>"AllRecipes", "id"=>"Easy-Garlic-Escargots-Allrecipes"}, {"smallImageUrls"=>["http://lh5.ggpht.com/6-22_L4ahVxnBKyx4n2tNVxL-66YF0UxfiqSljmi_F-dbpArVaTv6zUe9T2GfbAMIn8Sn9yCy14xct9i3YaNjaM=s90", "http://lh6.ggpht.com/nDTsrHbS67zlCFUX8rbWOwMdLARpnpHiBm471ObWJ4yOoAhlvdWItVhOBdDwm2Wk387BjgcllvpT0eUdIRSF=s90"], "ingredients"=>["salted butter", "canned snails", "garlic cloves", "flat leaf parsley", "freshly ground pepper", "snail shells"], "flavors"=>{"sour"=>1.0, "salty"=>0.5, "sweet"=>0.3333333333333333, "piquant"=>0.3333333333333333, "meaty"=>0.5, "bitter"=>0.8333333333333334}, "imageUrlsBySize"=>{"90"=>"http://lh5.ggpht.com/umxVs_00gf__dlaJRScNEyucSn1d9VYB4gX4mqUTcvsgx8FSuP2ipxx8AiipJDONISsmBVYFuceKMCfrbNvOVQ=s90-c"}, "attributes"=>{"course"=>["Appetizers"], "cuisine"=>["french"]}, "totalTimeInSeconds"=>nil, "rating"=>5, "recipeName"=>"Escargots a la Bourguignonne", "sourceDisplayName"=>"Williams-Sonoma", "id"=>"Escargots-a-la-Bourguignonne-457533"}, {"smallImageUrls"=>["http://lh5.ggpht.com/ACvZ_ppqJN0GicKgP6_lBzC6yjv4QrUuUcbQELTTIP-RTiqBhAPhBwKtdBRemFyk3T5GZv-gXLi6dKkeax7rng=s90"], "ingredients"=>["shallots", "canned snails", "garlic", "softened butter", "salt", "fine chop fresh parslei", "chopped celery", "black ground pepper", "mushrooms"], "flavors"=>{"sour"=>0.5, "salty"=>0.3333333333333333, "sweet"=>0.6666666666666666, "meaty"=>0.3333333333333333, "bitter"=>0.6666666666666666}, "imageUrlsBySize"=>{"90"=>"http://lh3.ggpht.com/dqUoAjOTmZS3Aku8Z7lrl3o8dMzEkzDtVkQYgWmIhp1pnjMVw-eCbEiNdMx3avv4LTzI82hL_-GFQjwxwfRx=s90-c"}, "attributes"=>{"course"=>["Appetizers"]}, "totalTimeInSeconds"=>1500.0, "rating"=>3, "recipeName"=>"Escargot Stuffed Mushrooms", "sourceDisplayName"=>"French Food About.com", "id"=>"Escargot-Stuffed-Mushrooms-546070"}, {"attributes"=>{"course"=>["Appetizers"], "cuisine"=>["french"], "holiday"=>["summer"]}, "flavors"=>{"sour"=>0.5, "salty"=>0.3333333333333333, "sweet"=>0.16666666666666666, "meaty"=>0.5, "bitter"=>0.16666666666666666}, "rating"=>4, "id"=>"Escargots-in-a-Pastry-Dome-Food-Network-247665", "smallImageUrls"=>[], "sourceDisplayName"=>"Food Network", "totalTimeInSeconds"=>4800.0, "ingredients"=>["fresh parsley leaves", "frozen puff pastry sheets", "shallots", "bay leaves", "chopped garlic", "escargot", "fresh thyme", "dry red wine", "unsalted butter", "large eggs", "salt", "ground black pepper"], "recipeName"=>"Escargots in a Pastry Dome"}, {"smallImageUrls"=>["http://lh4.ggpht.com/bUCF6uF2ZQSaRpOios72-XEte2hU_kINcCdGdo14R4MvEmiiUKyBISAsVHj4lCPxOGCifY-IyymSS7DLgZI5Jg=s90"], "ingredients"=>["shallots", "escargot", "whiting", "grape tomatoes", "olive oil", "garlic", "dijon mustard", "parsley", "lemon juice", "capers", "salt", "frisee", "freshly ground pepper", "radishes", "watercress"], "flavors"=>nil, "imageUrlsBySize"=>{"90"=>"http://lh6.ggpht.com/XOhHpSKJy1C8zVx5F_554Ur-64Iulr14sqNjS9dSwVykZG0pfqQlXDzWyKCXI57sRPQEC4jhmN4t6lPCAWVbyA=s90-c"}, "attributes"=>{"course"=>["Salads"], "cuisine"=>["french"]}, "totalTimeInSeconds"=>nil, "rating"=>5, "recipeName"=>"Sautéed Escargot Salad with Shaved Radish and Mustard Vinaigrette", "sourceDisplayName"=>"Saveur", "id"=>"Sauteed-Escargot-Salad-with-Shaved-Radish-and-Mustard-Vinaigrette-442737"}, {"smallImageUrls"=>["http://lh3.ggpht.com/nQssLvt8wcLb0ixL2DRM0v2pappiFtsq_SJ7YYS1LJ-OHSvD6iSiA3DS0eNe5jswQMqnBqs-IGi3FHI2jW481DA=s90"], "ingredients"=>["european style butter", "shallots", "chopped fresh chives", "snails", "fresh oregano", "garlic", "ground white pepper", "lemon", "flat leaf parsley", "dry white wine", "salt", "bread"], "flavors"=>nil, "imageUrlsBySize"=>{"90"=>"http://lh6.ggpht.com/w4GhLaSd2AIZUoU-ZmftyIUPyTNFC2LLqUGUTHgYsWfv4qVUxf108JqJhDio0Dr_uqSOM4n5jIKswyB6ctvV9hc=s90-c"}, "attributes"=>{"course"=>["Appetizers"]}, "totalTimeInSeconds"=>nil, "rating"=>5, "recipeName"=>"Roasted Escargots, Butter, Oregano, Parsley", "sourceDisplayName"=>"Saveur", "id"=>"Roasted-Escargots_-Butter_-Oregano_-Parsley-442738"}, {"attributes"=>{}, "flavors"=>nil, "rating"=>5, "id"=>"Escargots-a-la-Bourguignonne-Food-Network-247669", "smallImageUrls"=>[], "sourceDisplayName"=>"Food Network", "totalTimeInSeconds"=>2700.0, "ingredients"=>["shallots", "celery", "escargot", "onion", "snails", "garlic", "bouquet garni", "softened butter", "carrots", "dry white wine", "salt", "white vinegar", "chopped parsley", "red wine", "black ground pepper", "snail shells"], "recipeName"=>"Escargots a la Bourguignonne"}, {"attributes"=>{"course"=>["Appetizers"], "cuisine"=>["french"]}, "flavors"=>{"sour"=>1.0, "salty"=>0.16666666666666666, "sweet"=>0.3333333333333333, "meaty"=>0.3333333333333333, "bitter"=>0.8333333333333334}, "rating"=>4, "id"=>"Escargot-Classic-Style-Food_com-124991", "smallImageUrls"=>[], "sourceDisplayName"=>"Food.com", "totalTimeInSeconds"=>600.0, "ingredients"=>["pepper", "escargot", "heavy cream", "garlic cloves", "unsalted butter", "flat leaf parsley", "salt"], "recipeName"=>"Escargot Classic Style"}]}



  context "#create" do
    it "should save recipe to the database" do
      controller.stub(:yummly_search_result){result}
      expect {
        post :create
      }.to change {Recipe.count}.by(9)
    end

    it "should save new ingredients to the database" do
      controller.stub(:yummly_search_result){result}
      expect {
        post :create
      }.to change {Ingredient.count}
    end

    it "should not create with invalid params" do
      controller.stub(:yummly_search_result) {""}
      expect {
        post :create
      }.not_to change {Recipe.count}
    end
  end

end








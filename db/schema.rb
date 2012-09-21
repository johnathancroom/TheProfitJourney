# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120914013833) do

  create_table "ap", :primary_key => "APID", :force => true do |t|
    t.integer "PCID"
    t.decimal "APM",    :precision => 19, :scale => 4
    t.decimal "APLDN",  :precision => 19, :scale => 4
    t.decimal "APNP1",  :precision => 19, :scale => 4
    t.decimal "APNP2",  :precision => 19, :scale => 4
    t.decimal "APNP3",  :precision => 19, :scale => 4
    t.decimal "APNI",   :precision => 19, :scale => 4
    t.decimal "APP",    :precision => 19, :scale => 4
    t.decimal "APVPMM", :precision => 19, :scale => 4
    t.decimal "APLM1",  :precision => 19, :scale => 4
    t.decimal "APLM2",  :precision => 19, :scale => 4
    t.decimal "APLM3",  :precision => 19, :scale => 4
    t.decimal "APLM4",  :precision => 19, :scale => 4
    t.decimal "APLM5",  :precision => 19, :scale => 4
    t.decimal "APLCTV", :precision => 19, :scale => 4
    t.decimal "APNTV",  :precision => 19, :scale => 4
    t.decimal "APR",    :precision => 19, :scale => 4
    t.decimal "APTR1",  :precision => 19, :scale => 4
    t.decimal "APTR2",  :precision => 19, :scale => 4
    t.decimal "APCV1",  :precision => 19, :scale => 4
    t.decimal "APCV2",  :precision => 19, :scale => 4
    t.decimal "APCV3",  :precision => 19, :scale => 4
    t.decimal "APCV4",  :precision => 19, :scale => 4
    t.decimal "APDMQN", :precision => 19, :scale => 4
    t.decimal "APDMSC", :precision => 19, :scale => 4
    t.decimal "APDM1",  :precision => 19, :scale => 4
    t.decimal "APDM2",  :precision => 19, :scale => 4
    t.decimal "APDM3",  :precision => 19, :scale => 4
    t.decimal "APDM4",  :precision => 19, :scale => 4
    t.decimal "APECQN", :precision => 19, :scale => 4
    t.decimal "APECSC", :precision => 19, :scale => 4
    t.decimal "APECAP", :precision => 19, :scale => 4
    t.decimal "APECRC", :precision => 19, :scale => 4
    t.decimal "APECRL", :precision => 19, :scale => 4
    t.decimal "APECC",  :precision => 19, :scale => 4
    t.decimal "APECTY", :precision => 19, :scale => 4
    t.decimal "APNMD",  :precision => 19, :scale => 4
    t.decimal "APNMN",  :precision => 19, :scale => 4
    t.decimal "APNMY",  :precision => 19, :scale => 4
    t.decimal "APNM1",  :precision => 19, :scale => 4
    t.decimal "APNM2",  :precision => 19, :scale => 4
    t.decimal "APNM3",  :precision => 19, :scale => 4
    t.decimal "APNM4",  :precision => 19, :scale => 4
    t.decimal "APBSR",  :precision => 19, :scale => 4
    t.decimal "APCRB",  :precision => 19, :scale => 4
    t.decimal "APE",    :precision => 19, :scale => 4
    t.decimal "APFRB",  :precision => 19, :scale => 4
    t.decimal "APBRR",  :precision => 19, :scale => 4
    t.decimal "APSFB",  :precision => 19, :scale => 4
    t.decimal "APAGS",  :precision => 19, :scale => 4
    t.decimal "APBA",   :precision => 19, :scale => 4
    t.decimal "APLBD",  :precision => 19, :scale => 4
    t.decimal "APPLA",  :precision => 19, :scale => 4
    t.decimal "APGA",   :precision => 19, :scale => 4
    t.decimal "APSE",   :precision => 19, :scale => 4
    t.decimal "APSL",   :precision => 19, :scale => 4
    t.decimal "APFM",   :precision => 19, :scale => 4
    t.decimal "APHM1",  :precision => 19, :scale => 4
    t.decimal "APHM2",  :precision => 19, :scale => 4
    t.decimal "APRP",   :precision => 19, :scale => 4
    t.decimal "APALA",  :precision => 19, :scale => 4
    t.decimal "APMAP",  :precision => 19, :scale => 4
    t.decimal "APCBD",  :precision => 19, :scale => 4
    t.decimal "APB",    :precision => 19, :scale => 4
    t.decimal "APVW",   :precision => 19, :scale => 4
    t.decimal "APMA",   :precision => 19, :scale => 4
    t.decimal "APPE",   :precision => 19, :scale => 4
    t.decimal "APBC",   :precision => 19, :scale => 4
    t.decimal "APS",    :precision => 19, :scale => 4
    t.decimal "APO1",   :precision => 19, :scale => 4
    t.decimal "APO2",   :precision => 19, :scale => 4
    t.decimal "APO3",   :precision => 19, :scale => 4
    t.decimal "APIPC",  :precision => 19, :scale => 4
    t.decimal "APAL",   :precision => 19, :scale => 4
    t.decimal "APSM",   :precision => 19, :scale => 4
    t.decimal "APOYP",  :precision => 19, :scale => 4
    t.decimal "API1",   :precision => 19, :scale => 4
    t.decimal "APYP",   :precision => 19, :scale => 4
    t.decimal "APYP1",  :precision => 19, :scale => 4
    t.decimal "APYP2",  :precision => 19, :scale => 4
    t.decimal "APYP3",  :precision => 19, :scale => 4
    t.decimal "APYP4",  :precision => 19, :scale => 4
  end

  add_index "ap", ["APID"], :name => "APID"
  add_index "ap", ["PCID"], :name => "PCID"

  create_table "cust", :force => true do |t|
    t.string   "cdba",       :limit => 50
    t.datetime "cidate"
    t.string   "cfn",        :limit => 50
    t.string   "cln",        :limit => 50
    t.datetime "ccsd"
    t.datetime "cced"
    t.datetime "ccpd"
    t.integer  "cah"
    t.text     "CPG",        :limit => 2147483647
    t.text     "CCG",        :limit => 2147483647
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "user_id"
  end

  create_table "de", :primary_key => "DEID", :force => true do |t|
    t.integer  "CID"
    t.string   "DEM"
    t.datetime "DED"
    t.integer  "DENWD"
    t.decimal  "DEC",      :precision => 19, :scale => 4
    t.decimal  "DECA1",    :precision => 19, :scale => 4
    t.decimal  "DECA2",    :precision => 19, :scale => 4
    t.decimal  "DECA3",    :precision => 19, :scale => 4
    t.decimal  "DEAR",     :precision => 19, :scale => 4
    t.decimal  "DEMMA",    :precision => 19, :scale => 4
    t.decimal  "DESTI",    :precision => 19, :scale => 4
    t.decimal  "DEADA",    :precision => 19, :scale => 4
    t.decimal  "DEER",     :precision => 19, :scale => 4
    t.decimal  "DENRC",    :precision => 19, :scale => 4
    t.decimal  "DEI",      :precision => 19, :scale => 4
    t.decimal  "DEPE",     :precision => 19, :scale => 4
    t.decimal  "DEUF",     :precision => 19, :scale => 4
    t.decimal  "DEFAVT",   :precision => 19, :scale => 4
    t.decimal  "DEFAADVT", :precision => 19, :scale => 4
    t.decimal  "DEFAOV",   :precision => 19, :scale => 4
    t.decimal  "DEFAADOV", :precision => 19, :scale => 4
    t.decimal  "DEFAEO",   :precision => 19, :scale => 4
    t.decimal  "DEFAADE",  :precision => 19, :scale => 4
    t.decimal  "DEFAFE",   :precision => 19, :scale => 4
    t.decimal  "DEFAADFE", :precision => 19, :scale => 4
    t.decimal  "DEFAL",    :precision => 19, :scale => 4
    t.decimal  "DEFAB",    :precision => 19, :scale => 4
    t.decimal  "DEFAADB",  :precision => 19, :scale => 4
    t.decimal  "DEFALI",   :precision => 19, :scale => 4
    t.decimal  "DEFAADFI", :precision => 19, :scale => 4
    t.decimal  "DEOANRLT", :precision => 19, :scale => 4
    t.decimal  "DEOAS",    :precision => 19, :scale => 4
    t.decimal  "DEOAA1",   :precision => 19, :scale => 4
    t.decimal  "DEOAA2",   :precision => 19, :scale => 4
    t.decimal  "DEOAA3",   :precision => 19, :scale => 4
    t.decimal  "DEOAAN1",  :precision => 19, :scale => 4
    t.decimal  "DEOAAN2",  :precision => 19, :scale => 4
    t.decimal  "DEOAAN3",  :precision => 19, :scale => 4
    t.decimal  "DEOAOIA",  :precision => 19, :scale => 4
    t.decimal  "DEOAAAOI", :precision => 19, :scale => 4
    t.decimal  "DEOAOC",   :precision => 19, :scale => 4
    t.decimal  "DEOAAAOC", :precision => 19, :scale => 4
    t.decimal  "DEOAD",    :precision => 19, :scale => 4
    t.decimal  "DEOALTI",  :precision => 19, :scale => 4
    t.decimal  "DEOAOA",   :precision => 19, :scale => 4
    t.decimal  "DEAP",     :precision => 19, :scale => 4
    t.decimal  "DECC1",    :precision => 19, :scale => 4
    t.decimal  "DECC2",    :precision => 19, :scale => 4
    t.decimal  "DECC3",    :precision => 19, :scale => 4
    t.decimal  "DEALP",    :precision => 19, :scale => 4
    t.decimal  "DEALC",    :precision => 19, :scale => 4
    t.decimal  "DEALPT",   :precision => 19, :scale => 4
    t.decimal  "DEFICA",   :precision => 19, :scale => 4
    t.decimal  "DECLM",    :precision => 19, :scale => 4
    t.decimal  "DECLW",    :precision => 19, :scale => 4
    t.decimal  "DEWC",     :precision => 19, :scale => 4
    t.decimal  "DEST",     :precision => 19, :scale => 4
    t.decimal  "DEPT",     :precision => 19, :scale => 4
    t.decimal  "DEOT",     :precision => 19, :scale => 4
    t.decimal  "DEALI",    :precision => 19, :scale => 4
    t.decimal  "DEDR",     :precision => 19, :scale => 4
    t.decimal  "DECPLT",   :precision => 19, :scale => 4
    t.decimal  "DEOL",     :precision => 19, :scale => 4
    t.decimal  "DENP1",    :precision => 19, :scale => 4
    t.decimal  "DENP2",    :precision => 19, :scale => 4
    t.decimal  "DENP3",    :precision => 19, :scale => 4
    t.decimal  "DENP4",    :precision => 19, :scale => 4
    t.decimal  "DENP5",    :precision => 19, :scale => 4
    t.decimal  "DELCP",    :precision => 19, :scale => 4
    t.decimal  "DESL",     :precision => 19, :scale => 4
    t.decimal  "DEECS",    :precision => 19, :scale => 4
    t.decimal  "DEEOE",    :precision => 19, :scale => 4
    t.decimal  "DEEPC",    :precision => 19, :scale => 4
    t.decimal  "DEEDP",    :precision => 19, :scale => 4
    t.decimal  "DEEOW",    :precision => 19, :scale => 4
    t.decimal  "DEERE",    :precision => 19, :scale => 4
  end

  add_index "de", ["CID"], :name => "CID"
  add_index "de", ["DEID"], :name => "DEID"

  create_table "ly", :force => true do |t|
    t.decimal "lycoh",      :precision => 19, :scale => 4
    t.decimal "lyckone",    :precision => 19, :scale => 4
    t.decimal "lycktwo",    :precision => 19, :scale => 4
    t.decimal "lyckthree",  :precision => 19, :scale => 4
    t.decimal "lyar",       :precision => 19, :scale => 4
    t.decimal "lymma",      :precision => 19, :scale => 4
    t.decimal "lysti",      :precision => 19, :scale => 4
    t.decimal "lyada",      :precision => 19, :scale => 4
    t.decimal "lyer",       :precision => 19, :scale => 4
    t.decimal "lynrc",      :precision => 19, :scale => 4
    t.decimal "lyi",        :precision => 19, :scale => 4
    t.decimal "lyppe",      :precision => 19, :scale => 4
    t.decimal "lyuf",       :precision => 19, :scale => 4
    t.decimal "lyfavt",     :precision => 19, :scale => 4
    t.decimal "lyfadvt",    :precision => 19, :scale => 4
    t.decimal "lyfaov",     :precision => 19, :scale => 4
    t.decimal "lyfadov",    :precision => 19, :scale => 4
    t.decimal "lyfaeo",     :precision => 19, :scale => 4
    t.decimal "lyfadeo",    :precision => 19, :scale => 4
    t.decimal "lyfafe",     :precision => 19, :scale => 4
    t.decimal "lyfadfe",    :precision => 19, :scale => 4
    t.decimal "lyfal",      :precision => 19, :scale => 4
    t.decimal "lyfab",      :precision => 19, :scale => 4
    t.decimal "lyfadb",     :precision => 19, :scale => 4
    t.decimal "lyfali",     :precision => 19, :scale => 4
    t.decimal "lyfadli",    :precision => 19, :scale => 4
    t.decimal "lynrlt",     :precision => 19, :scale => 4
    t.decimal "lys",        :precision => 19, :scale => 4
    t.decimal "lyfraone",   :precision => 19, :scale => 4
    t.decimal "lyfratwo",   :precision => 19, :scale => 4
    t.decimal "lyfrathree", :precision => 19, :scale => 4
    t.decimal "lyaaaone",   :precision => 19, :scale => 4
    t.decimal "lyaaatwo",   :precision => 19, :scale => 4
    t.decimal "lyaaathree", :precision => 19, :scale => 4
    t.decimal "lyoia",      :precision => 19, :scale => 4
    t.decimal "lyaaoi",     :precision => 19, :scale => 4
    t.decimal "lyoc",       :precision => 19, :scale => 4
    t.decimal "lyaaoc",     :precision => 19, :scale => 4
    t.decimal "lyd",        :precision => 19, :scale => 4
    t.decimal "lylti",      :precision => 19, :scale => 4
    t.decimal "lyoa",       :precision => 19, :scale => 4
    t.decimal "lyap",       :precision => 19, :scale => 4
    t.decimal "lyccone",    :precision => 19, :scale => 4
    t.decimal "lycctwo",    :precision => 19, :scale => 4
    t.decimal "lyccthree",  :precision => 19, :scale => 4
    t.decimal "lyalp",      :precision => 19, :scale => 4
    t.decimal "lyalc",      :precision => 19, :scale => 4
    t.decimal "lyalpt",     :precision => 19, :scale => 4
    t.decimal "lyfica",     :precision => 19, :scale => 4
    t.decimal "lym",        :precision => 19, :scale => 4
    t.decimal "lyw",        :precision => 19, :scale => 4
    t.decimal "lyalwc",     :precision => 19, :scale => 4
    t.decimal "lyalst",     :precision => 19, :scale => 4
    t.decimal "lyalprt",    :precision => 19, :scale => 4
    t.decimal "lyalot",     :precision => 19, :scale => 4
    t.decimal "lyali",      :precision => 19, :scale => 4
    t.decimal "lyaldr",     :precision => 19, :scale => 4
    t.decimal "lycplt",     :precision => 19, :scale => 4
    t.decimal "lyol",       :precision => 19, :scale => 4
    t.decimal "lyltlone",   :precision => 19, :scale => 4
    t.decimal "lyltltwo",   :precision => 19, :scale => 4
    t.decimal "lyltlthree", :precision => 19, :scale => 4
    t.decimal "lyltlfour",  :precision => 19, :scale => 4
    t.decimal "lyltlfive",  :precision => 19, :scale => 4
    t.decimal "lylcp",      :precision => 19, :scale => 4
    t.decimal "lyshl",      :precision => 19, :scale => 4
    t.decimal "lyecs",      :precision => 19, :scale => 4
    t.decimal "lyeoe",      :precision => 19, :scale => 4
    t.decimal "lyepc",      :precision => 19, :scale => 4
    t.decimal "lyedp",      :precision => 19, :scale => 4
    t.decimal "lyeow",      :precision => 19, :scale => 4
    t.decimal "lyere",      :precision => 19, :scale => 4
    t.decimal "LYFESO",     :precision => 19, :scale => 4
    t.decimal "LYFESM",     :precision => 19, :scale => 4
    t.decimal "LYFESA",     :precision => 19, :scale => 4
    t.decimal "LYFESOP",    :precision => 19, :scale => 4
    t.decimal "LYFESS",     :precision => 19, :scale => 4
    t.decimal "LYFEST",     :precision => 19, :scale => 4
    t.decimal "LYFEB",      :precision => 19, :scale => 4
    t.decimal "LYFEPT",     :precision => 19, :scale => 4
    t.decimal "LYFEWCI",    :precision => 19, :scale => 4
    t.decimal "LYFEEB",     :precision => 19, :scale => 4
    t.decimal "LYFEHVP",    :precision => 19, :scale => 4
    t.decimal "LYFET",      :precision => 19, :scale => 4
    t.decimal "LYFETH",     :precision => 19, :scale => 4
    t.decimal "LYFER",      :precision => 19, :scale => 4
    t.decimal "LYFEU",      :precision => 19, :scale => 4
    t.decimal "LYFEBRM",    :precision => 19, :scale => 4
    t.decimal "LYFETL",     :precision => 19, :scale => 4
    t.decimal "LYFETO",     :precision => 19, :scale => 4
    t.decimal "LYFECP",     :precision => 19, :scale => 4
    t.decimal "LYFELI",     :precision => 19, :scale => 4
    t.decimal "LYFECCSF",   :precision => 19, :scale => 4
    t.decimal "LYFEAB",     :precision => 19, :scale => 4
    t.decimal "LYFEPR",     :precision => 19, :scale => 4
    t.decimal "LYFECV",     :precision => 19, :scale => 4
    t.decimal "LYFEDV",     :precision => 19, :scale => 4
    t.decimal "LYFEDM",     :precision => 19, :scale => 4
    t.decimal "LYFENM",     :precision => 19, :scale => 4
    t.decimal "LYFEEC",     :precision => 19, :scale => 4
    t.decimal "LYFEHMS",    :precision => 19, :scale => 4
    t.decimal "LYFEO",      :precision => 19, :scale => 4
    t.decimal "LYFEISS",    :precision => 19, :scale => 4
    t.decimal "LYFESRV",    :precision => 19, :scale => 4
    t.decimal "LYFEYS",     :precision => 19, :scale => 4
    t.decimal "LYFEYPPO",   :precision => 19, :scale => 4
    t.decimal "LYFERR",     :precision => 19, :scale => 4
    t.decimal "LYFEOS",     :precision => 19, :scale => 4
    t.decimal "LYFEP",      :precision => 19, :scale => 4
    t.decimal "LYFEPOS",    :precision => 19, :scale => 4
    t.decimal "LYFEOEL",    :precision => 19, :scale => 4
    t.decimal "LYFEFEL",    :precision => 19, :scale => 4
    t.decimal "LYFEOERM",   :precision => 19, :scale => 4
    t.decimal "LYFESD",     :precision => 19, :scale => 4
    t.decimal "LYFEULR",    :precision => 19, :scale => 4
    t.decimal "LYFEVL",     :precision => 19, :scale => 4
    t.decimal "LYFEVRM",    :precision => 19, :scale => 4
    t.decimal "LYFEVI",     :precision => 19, :scale => 4
    t.decimal "LYFEVF",     :precision => 19, :scale => 4
    t.decimal "LYFEL",      :precision => 19, :scale => 4
    t.decimal "LYFEAF",     :precision => 19, :scale => 4
    t.decimal "LYFELF",     :precision => 19, :scale => 4
    t.decimal "LYFEEER",    :precision => 19, :scale => 4
    t.decimal "LYFEOSER",   :precision => 19, :scale => 4
    t.decimal "LYFECE",     :precision => 19, :scale => 4
    t.decimal "LYFEBSC",    :precision => 19, :scale => 4
    t.decimal "LYFEDS",     :precision => 19, :scale => 4
    t.decimal "LYFEC",      :precision => 19, :scale => 4
    t.decimal "LYFEBD",     :precision => 19, :scale => 4
    t.decimal "LYFECT",     :precision => 19, :scale => 4
    t.decimal "LYFEME",     :precision => 19, :scale => 4
    t.decimal "LYFEM",      :precision => 19, :scale => 4
    t.decimal "LYFEII",     :precision => 19, :scale => 4
    t.decimal "LYFEDTV",    :precision => 19, :scale => 4
    t.decimal "LYFEIE",     :precision => 19, :scale => 4
    t.decimal "LYFED",      :precision => 19, :scale => 4
    t.decimal "LYFEA",      :precision => 19, :scale => 4
    t.decimal "LYFEOE",     :precision => 19, :scale => 4
    t.decimal "LYFEIT",     :precision => 19, :scale => 4
    t.decimal "LYFENone",   :precision => 19, :scale => 4
    t.decimal "LYFENtwo",   :precision => 19, :scale => 4
    t.integer "user_id"
  end

  create_table "ny", :primary_key => "NYID", :force => true do |t|
    t.integer "CID"
    t.decimal "NYCoH",      :precision => 19, :scale => 4
    t.decimal "NYCkOne",    :precision => 19, :scale => 4
    t.decimal "NYCkTwo",    :precision => 19, :scale => 4
    t.decimal "NYCkThree",  :precision => 19, :scale => 4
    t.decimal "NYAR",       :precision => 19, :scale => 4
    t.decimal "NYMMA",      :precision => 19, :scale => 4
    t.decimal "NYSTI",      :precision => 19, :scale => 4
    t.decimal "NYADA",      :precision => 19, :scale => 4
    t.decimal "NYER",       :precision => 19, :scale => 4
    t.decimal "NYNRC",      :precision => 19, :scale => 4
    t.decimal "NYI",        :precision => 19, :scale => 4
    t.decimal "NYPPE",      :precision => 19, :scale => 4
    t.decimal "NYUF",       :precision => 19, :scale => 4
    t.decimal "NYFAVT",     :precision => 19, :scale => 4
    t.decimal "NYFADVT",    :precision => 19, :scale => 4
    t.decimal "NYFAOV",     :precision => 19, :scale => 4
    t.decimal "NYFADOV",    :precision => 19, :scale => 4
    t.decimal "NYFAEO",     :precision => 19, :scale => 4
    t.decimal "NYFADEO",    :precision => 19, :scale => 4
    t.decimal "NYFAFE",     :precision => 19, :scale => 4
    t.decimal "NYFADFE",    :precision => 19, :scale => 4
    t.decimal "NYFAL",      :precision => 19, :scale => 4
    t.decimal "NYFAB",      :precision => 19, :scale => 4
    t.decimal "NYFADB",     :precision => 19, :scale => 4
    t.decimal "NYFALI",     :precision => 19, :scale => 4
    t.decimal "NYFADLI",    :precision => 19, :scale => 4
    t.decimal "NYNRLT",     :precision => 19, :scale => 4
    t.decimal "NYS",        :precision => 19, :scale => 4
    t.decimal "NYFRAone",   :precision => 19, :scale => 4
    t.decimal "NYFRAtwo",   :precision => 19, :scale => 4
    t.decimal "NYFRAthree", :precision => 19, :scale => 4
    t.decimal "NYAAAone",   :precision => 19, :scale => 4
    t.decimal "NYAAAtwo",   :precision => 19, :scale => 4
    t.decimal "NYAAAthree", :precision => 19, :scale => 4
    t.decimal "NYOIA",      :precision => 19, :scale => 4
    t.decimal "NYAAOI",     :precision => 19, :scale => 4
    t.decimal "NYOC",       :precision => 19, :scale => 4
    t.decimal "NYAAOC",     :precision => 19, :scale => 4
    t.decimal "NYD",        :precision => 19, :scale => 4
    t.decimal "NYLTI",      :precision => 19, :scale => 4
    t.decimal "NYOA",       :precision => 19, :scale => 4
    t.decimal "NYAP",       :precision => 19, :scale => 4
    t.decimal "NYCCone",    :precision => 19, :scale => 4
    t.decimal "NYCCtwo",    :precision => 19, :scale => 4
    t.decimal "NYCCthree",  :precision => 19, :scale => 4
    t.decimal "NYALP",      :precision => 19, :scale => 4
    t.decimal "NYALC",      :precision => 19, :scale => 4
    t.decimal "NYALPT",     :precision => 19, :scale => 4
    t.decimal "NYFICA",     :precision => 19, :scale => 4
    t.decimal "NYM",        :precision => 19, :scale => 4
    t.decimal "NYW",        :precision => 19, :scale => 4
    t.decimal "NYALWC",     :precision => 19, :scale => 4
    t.decimal "NYALST",     :precision => 19, :scale => 4
    t.decimal "NYALPRT",    :precision => 19, :scale => 4
    t.decimal "NYALOT",     :precision => 19, :scale => 4
    t.decimal "NYALI",      :precision => 19, :scale => 4
    t.decimal "NYALDR",     :precision => 19, :scale => 4
    t.decimal "NYCPLT",     :precision => 19, :scale => 4
    t.decimal "NYOL",       :precision => 19, :scale => 4
    t.decimal "NYLTLone",   :precision => 19, :scale => 4
    t.decimal "NYLTLtwo",   :precision => 19, :scale => 4
    t.decimal "NYLTLthree", :precision => 19, :scale => 4
    t.decimal "NYLTLfour",  :precision => 19, :scale => 4
    t.decimal "NYLTLfive",  :precision => 19, :scale => 4
    t.decimal "NYLCP",      :precision => 19, :scale => 4
    t.decimal "NYSHL",      :precision => 19, :scale => 4
    t.decimal "NYECS",      :precision => 19, :scale => 4
    t.decimal "NYEOE",      :precision => 19, :scale => 4
    t.decimal "NYEPC",      :precision => 19, :scale => 4
    t.decimal "NYEDP",      :precision => 19, :scale => 4
    t.decimal "NYEOW",      :precision => 19, :scale => 4
    t.decimal "NYERE",      :precision => 19, :scale => 4
    t.decimal "NYFESO",     :precision => 19, :scale => 4
    t.decimal "NYFESM",     :precision => 19, :scale => 4
    t.decimal "NYFESA",     :precision => 19, :scale => 4
    t.decimal "NYFESOP",    :precision => 19, :scale => 4
    t.decimal "NYFESS",     :precision => 19, :scale => 4
    t.decimal "NYFEST",     :precision => 19, :scale => 4
    t.decimal "NYFEB",      :precision => 19, :scale => 4
    t.decimal "NYFEEB",     :precision => 19, :scale => 4
    t.decimal "NYFEHVP",    :precision => 19, :scale => 4
    t.decimal "NYFET",      :precision => 19, :scale => 4
    t.decimal "NYFETH",     :precision => 19, :scale => 4
    t.decimal "NYFER",      :precision => 19, :scale => 4
    t.decimal "NYFEU",      :precision => 19, :scale => 4
    t.decimal "NYFEBRM",    :precision => 19, :scale => 4
    t.decimal "NYFETL",     :precision => 19, :scale => 4
    t.decimal "NYFETO",     :precision => 19, :scale => 4
    t.decimal "NYFECP",     :precision => 19, :scale => 4
    t.decimal "NYFELI",     :precision => 19, :scale => 4
    t.decimal "NYFECCSF",   :precision => 19, :scale => 4
    t.decimal "NYFERR",     :precision => 19, :scale => 4
    t.decimal "NYFEOS",     :precision => 19, :scale => 4
    t.decimal "NYFEP",      :precision => 19, :scale => 4
    t.decimal "NYFEPOS",    :precision => 19, :scale => 4
    t.decimal "NYFEOEL",    :precision => 19, :scale => 4
    t.decimal "NYFEFEL",    :precision => 19, :scale => 4
    t.decimal "NYFEOERM",   :precision => 19, :scale => 4
    t.decimal "NYFESD",     :precision => 19, :scale => 4
    t.decimal "NYFEULR",    :precision => 19, :scale => 4
    t.decimal "NYFEVL",     :precision => 19, :scale => 4
    t.decimal "NYFEVRM",    :precision => 19, :scale => 4
    t.decimal "NYFEVI",     :precision => 19, :scale => 4
    t.decimal "NYFEVF",     :precision => 19, :scale => 4
    t.decimal "NYFEL",      :precision => 19, :scale => 4
    t.decimal "NYFEAF",     :precision => 19, :scale => 4
    t.decimal "NYFELF",     :precision => 19, :scale => 4
    t.decimal "NYFEEER",    :precision => 19, :scale => 4
    t.decimal "NYFEOSER",   :precision => 19, :scale => 4
    t.decimal "NYFECE",     :precision => 19, :scale => 4
    t.decimal "NYFEBSC",    :precision => 19, :scale => 4
    t.decimal "NYFEDS",     :precision => 19, :scale => 4
    t.decimal "NYFEC",      :precision => 19, :scale => 4
    t.decimal "NYFEBD",     :precision => 19, :scale => 4
    t.decimal "NYFECT",     :precision => 19, :scale => 4
    t.decimal "NYFEME",     :precision => 19, :scale => 4
    t.decimal "NYFEM",      :precision => 19, :scale => 4
    t.decimal "NYFEII",     :precision => 19, :scale => 4
    t.decimal "NYFEDTV",    :precision => 19, :scale => 4
    t.decimal "NYFEIE",     :precision => 19, :scale => 4
    t.decimal "NYFED",      :precision => 19, :scale => 4
    t.decimal "NYFEA",      :precision => 19, :scale => 4
    t.decimal "NYFEOE",     :precision => 19, :scale => 4
    t.decimal "NYFEIT",     :precision => 19, :scale => 4
    t.decimal "NYFENone",   :precision => 19, :scale => 4
    t.decimal "NYFENtwo",   :precision => 19, :scale => 4
    t.float   "NYEPT"
    t.float   "NYEWC"
    t.float   "NYFWC"
  end

  add_index "ny", ["CID"], :name => "CID"
  add_index "ny", ["NYID"], :name => "NYID"

  create_table "oc", :primary_key => "OCID", :force => true do |t|
    t.integer "CID",  :null => false
    t.integer "PCID"
    t.string  "OCP"
    t.string  "OCN"
    t.string  "OCC"
    t.float   "OCPG"
  end

  add_index "oc", ["CID"], :name => "CID"
  add_index "oc", ["OCID"], :name => "OCID"
  add_index "oc", ["PCID"], :name => "PCID"

  create_table "pc", :primary_key => "PCID", :force => true do |t|
    t.integer "CID"
    t.string  "PCN", :limit => 100
  end

  add_index "pc", ["CID"], :name => "CID"
  add_index "pc", ["PCID"], :name => "PCID"

  create_table "pcdt", :primary_key => "DTID", :force => true do |t|
    t.integer "PCID"
    t.decimal "DTJ",  :precision => 19, :scale => 4
    t.decimal "DTF",  :precision => 19, :scale => 4
    t.decimal "DTM",  :precision => 19, :scale => 4
    t.decimal "DTA",  :precision => 19, :scale => 4
    t.decimal "DTMY", :precision => 19, :scale => 4
    t.decimal "DTJN", :precision => 19, :scale => 4
    t.decimal "DTJL", :precision => 19, :scale => 4
    t.decimal "DTAG", :precision => 19, :scale => 4
    t.decimal "DTS",  :precision => 19, :scale => 4
    t.decimal "DTO",  :precision => 19, :scale => 4
    t.decimal "DTN",  :precision => 19, :scale => 4
    t.decimal "DTD",  :precision => 19, :scale => 4
  end

  add_index "pcdt", ["DTID"], :name => "DTID"
  add_index "pcdt", ["PCID"], :name => "PCID"

  create_table "pcly", :primary_key => "PCLYID", :force => true do |t|
    t.integer "PCID"
    t.decimal "PCLYRS",   :precision => 19, :scale => 4
    t.decimal "PCLYRAO",  :precision => 19, :scale => 4
    t.decimal "PCLYRSA",  :precision => 19, :scale => 4
    t.decimal "PCLYRR",   :precision => 19, :scale => 4
    t.decimal "PCLYRRA",  :precision => 19, :scale => 4
    t.decimal "PCLYCS",   :precision => 19, :scale => 4
    t.decimal "PCLYCAO",  :precision => 19, :scale => 4
    t.decimal "PCLYCSA",  :precision => 19, :scale => 4
    t.decimal "PCLYCR",   :precision => 19, :scale => 4
    t.decimal "PCLYCRA",  :precision => 19, :scale => 4
    t.decimal "PCLYM",    :precision => 19, :scale => 4
    t.decimal "PCLYLTL",  :precision => 19, :scale => 4
    t.decimal "PCLYLTC",  :precision => 19, :scale => 4
    t.decimal "PCLYLPTF", :precision => 19, :scale => 4
    t.decimal "PCLYLWCI", :precision => 19, :scale => 4
    t.decimal "PCLYLTB",  :precision => 19, :scale => 4
    t.decimal "PCLYSC",   :precision => 19, :scale => 4
    t.decimal "PCLYP",    :precision => 19, :scale => 4
    t.decimal "PCLYW",    :precision => 19, :scale => 4
    t.decimal "PCLYSCT",  :precision => 19, :scale => 4
    t.decimal "PCLYVF",   :precision => 19, :scale => 4
    t.decimal "PCLYVMR",  :precision => 19, :scale => 4
    t.decimal "PCLYT",    :precision => 19, :scale => 4
    t.decimal "PCLYFSF",  :precision => 19, :scale => 4
    t.decimal "PCLYFNAD", :precision => 19, :scale => 4
    t.decimal "PCLYPD",   :precision => 19, :scale => 4
  end

  add_index "pcly", ["PCID"], :name => "PCID"
  add_index "pcly", ["PCLYID"], :name => "PCLYID"

  create_table "pcny", :primary_key => "PCNYID", :force => true do |t|
    t.integer "PCID"
    t.decimal "PCNYTS",     :precision => 19, :scale => 4
    t.float   "PCNYAO"
    t.float   "PCNYSA"
    t.float   "PCNYR"
    t.float   "PCNYRA"
    t.float   "PCNYCS"
    t.float   "PCNYCAO"
    t.float   "PCNYCSA"
    t.float   "PCNYCR"
    t.float   "PCNYCRA"
    t.float   "PCNYVEM"
    t.float   "PCNYVETL"
    t.float   "PCNYVETC"
    t.float   "PCNYVETB"
    t.float   "PCNYVESC"
    t.float   "PCNYVEP"
    t.float   "PCNYVEW"
    t.float   "PCNYVES"
    t.float   "PCNYVEVF"
    t.float   "PCNYVEVMR"
    t.float   "PVNYVET"
    t.float   "PCNYVEFSF"
    t.float   "PCNYVEFNAF"
    t.float   "PCNYVEPD"
  end

  add_index "pcny", ["PCID"], :name => "PCID"
  add_index "pcny", ["PCNYID"], :name => "PCNYID"

  create_table "refinery_blog_categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "cached_slug"
    t.string   "slug"
  end

  add_index "refinery_blog_categories", ["id"], :name => "index_refinery_blog_categories_on_id"
  add_index "refinery_blog_categories", ["slug"], :name => "index_refinery_blog_categories_on_slug"

  create_table "refinery_blog_categories_blog_posts", :force => true do |t|
    t.integer "blog_category_id"
    t.integer "blog_post_id"
  end

  add_index "refinery_blog_categories_blog_posts", ["blog_category_id", "blog_post_id"], :name => "index_blog_categories_blog_posts_on_bc_and_bp"

  create_table "refinery_blog_comments", :force => true do |t|
    t.integer  "blog_post_id"
    t.boolean  "spam"
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.string   "state"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "refinery_blog_comments", ["id"], :name => "index_refinery_blog_comments_on_id"

  create_table "refinery_blog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "draft"
    t.datetime "published_at"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "user_id"
    t.string   "cached_slug"
    t.string   "custom_url"
    t.text     "custom_teaser"
    t.string   "source_url"
    t.string   "source_url_title"
    t.integer  "access_count",     :default => 0
    t.string   "slug"
  end

  add_index "refinery_blog_posts", ["access_count"], :name => "index_refinery_blog_posts_on_access_count"
  add_index "refinery_blog_posts", ["id"], :name => "index_refinery_blog_posts_on_id"
  add_index "refinery_blog_posts", ["slug"], :name => "index_refinery_blog_posts_on_slug"

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.string   "image_ext"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale"
    t.text     "body"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_f9716c4215584edbca2557e32706a5ae084a15ef"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale"
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_d079468f88bff1c6ea81573a0d019ba8bf5c2902"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_settings", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "destroyable",     :default => true
    t.string   "scoping"
    t.boolean  "restricted",      :default => false
    t.string   "form_value_type"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "workshop_id"
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "refinery_workshops", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.datetime "date"
    t.integer  "seats"
    t.integer  "position"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.decimal  "price",       :precision => 19, :scale => 2
  end

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "task", :primary_key => "TID", :force => true do |t|
    t.integer  "CID"
    t.text     "Task",  :limit => 2147483647
    t.datetime "TDate"
  end

  add_index "task", ["CID"], :name => "CID"
  add_index "task", ["TID"], :name => "TID"

  create_table "user", :primary_key => "UserID", :force => true do |t|
    t.integer "CID"
    t.string  "UserType",  :limit => 50
    t.string  "UserPsswd", :limit => 10
  end

  add_index "user", ["CID"], :name => "CID"

end

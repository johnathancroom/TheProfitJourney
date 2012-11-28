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

ActiveRecord::Schema.define(:version => 20121128163019) do

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
    t.text     "cpg",        :limit => 2147483647
    t.text     "ccg",        :limit => 2147483647
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
    t.decimal "lycoh",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyckone",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lycktwo",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyckthree",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyar",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lymma",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lysti",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyada",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyer",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lynrc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyi",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyppe",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyuf",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfavt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfadvt",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfaov",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfadov",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfaeo",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfadeo",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfafe",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfadfe",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfal",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfab",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfadb",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfali",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfadli",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lynrlt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lys",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfraone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfratwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfrathree",       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyaaaone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyaaatwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyaaathree",       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyoia",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyaaoi",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyoc",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyaaoc",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyd",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lylti",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyoa",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyap",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyccone",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lycctwo",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyccthree",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalpt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfica",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lym",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyw",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalwc",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalst",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalprt",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyalot",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyali",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyaldr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lycplt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyol",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyltlone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyltltwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyltlthree",       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyltlfour",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyltlfive",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lylcp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyshl",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyecs",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyeoe",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyepc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyedp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyeow",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyere",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeso",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfesm",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfesa",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfesop",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfess",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfest",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeb",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfept",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfewci",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeeb",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfehvp",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfet",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeth",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfer",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeu",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfebrm",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfetl",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeto",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfecp",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeli",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeccsf",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeab",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfepr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfecv",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfedv",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfedm",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfenm",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeec",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfehms",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeo",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeiss",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfesrv",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeys",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeyppo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyferr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeos",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfep",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfepos",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeoel",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfefel",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeoerm",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfesd",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeulr",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfevl",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfevrm",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfevi",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfevf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfel",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeaf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfelf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeeer",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeoser",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfece",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfebsc",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeds",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfec",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfebd",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfect",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeme",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfem",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeii",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfedtv",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeie",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfed",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfea",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeoe",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfeit",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfenone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "lyfentwo",         :precision => 19, :scale => 2, :default => 0.0
    t.integer "profit_center_id"
  end

  create_table "ny", :force => true do |t|
    t.decimal "nycoh",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyckone",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nycktwo",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyckthree",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyar",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nymma",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nysti",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyada",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyer",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nynrc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyi",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyppe",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyuf",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfavt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfadvt",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfaov",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfadov",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfaeo",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfadeo",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfafe",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfadfe",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfal",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfab",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfadb",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfali",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfadli",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nynrlt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nys",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfraone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfratwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfrathree",       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyaaaone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyaaatwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyaaathree",       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyoia",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyaaoi",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyoc",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyaaoc",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyd",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nylti",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyoa",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyap",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyccone",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nycctwo",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyccthree",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalpt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfica",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nym",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyw",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalwc",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalst",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalprt",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyalot",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyali",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyaldr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nycplt",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyol",             :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyltlone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyltltwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyltlthree",       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyltlfour",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyltlfive",        :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nylcp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyshl",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyecs",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyeoe",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyepc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyedp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyeow",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyere",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeso",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfesm",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfesa",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfesop",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfess",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfest",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeb",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeeb",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfehvp",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfet",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeth",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfer",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeu",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfebrm",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfetl",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeto",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfecp",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeli",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeccsf",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyferr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeos",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfep",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfepos",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeoel",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfefel",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeoerm",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfesd",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeulr",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfevl",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfevrm",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfevi",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfevf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfel",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeaf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfelf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeeer",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeoser",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfece",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfebsc",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeds",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfec",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfebd",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfect",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeme",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfem",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeii",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfedtv",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeie",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfed",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfea",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeoe",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeit",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfenone",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfentwo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyept",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyewc",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfwc",            :precision => 19, :scale => 2, :default => 0.0
    t.integer "profit_center_id"
    t.decimal "nyfeab",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfepr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfecv",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfedv",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfedm",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfenm",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeec",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfehms",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeo",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeiss",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfesrv",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeys",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfeyppo",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfept",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "nyfewci",          :precision => 19, :scale => 2, :default => 0.0
  end

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

  create_table "pc", :force => true do |t|
    t.integer "user_id"
    t.string  "pcn",     :limit => 100
  end

  add_index "pc", ["id"], :name => "PCID"
  add_index "pc", ["user_id"], :name => "CID"

  create_table "pcdt", :force => true do |t|
    t.integer "profit_center_id"
    t.decimal "value",            :precision => 19, :scale => 2, :default => 0.0, :null => false
    t.date    "month"
  end

  add_index "pcdt", ["id"], :name => "DTID"
  add_index "pcdt", ["profit_center_id"], :name => "PCID"

  create_table "pcly", :force => true do |t|
    t.decimal "pclyrs",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyrao",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyrsa",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyrr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyrra",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclycs",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclycao",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclycsa",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclycr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclycra",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclym",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyltl",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyltc",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclylptf",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclylwci",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyltb",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclysc",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyw",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclysct",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyvf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyvmr",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyt",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyfsf",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclyfnad",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pclypd",           :precision => 19, :scale => 2, :default => 0.0
    t.integer "profit_center_id"
  end

  create_table "pcny", :force => true do |t|
    t.decimal "pcnyrs",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyrao",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyrsa",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyrr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyrra",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnycs",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnycao",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnycsa",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnycr",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnycra",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnym",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyltl",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyltc",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyltb",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnysc",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyp",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyw",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnysct",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyvf",           :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyvmr",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyt",            :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyfsf",          :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnyfnad",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnypd",           :precision => 19, :scale => 2, :default => 0.0
    t.integer "profit_center_id"
    t.decimal "pcnylptf",         :precision => 19, :scale => 2, :default => 0.0
    t.decimal "pcnylwci",         :precision => 19, :scale => 2, :default => 0.0
  end

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

  create_table "refinery_journeyboard_budgets", :force => true do |t|
    t.integer "replacement_calls",                                                   :default => 0
    t.integer "replacement_calls_sold",                                              :default => 0
    t.decimal "replacement_cogs",                     :precision => 19, :scale => 2, :default => 0.0
    t.integer "repair_calls",                                                        :default => 0
    t.integer "repair_warranty_calls",                                               :default => 0
    t.decimal "repair_revenue",                       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "repair_cogs",                          :precision => 19, :scale => 2, :default => 0.0
    t.integer "repair_membership_opportunities",                                     :default => 0
    t.integer "repair_memberships_sold",                                             :default => 0
    t.integer "maintenance_calls",                                                   :default => 0
    t.decimal "maintenance_revenue",                  :precision => 19, :scale => 2, :default => 0.0
    t.decimal "maintenance_cogs",                     :precision => 19, :scale => 2, :default => 0.0
    t.integer "maintenance_membership_opportunities",                                :default => 0
    t.integer "maintenance_memberships_sold",                                        :default => 0
    t.integer "specialty_calls",                                                     :default => 0
    t.decimal "specialty_revenue",                    :precision => 19, :scale => 2, :default => 0.0
    t.decimal "specialty_cogs",                       :precision => 19, :scale => 2, :default => 0.0
    t.integer "specialty_membership_opportunities",                                  :default => 0
    t.integer "specialty_memberships_sold",                                          :default => 0
    t.integer "user_id"
    t.integer "budget_days",                                                         :default => 20
    t.decimal "total_expenses",                       :precision => 19, :scale => 2, :default => 0.0
    t.decimal "total_operating_profit",               :precision => 19, :scale => 2, :default => 0.0
    t.integer "ytd_gross_margin",                                                    :default => 0
    t.integer "replacement_warranty_calls",                                          :default => 0
    t.integer "maintenance_warranty_calls",                                          :default => 0
    t.integer "specialty_warranty_calls",                                            :default => 0
    t.integer "replacement_membership_opportunities",                                :default => 0
    t.integer "replacement_memberships_sold",                                        :default => 0
    t.decimal "replacement_revenue",                  :precision => 19, :scale => 2, :default => 0.0
    t.integer "repair_calls_sold",                                                   :default => 0
    t.integer "maintenance_calls_sold",                                              :default => 0
    t.integer "specialty_calls_sold",                                                :default => 0
    t.decimal "replacement_accessories",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "repair_accessories",                   :precision => 19, :scale => 2, :default => 0.0
    t.decimal "maintenance_accessories",              :precision => 19, :scale => 2, :default => 0.0
    t.decimal "specialty_accessories",                :precision => 19, :scale => 2, :default => 0.0
    t.decimal "replacement_sold",                     :precision => 19, :scale => 2, :default => 0.0
    t.integer "replacement_sales_calls_run",                                         :default => 0
    t.integer "replacement_sales_calls_sold",                                        :default => 0
    t.decimal "repair_sold",                          :precision => 19, :scale => 2, :default => 0.0
    t.integer "repair_sales_calls_run",                                              :default => 0
    t.integer "repair_sales_calls_sold",                                             :default => 0
    t.decimal "maintenance_sold",                     :precision => 19, :scale => 2, :default => 0.0
    t.integer "maintenance_sales_calls_run",                                         :default => 0
    t.integer "maintenance_sales_calls_sold",                                        :default => 0
    t.decimal "specialty_sold",                       :precision => 19, :scale => 2, :default => 0.0
    t.integer "specialty_sales_calls_run",                                           :default => 0
    t.integer "specialty_sales_calls_sold",                                          :default => 0
    t.date    "date"
  end

  create_table "refinery_journeyboard_csr_entries", :force => true do |t|
    t.date     "date"
    t.integer  "sold",                                            :default => 0
    t.integer  "sold_new_systems",                                :default => 0
    t.integer  "lost",                                            :default => 0
    t.integer  "user_id"
    t.datetime "created_at",                                                       :null => false
    t.datetime "updated_at",                                                       :null => false
    t.integer  "employee_id"
    t.decimal  "dollars_sold",     :precision => 19, :scale => 2, :default => 0.0
    t.integer  "sales_calls_run",                                 :default => 0
    t.integer  "sales_calls_sold",                                :default => 0
  end

  create_table "refinery_journeyboard_employees", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.integer  "type"
    t.decimal  "hourly_rate", :precision => 19, :scale => 2, :default => 0.0
  end

  create_table "refinery_journeyboard_entries", :force => true do |t|
    t.decimal  "fuel_cost",                :precision => 19, :scale => 2, :default => 0.0
    t.integer  "profit_center_id",                                        :default => 0
    t.date     "date"
    t.datetime "created_at",                                                               :null => false
    t.datetime "updated_at",                                                               :null => false
    t.decimal  "commission",               :precision => 19, :scale => 2, :default => 0.0
    t.decimal  "revenue",                  :precision => 19, :scale => 2, :default => 0.0
    t.decimal  "parts",                    :precision => 19, :scale => 2, :default => 0.0
    t.decimal  "accessories",              :precision => 19, :scale => 2, :default => 0.0
    t.integer  "leads",                                                   :default => 0
    t.integer  "opportunities",                                           :default => 0
    t.integer  "calls_run",                                               :default => 0
    t.decimal  "hours",                    :precision => 19, :scale => 2, :default => 0.0
    t.integer  "agreement_1",                                             :default => 0
    t.integer  "agreement_2",                                             :default => 0
    t.integer  "agreement_3",                                             :default => 0
    t.integer  "agreement_4",                                             :default => 0
    t.integer  "employee_id",                                             :default => 0
    t.decimal  "additional_labor",         :precision => 19, :scale => 2, :default => 0.0
    t.integer  "warranty_calls_run",                                      :default => 0
    t.integer  "membership_opportunities",                                :default => 0
    t.decimal  "sold",                     :precision => 19, :scale => 2, :default => 0.0
    t.integer  "sales_calls_run",                                         :default => 0
    t.integer  "sales_calls_sold",                                        :default => 0
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

  create_table "refinery_slides", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "subscription_id"
    t.integer  "plan_id"
    t.boolean  "plan_override"
    t.boolean  "workshop_override"
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"

  create_table "refinery_workshops", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.date     "start_date"
    t.integer  "seats"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
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

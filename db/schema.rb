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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170511234021) do

  create_table "flights", force: :cascade do |t|
    t.string   "flightid",             default: "empty"
    t.string   "airlinecode",          default: "empty"
    t.string   "flightnumber",         default: "empty"
    t.string   "scheddepapt",          default: "empty"
    t.string   "schedarrapt",          default: "empty"
    t.string   "scheddeputc",          default: "empty"
    t.string   "schedarrutc",          default: "empty"
    t.string   "scheddeplocal",        default: "empty"
    t.string   "schedarrlocal",        default: "empty"
    t.string   "diversionstatus",      default: "empty"
    t.string   "recovflightid",        default: "empty"
    t.string   "opairlinecode",        default: "empty"
    t.string   "opflightnumber",       default: "empty"
    t.string   "altdepapt",            default: "empty"
    t.string   "altarrapt",            default: "empty"
    t.string   "depterminal",          default: "empty"
    t.string   "depgate",              default: "empty"
    t.string   "arrterminal",          default: "empty"
    t.string   "arrgate",              default: "empty"
    t.string   "baggage",              default: "empty"
    t.string   "servicetype",          default: "empty"
    t.string   "aircrafttype",         default: "empty"
    t.string   "unscheduled",          default: "empty"
    t.string   "depcountrycode",       default: "empty"
    t.string   "arrcountrycode",       default: "empty"
    t.string   "tailnumber",           default: "empty"
    t.string   "regairlinecode",       default: "empty"
    t.string   "regflightnumber",      default: "empty"
    t.string   "origdate",             default: "empty"
    t.string   "prevfltalcode",        default: "empty"
    t.string   "prevfltnumber",        default: "empty"
    t.string   "prevfltschedarrlocal", default: "empty"
    t.string   "prevfltschedarrutc",   default: "empty"
    t.string   "outgatelocal",         default: "empty"
    t.string   "outgateutc",           default: "empty"
    t.string   "outgateaccuracy",      default: "empty"
    t.string   "inairlocal",           default: "empty"
    t.string   "inairutc",             default: "empty"
    t.string   "inairaccuracy",        default: "empty"
    t.string   "landedlocal",          default: "empty"
    t.string   "landedutc",            default: "empty"
    t.string   "landedaccuracy",       default: "empty"
    t.string   "ingatelocal",          default: "empty"
    t.string   "ingateutc",            default: "empty"
    t.string   "ingateaccuracy",       default: "empty"
    t.string   "diversiontype",        default: "empty"
    t.string   "simplemaxalt",         default: "empty"
    t.string   "simpleavgalt",         default: "empty"
    t.string   "simplemaxspeed",       default: "empty"
    t.string   "simpleavgspeed",       default: "empty"
    t.string   "distancegc",           default: "empty"
    t.string   "timealoft",            default: "empty"
    t.string   "cancelled",            default: "empty"
    t.string   "acttaxitimedep",       default: "empty"
    t.string   "acttaxitimearr",       default: "empty"
    t.string   "minlatedeparted",      default: "empty"
    t.string   "minlatearrived",       default: "empty"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end

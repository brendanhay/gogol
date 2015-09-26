{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.QPXExpress.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.QPXExpress.Types.Product where

import           Network.Google.Prelude
import           Network.Google.QPXExpress.Types.Sum

-- | The make, model, and type of an aircraft.
--
-- /See:/ 'aircraftData' smart constructor.
data AircraftData = AircraftData
    { _adKind :: !Text
    , _adName :: !(Maybe Text)
    , _adCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AircraftData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adKind'
--
-- * 'adName'
--
-- * 'adCode'
aircraftData
    :: AircraftData
aircraftData =
    AircraftData
    { _adKind = "qpxexpress#aircraftData"
    , _adName = Nothing
    , _adCode = Nothing
    }

-- | Identifies this as an aircraftData object. Value: the fixed string
-- qpxexpress#aircraftData
adKind :: Lens' AircraftData Text
adKind = lens _adKind (\ s a -> s{_adKind = a})

-- | The name of an aircraft, for example Boeing 777.
adName :: Lens' AircraftData (Maybe Text)
adName = lens _adName (\ s a -> s{_adName = a})

-- | The aircraft code. For example, for a Boeing 777 the code would be 777.
adCode :: Lens' AircraftData (Maybe Text)
adCode = lens _adCode (\ s a -> s{_adCode = a})

-- | An airport.
--
-- /See:/ 'airportData' smart constructor.
data AirportData = AirportData
    { _aKind :: !Text
    , _aName :: !(Maybe Text)
    , _aCity :: !(Maybe Text)
    , _aCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AirportData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKind'
--
-- * 'aName'
--
-- * 'aCity'
--
-- * 'aCode'
airportData
    :: AirportData
airportData =
    AirportData
    { _aKind = "qpxexpress#airportData"
    , _aName = Nothing
    , _aCity = Nothing
    , _aCode = Nothing
    }

-- | Identifies this as an airport object. Value: the fixed string
-- qpxexpress#airportData.
aKind :: Lens' AirportData Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The name of an airport. For example, for airport BOS the name is
-- \"Boston Logan International\".
aName :: Lens' AirportData (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The city code an airport is located in. For example, for JFK airport,
-- this is NYC.
aCity :: Lens' AirportData (Maybe Text)
aCity = lens _aCity (\ s a -> s{_aCity = a})

-- | An airport\'s code. For example, for Boston Logan airport, this is BOS.
aCode :: Lens' AirportData (Maybe Text)
aCode = lens _aCode (\ s a -> s{_aCode = a})

-- | Information about an item of baggage.
--
-- /See:/ 'bagDescriptor' smart constructor.
data BagDescriptor = BagDescriptor
    { _bdKind           :: !Text
    , _bdCommercialName :: !(Maybe Text)
    , _bdCount          :: !(Maybe Int32)
    , _bdDescription    :: !(Maybe [Text])
    , _bdSubcode        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BagDescriptor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdKind'
--
-- * 'bdCommercialName'
--
-- * 'bdCount'
--
-- * 'bdDescription'
--
-- * 'bdSubcode'
bagDescriptor
    :: BagDescriptor
bagDescriptor =
    BagDescriptor
    { _bdKind = "qpxexpress#bagDescriptor"
    , _bdCommercialName = Nothing
    , _bdCount = Nothing
    , _bdDescription = Nothing
    , _bdSubcode = Nothing
    }

-- | Identifies this as a baggage object. Value: the fixed string
-- qpxexpress#bagDescriptor.
bdKind :: Lens' BagDescriptor Text
bdKind = lens _bdKind (\ s a -> s{_bdKind = a})

-- | Provides the commercial name for an optional service.
bdCommercialName :: Lens' BagDescriptor (Maybe Text)
bdCommercialName
  = lens _bdCommercialName
      (\ s a -> s{_bdCommercialName = a})

-- | How many of this type of bag will be checked on this flight.
bdCount :: Lens' BagDescriptor (Maybe Int32)
bdCount = lens _bdCount (\ s a -> s{_bdCount = a})

-- | A description of the baggage.
bdDescription :: Lens' BagDescriptor [Text]
bdDescription
  = lens _bdDescription
      (\ s a -> s{_bdDescription = a})
      . _Default
      . _Coerce

-- | The standard IATA subcode used to identify this optional service.
bdSubcode :: Lens' BagDescriptor (Maybe Text)
bdSubcode
  = lens _bdSubcode (\ s a -> s{_bdSubcode = a})

-- | Information about a carrier (ie. an airline, bus line, railroad, etc)
-- that might be useful to display to an end-user.
--
-- /See:/ 'carrierData' smart constructor.
data CarrierData = CarrierData
    { _cKind :: !Text
    , _cName :: !(Maybe Text)
    , _cCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CarrierData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cKind'
--
-- * 'cName'
--
-- * 'cCode'
carrierData
    :: CarrierData
carrierData =
    CarrierData
    { _cKind = "qpxexpress#carrierData"
    , _cName = Nothing
    , _cCode = Nothing
    }

-- | Identifies this as a kind of carrier (ie. an airline, bus line,
-- railroad, etc). Value: the fixed string qpxexpress#carrierData.
cKind :: Lens' CarrierData Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The long, full name of a carrier. For example: American Airlines.
cName :: Lens' CarrierData (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The IATA designator of a carrier (airline, etc). For example, for
-- American Airlines, the code is AA.
cCode :: Lens' CarrierData (Maybe Text)
cCode = lens _cCode (\ s a -> s{_cCode = a})

-- | Information about a city that might be useful to an end-user; typically
-- the city of an airport.
--
-- /See:/ 'cityData' smart constructor.
data CityData = CityData
    { _cdCountry :: !(Maybe Text)
    , _cdKind    :: !Text
    , _cdName    :: !(Maybe Text)
    , _cdCode    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CityData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdCountry'
--
-- * 'cdKind'
--
-- * 'cdName'
--
-- * 'cdCode'
cityData
    :: CityData
cityData =
    CityData
    { _cdCountry = Nothing
    , _cdKind = "qpxexpress#cityData"
    , _cdName = Nothing
    , _cdCode = Nothing
    }

-- | The two-character country code of the country the city is located in.
-- For example, US for the United States of America.
cdCountry :: Lens' CityData (Maybe Text)
cdCountry
  = lens _cdCountry (\ s a -> s{_cdCountry = a})

-- | Identifies this as a city, typically with one or more airports. Value:
-- the fixed string qpxexpress#cityData.
cdKind :: Lens' CityData Text
cdKind = lens _cdKind (\ s a -> s{_cdKind = a})

-- | The full name of a city. An example would be: New York.
cdName :: Lens' CityData (Maybe Text)
cdName = lens _cdName (\ s a -> s{_cdName = a})

-- | The IATA character ID of a city. For example, for Boston this is BOS.
cdCode :: Lens' CityData (Maybe Text)
cdCode = lens _cdCode (\ s a -> s{_cdCode = a})

-- | Detailed information about components found in the solutions of this
-- response, including a trip\'s airport, city, taxes, airline, and
-- aircraft.
--
-- /See:/ 'data'' smart constructor.
data Data = Data
    { _dCarrier  :: !(Maybe [Maybe CarrierData])
    , _dKind     :: !Text
    , _dAircraft :: !(Maybe [Maybe AircraftData])
    , _dAirport  :: !(Maybe [Maybe AirportData])
    , _dCity     :: !(Maybe [Maybe CityData])
    , _dTax      :: !(Maybe [Maybe TaxData])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Data' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCarrier'
--
-- * 'dKind'
--
-- * 'dAircraft'
--
-- * 'dAirport'
--
-- * 'dCity'
--
-- * 'dTax'
data'
    :: Data
data' =
    Data
    { _dCarrier = Nothing
    , _dKind = "qpxexpress#data"
    , _dAircraft = Nothing
    , _dAirport = Nothing
    , _dCity = Nothing
    , _dTax = Nothing
    }

-- | The airline carrier of the aircraft flying between an origin and
-- destination. Allowed values are IATA carrier codes.
dCarrier :: Lens' Data [Maybe CarrierData]
dCarrier
  = lens _dCarrier (\ s a -> s{_dCarrier = a}) .
      _Default
      . _Coerce

-- | Identifies this as QPX Express response resource, including a trip\'s
-- airport, city, taxes, airline, and aircraft. Value: the fixed string
-- qpxexpress#data.
dKind :: Lens' Data Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | The aircraft that is flying between an origin and destination.
dAircraft :: Lens' Data [Maybe AircraftData]
dAircraft
  = lens _dAircraft (\ s a -> s{_dAircraft = a}) .
      _Default
      . _Coerce

-- | The airport of an origin or destination.
dAirport :: Lens' Data [Maybe AirportData]
dAirport
  = lens _dAirport (\ s a -> s{_dAirport = a}) .
      _Default
      . _Coerce

-- | The city that is either the origin or destination of part of a trip.
dCity :: Lens' Data [Maybe CityData]
dCity
  = lens _dCity (\ s a -> s{_dCity = a}) . _Default .
      _Coerce

-- | The taxes due for flying between an origin and a destination.
dTax :: Lens' Data [Maybe TaxData]
dTax
  = lens _dTax (\ s a -> s{_dTax = a}) . _Default .
      _Coerce

-- | Complete information about a fare used in the solution to a low-fare
-- search query. In the airline industry a fare is a price an airline
-- charges for one-way travel between two points. A fare typically contains
-- a carrier code, two city codes, a price, and a fare basis. (A fare basis
-- is a one-to-eight character alphanumeric code used to identify a fare.)
--
-- /See:/ 'fareInfo' smart constructor.
data FareInfo = FareInfo
    { _fiCarrier     :: !(Maybe Text)
    , _fiDestination :: !(Maybe Text)
    , _fiOrigin      :: !(Maybe Text)
    , _fiPrivate     :: !(Maybe Bool)
    , _fiKind        :: !Text
    , _fiBasisCode   :: !(Maybe Text)
    , _fiId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FareInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiCarrier'
--
-- * 'fiDestination'
--
-- * 'fiOrigin'
--
-- * 'fiPrivate'
--
-- * 'fiKind'
--
-- * 'fiBasisCode'
--
-- * 'fiId'
fareInfo
    :: FareInfo
fareInfo =
    FareInfo
    { _fiCarrier = Nothing
    , _fiDestination = Nothing
    , _fiOrigin = Nothing
    , _fiPrivate = Nothing
    , _fiKind = "qpxexpress#fareInfo"
    , _fiBasisCode = Nothing
    , _fiId = Nothing
    }

-- | The carrier of the aircraft or other vehicle commuting between two
-- points.
fiCarrier :: Lens' FareInfo (Maybe Text)
fiCarrier
  = lens _fiCarrier (\ s a -> s{_fiCarrier = a})

-- | The city code of the city the trip ends at.
fiDestination :: Lens' FareInfo (Maybe Text)
fiDestination
  = lens _fiDestination
      (\ s a -> s{_fiDestination = a})

-- | The city code of the city the trip begins at.
fiOrigin :: Lens' FareInfo (Maybe Text)
fiOrigin = lens _fiOrigin (\ s a -> s{_fiOrigin = a})

-- | Whether this is a private fare, for example one offered only to select
-- customers rather than the general public.
fiPrivate :: Lens' FareInfo (Maybe Bool)
fiPrivate
  = lens _fiPrivate (\ s a -> s{_fiPrivate = a})

-- | Identifies this as a fare object. Value: the fixed string
-- qpxexpress#fareInfo.
fiKind :: Lens' FareInfo Text
fiKind = lens _fiKind (\ s a -> s{_fiKind = a})

fiBasisCode :: Lens' FareInfo (Maybe Text)
fiBasisCode
  = lens _fiBasisCode (\ s a -> s{_fiBasisCode = a})

-- | A unique identifier of the fare.
fiId :: Lens' FareInfo (Maybe Text)
fiId = lens _fiId (\ s a -> s{_fiId = a})

-- | A flight is a sequence of legs with the same airline carrier and flight
-- number. (A leg is the smallest unit of travel, in the case of a flight a
-- takeoff immediately followed by a landing at two set points on a
-- particular carrier with a particular flight number.) The naive view is
-- that a flight is scheduled travel of an aircraft between two points,
-- with possibly intermediate stops, but carriers will frequently list
-- flights that require a change of aircraft between legs.
--
-- /See:/ 'flightInfo' smart constructor.
data FlightInfo = FlightInfo
    { _fCarrier :: !(Maybe Text)
    , _fNumber  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlightInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCarrier'
--
-- * 'fNumber'
flightInfo
    :: FlightInfo
flightInfo =
    FlightInfo
    { _fCarrier = Nothing
    , _fNumber = Nothing
    }

fCarrier :: Lens' FlightInfo (Maybe Text)
fCarrier = lens _fCarrier (\ s a -> s{_fCarrier = a})

-- | The flight number.
fNumber :: Lens' FlightInfo (Maybe Text)
fNumber = lens _fNumber (\ s a -> s{_fNumber = a})

-- | Information about free baggage allowed on one segment of a trip.
--
-- /See:/ 'freeBaggageAllowance' smart constructor.
data FreeBaggageAllowance = FreeBaggageAllowance
    { _fbaKind          :: !Text
    , _fbaPounds        :: !(Maybe Int32)
    , _fbaBagDescriptor :: !(Maybe [Maybe BagDescriptor])
    , _fbaKilosPerPiece :: !(Maybe Int32)
    , _fbaKilos         :: !(Maybe Int32)
    , _fbaPieces        :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FreeBaggageAllowance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fbaKind'
--
-- * 'fbaPounds'
--
-- * 'fbaBagDescriptor'
--
-- * 'fbaKilosPerPiece'
--
-- * 'fbaKilos'
--
-- * 'fbaPieces'
freeBaggageAllowance
    :: FreeBaggageAllowance
freeBaggageAllowance =
    FreeBaggageAllowance
    { _fbaKind = "qpxexpress#freeBaggageAllowance"
    , _fbaPounds = Nothing
    , _fbaBagDescriptor = Nothing
    , _fbaKilosPerPiece = Nothing
    , _fbaKilos = Nothing
    , _fbaPieces = Nothing
    }

-- | Identifies this as free baggage object, allowed on one segment of a
-- trip. Value: the fixed string qpxexpress#freeBaggageAllowance.
fbaKind :: Lens' FreeBaggageAllowance Text
fbaKind = lens _fbaKind (\ s a -> s{_fbaKind = a})

-- | The number of pounds of free baggage allowed.
fbaPounds :: Lens' FreeBaggageAllowance (Maybe Int32)
fbaPounds
  = lens _fbaPounds (\ s a -> s{_fbaPounds = a})

-- | A representation of a type of bag, such as an ATPCo subcode, Commercial
-- Name, or other description.
fbaBagDescriptor :: Lens' FreeBaggageAllowance [Maybe BagDescriptor]
fbaBagDescriptor
  = lens _fbaBagDescriptor
      (\ s a -> s{_fbaBagDescriptor = a})
      . _Default
      . _Coerce

-- | The maximum number of kilos any one piece of baggage may weigh.
fbaKilosPerPiece :: Lens' FreeBaggageAllowance (Maybe Int32)
fbaKilosPerPiece
  = lens _fbaKilosPerPiece
      (\ s a -> s{_fbaKilosPerPiece = a})

-- | The maximum number of kilos all the free baggage together may weigh.
fbaKilos :: Lens' FreeBaggageAllowance (Maybe Int32)
fbaKilos = lens _fbaKilos (\ s a -> s{_fbaKilos = a})

-- | The number of free pieces of baggage allowed.
fbaPieces :: Lens' FreeBaggageAllowance (Maybe Int32)
fbaPieces
  = lens _fbaPieces (\ s a -> s{_fbaPieces = a})

-- | Information about a leg. (A leg is the smallest unit of travel, in the
-- case of a flight a takeoff immediately followed by a landing at two set
-- points on a particular carrier with a particular flight number.)
--
-- /See:/ 'legInfo' smart constructor.
data LegInfo = LegInfo
    { _liDestination         :: !(Maybe Text)
    , _liOrigin              :: !(Maybe Text)
    , _liSecure              :: !(Maybe Bool)
    , _liKind                :: !Text
    , _liAircraft            :: !(Maybe Text)
    , _liArrivalTime         :: !(Maybe Text)
    , _liOnTimePerformance   :: !(Maybe Int32)
    , _liOperatingDisclosure :: !(Maybe Text)
    , _liMeal                :: !(Maybe Text)
    , _liId                  :: !(Maybe Text)
    , _liOriginTerminal      :: !(Maybe Text)
    , _liChangePlane         :: !(Maybe Bool)
    , _liDestinationTerminal :: !(Maybe Text)
    , _liConnectionDuration  :: !(Maybe Int32)
    , _liDuration            :: !(Maybe Int32)
    , _liMileage             :: !(Maybe Int32)
    , _liDepartureTime       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LegInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liDestination'
--
-- * 'liOrigin'
--
-- * 'liSecure'
--
-- * 'liKind'
--
-- * 'liAircraft'
--
-- * 'liArrivalTime'
--
-- * 'liOnTimePerformance'
--
-- * 'liOperatingDisclosure'
--
-- * 'liMeal'
--
-- * 'liId'
--
-- * 'liOriginTerminal'
--
-- * 'liChangePlane'
--
-- * 'liDestinationTerminal'
--
-- * 'liConnectionDuration'
--
-- * 'liDuration'
--
-- * 'liMileage'
--
-- * 'liDepartureTime'
legInfo
    :: LegInfo
legInfo =
    LegInfo
    { _liDestination = Nothing
    , _liOrigin = Nothing
    , _liSecure = Nothing
    , _liKind = "qpxexpress#legInfo"
    , _liAircraft = Nothing
    , _liArrivalTime = Nothing
    , _liOnTimePerformance = Nothing
    , _liOperatingDisclosure = Nothing
    , _liMeal = Nothing
    , _liId = Nothing
    , _liOriginTerminal = Nothing
    , _liChangePlane = Nothing
    , _liDestinationTerminal = Nothing
    , _liConnectionDuration = Nothing
    , _liDuration = Nothing
    , _liMileage = Nothing
    , _liDepartureTime = Nothing
    }

-- | The leg destination as a city and airport.
liDestination :: Lens' LegInfo (Maybe Text)
liDestination
  = lens _liDestination
      (\ s a -> s{_liDestination = a})

-- | The leg origin as a city and airport.
liOrigin :: Lens' LegInfo (Maybe Text)
liOrigin = lens _liOrigin (\ s a -> s{_liOrigin = a})

-- | Whether passenger information must be furnished to the United States
-- Transportation Security Administration (TSA) prior to departure.
liSecure :: Lens' LegInfo (Maybe Bool)
liSecure = lens _liSecure (\ s a -> s{_liSecure = a})

-- | Identifies this as a leg object. A leg is the smallest unit of travel,
-- in the case of a flight a takeoff immediately followed by a landing at
-- two set points on a particular carrier with a particular flight number.
-- Value: the fixed string qpxexpress#legInfo.
liKind :: Lens' LegInfo Text
liKind = lens _liKind (\ s a -> s{_liKind = a})

-- | The aircraft (or bus, ferry, railcar, etc) travelling between the two
-- points of this leg.
liAircraft :: Lens' LegInfo (Maybe Text)
liAircraft
  = lens _liAircraft (\ s a -> s{_liAircraft = a})

-- | The scheduled time of arrival at the destination of the leg, local to
-- the point of arrival.
liArrivalTime :: Lens' LegInfo (Maybe Text)
liArrivalTime
  = lens _liArrivalTime
      (\ s a -> s{_liArrivalTime = a})

-- | In percent, the published on time performance on this leg.
liOnTimePerformance :: Lens' LegInfo (Maybe Int32)
liOnTimePerformance
  = lens _liOnTimePerformance
      (\ s a -> s{_liOnTimePerformance = a})

-- | Department of Transportation disclosure information on the actual
-- operator of a flight in a code share. (A code share refers to a
-- marketing agreement between two carriers, where one carrier will list in
-- its schedules (and take bookings for) flights that are actually operated
-- by another carrier.)
liOperatingDisclosure :: Lens' LegInfo (Maybe Text)
liOperatingDisclosure
  = lens _liOperatingDisclosure
      (\ s a -> s{_liOperatingDisclosure = a})

-- | A simple, general description of the meal(s) served on the flight, for
-- example: \"Hot meal\".
liMeal :: Lens' LegInfo (Maybe Text)
liMeal = lens _liMeal (\ s a -> s{_liMeal = a})

-- | An identifier that uniquely identifies this leg in the solution.
liId :: Lens' LegInfo (Maybe Text)
liId = lens _liId (\ s a -> s{_liId = a})

-- | The terminal the flight is scheduled to depart from.
liOriginTerminal :: Lens' LegInfo (Maybe Text)
liOriginTerminal
  = lens _liOriginTerminal
      (\ s a -> s{_liOriginTerminal = a})

-- | Whether you have to change planes following this leg. Only applies to
-- the next leg.
liChangePlane :: Lens' LegInfo (Maybe Bool)
liChangePlane
  = lens _liChangePlane
      (\ s a -> s{_liChangePlane = a})

-- | The terminal the flight is scheduled to arrive at.
liDestinationTerminal :: Lens' LegInfo (Maybe Text)
liDestinationTerminal
  = lens _liDestinationTerminal
      (\ s a -> s{_liDestinationTerminal = a})

-- | Duration of a connection following this leg, in minutes.
liConnectionDuration :: Lens' LegInfo (Maybe Int32)
liConnectionDuration
  = lens _liConnectionDuration
      (\ s a -> s{_liConnectionDuration = a})

-- | The scheduled travelling time from the origin to the destination.
liDuration :: Lens' LegInfo (Maybe Int32)
liDuration
  = lens _liDuration (\ s a -> s{_liDuration = a})

-- | The number of miles in this leg.
liMileage :: Lens' LegInfo (Maybe Int32)
liMileage
  = lens _liMileage (\ s a -> s{_liMileage = a})

-- | The scheduled departure time of the leg, local to the point of
-- departure.
liDepartureTime :: Lens' LegInfo (Maybe Text)
liDepartureTime
  = lens _liDepartureTime
      (\ s a -> s{_liDepartureTime = a})

-- | The number and type of passengers. Unfortunately the definition of an
-- infant, child, adult, and senior citizen varies across carriers and
-- reservation systems.
--
-- /See:/ 'passengerCounts' smart constructor.
data PassengerCounts = PassengerCounts
    { _pcSeniorCount       :: !(Maybe Int32)
    , _pcKind              :: !Text
    , _pcInfantInLapCount  :: !(Maybe Int32)
    , _pcChildCount        :: !(Maybe Int32)
    , _pcInfantInSeatCount :: !(Maybe Int32)
    , _pcAdultCount        :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PassengerCounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcSeniorCount'
--
-- * 'pcKind'
--
-- * 'pcInfantInLapCount'
--
-- * 'pcChildCount'
--
-- * 'pcInfantInSeatCount'
--
-- * 'pcAdultCount'
passengerCounts
    :: PassengerCounts
passengerCounts =
    PassengerCounts
    { _pcSeniorCount = Nothing
    , _pcKind = "qpxexpress#passengerCounts"
    , _pcInfantInLapCount = Nothing
    , _pcChildCount = Nothing
    , _pcInfantInSeatCount = Nothing
    , _pcAdultCount = Nothing
    }

-- | The number of passengers that are senior citizens.
pcSeniorCount :: Lens' PassengerCounts (Maybe Int32)
pcSeniorCount
  = lens _pcSeniorCount
      (\ s a -> s{_pcSeniorCount = a})

-- | Identifies this as a passenger count object, representing the number of
-- passengers. Value: the fixed string qpxexpress#passengerCounts.
pcKind :: Lens' PassengerCounts Text
pcKind = lens _pcKind (\ s a -> s{_pcKind = a})

-- | The number of passengers that are infants travelling in the lap of an
-- adult.
pcInfantInLapCount :: Lens' PassengerCounts (Maybe Int32)
pcInfantInLapCount
  = lens _pcInfantInLapCount
      (\ s a -> s{_pcInfantInLapCount = a})

-- | The number of passengers that are children.
pcChildCount :: Lens' PassengerCounts (Maybe Int32)
pcChildCount
  = lens _pcChildCount (\ s a -> s{_pcChildCount = a})

-- | The number of passengers that are infants each assigned a seat.
pcInfantInSeatCount :: Lens' PassengerCounts (Maybe Int32)
pcInfantInSeatCount
  = lens _pcInfantInSeatCount
      (\ s a -> s{_pcInfantInSeatCount = a})

-- | The number of passengers that are adults.
pcAdultCount :: Lens' PassengerCounts (Maybe Int32)
pcAdultCount
  = lens _pcAdultCount (\ s a -> s{_pcAdultCount = a})

-- | The price of one or more travel segments. The currency used to purchase
-- tickets is usually determined by the sale\/ticketing city or the
-- sale\/ticketing country, unless none are specified, in which case it
-- defaults to that of the journey origin country.
--
-- /See:/ 'pricingInfo' smart constructor.
data PricingInfo = PricingInfo
    { _piSaleTaxTotal        :: !(Maybe Text)
    , _piRefundable          :: !(Maybe Bool)
    , _piPtc                 :: !(Maybe Text)
    , _piBaseFareTotal       :: !(Maybe Text)
    , _piFare                :: !(Maybe [Maybe FareInfo])
    , _piKind                :: !Text
    , _piSegmentPricing      :: !(Maybe [Maybe SegmentPricing])
    , _piPassengers          :: !(Maybe (Maybe PassengerCounts))
    , _piFareCalculation     :: !(Maybe Text)
    , _piLatestTicketingTime :: !(Maybe Text)
    , _piTax                 :: !(Maybe [Maybe TaxInfo])
    , _piSaleTotal           :: !(Maybe Text)
    , _piSaleFareTotal       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PricingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piSaleTaxTotal'
--
-- * 'piRefundable'
--
-- * 'piPtc'
--
-- * 'piBaseFareTotal'
--
-- * 'piFare'
--
-- * 'piKind'
--
-- * 'piSegmentPricing'
--
-- * 'piPassengers'
--
-- * 'piFareCalculation'
--
-- * 'piLatestTicketingTime'
--
-- * 'piTax'
--
-- * 'piSaleTotal'
--
-- * 'piSaleFareTotal'
pricingInfo
    :: PricingInfo
pricingInfo =
    PricingInfo
    { _piSaleTaxTotal = Nothing
    , _piRefundable = Nothing
    , _piPtc = Nothing
    , _piBaseFareTotal = Nothing
    , _piFare = Nothing
    , _piKind = "qpxexpress#pricingInfo"
    , _piSegmentPricing = Nothing
    , _piPassengers = Nothing
    , _piFareCalculation = Nothing
    , _piLatestTicketingTime = Nothing
    , _piTax = Nothing
    , _piSaleTotal = Nothing
    , _piSaleFareTotal = Nothing
    }

-- | The taxes in the sale or equivalent currency.
piSaleTaxTotal :: Lens' PricingInfo (Maybe Text)
piSaleTaxTotal
  = lens _piSaleTaxTotal
      (\ s a -> s{_piSaleTaxTotal = a})

-- | Whether the fares on this pricing are refundable.
piRefundable :: Lens' PricingInfo (Maybe Bool)
piRefundable
  = lens _piRefundable (\ s a -> s{_piRefundable = a})

-- | The passenger type code for this pricing. An alphanumeric code used by a
-- carrier to restrict fares to certain categories of passenger. For
-- instance, a fare might be valid only for senior citizens.
piPtc :: Lens' PricingInfo (Maybe Text)
piPtc = lens _piPtc (\ s a -> s{_piPtc = a})

-- | The total fare in the base fare currency (the currency of the country of
-- origin). This element is only present when the sales currency and the
-- currency of the country of commencement are different.
piBaseFareTotal :: Lens' PricingInfo (Maybe Text)
piBaseFareTotal
  = lens _piBaseFareTotal
      (\ s a -> s{_piBaseFareTotal = a})

-- | The fare used to price one or more segments.
piFare :: Lens' PricingInfo [Maybe FareInfo]
piFare
  = lens _piFare (\ s a -> s{_piFare = a}) . _Default .
      _Coerce

-- | Identifies this as a pricing object, representing the price of one or
-- more travel segments. Value: the fixed string qpxexpress#pricingInfo.
piKind :: Lens' PricingInfo Text
piKind = lens _piKind (\ s a -> s{_piKind = a})

-- | The per-segment price and baggage information.
piSegmentPricing :: Lens' PricingInfo [Maybe SegmentPricing]
piSegmentPricing
  = lens _piSegmentPricing
      (\ s a -> s{_piSegmentPricing = a})
      . _Default
      . _Coerce

-- | The number of passengers to which this price applies.
piPassengers :: Lens' PricingInfo (Maybe (Maybe PassengerCounts))
piPassengers
  = lens _piPassengers (\ s a -> s{_piPassengers = a})

-- | The horizontal fare calculation. This is a field on a ticket that
-- displays all of the relevant items that go into the calculation of the
-- fare.
piFareCalculation :: Lens' PricingInfo (Maybe Text)
piFareCalculation
  = lens _piFareCalculation
      (\ s a -> s{_piFareCalculation = a})

-- | The latest ticketing time for this pricing assuming the reservation
-- occurs at ticketing time and there is no change in fares\/rules. The
-- time is local to the point of sale (POS).
piLatestTicketingTime :: Lens' PricingInfo (Maybe Text)
piLatestTicketingTime
  = lens _piLatestTicketingTime
      (\ s a -> s{_piLatestTicketingTime = a})

-- | The taxes used to calculate the tax total per ticket.
piTax :: Lens' PricingInfo [Maybe TaxInfo]
piTax
  = lens _piTax (\ s a -> s{_piTax = a}) . _Default .
      _Coerce

-- | Total per-passenger price (fare and tax) in the sale or equivalent
-- currency.
piSaleTotal :: Lens' PricingInfo (Maybe Text)
piSaleTotal
  = lens _piSaleTotal (\ s a -> s{_piSaleTotal = a})

-- | The total fare in the sale or equivalent currency.
piSaleFareTotal :: Lens' PricingInfo (Maybe Text)
piSaleFareTotal
  = lens _piSaleFareTotal
      (\ s a -> s{_piSaleFareTotal = a})

-- | Details of a segment of a flight; a segment is one or more consecutive
-- legs on the same flight. For example a hypothetical flight ZZ001, from
-- DFW to OGG, would have one segment with two legs: DFW to HNL (leg 1),
-- HNL to OGG (leg 2), and DFW to OGG (legs 1 and 2).
--
-- /See:/ 'segmentInfo' smart constructor.
data SegmentInfo = SegmentInfo
    { _siBookingCode                 :: !(Maybe Text)
    , _siCabin                       :: !(Maybe Text)
    , _siBookingCodeCount            :: !(Maybe Int32)
    , _siSubjectToGovernmentApproval :: !(Maybe Bool)
    , _siKind                        :: !Text
    , _siFlight                      :: !(Maybe (Maybe FlightInfo))
    , _siId                          :: !(Maybe Text)
    , _siMarriedSegmentGroup         :: !(Maybe Text)
    , _siConnectionDuration          :: !(Maybe Int32)
    , _siDuration                    :: !(Maybe Int32)
    , _siLeg                         :: !(Maybe [Maybe LegInfo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SegmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siBookingCode'
--
-- * 'siCabin'
--
-- * 'siBookingCodeCount'
--
-- * 'siSubjectToGovernmentApproval'
--
-- * 'siKind'
--
-- * 'siFlight'
--
-- * 'siId'
--
-- * 'siMarriedSegmentGroup'
--
-- * 'siConnectionDuration'
--
-- * 'siDuration'
--
-- * 'siLeg'
segmentInfo
    :: SegmentInfo
segmentInfo =
    SegmentInfo
    { _siBookingCode = Nothing
    , _siCabin = Nothing
    , _siBookingCodeCount = Nothing
    , _siSubjectToGovernmentApproval = Nothing
    , _siKind = "qpxexpress#segmentInfo"
    , _siFlight = Nothing
    , _siId = Nothing
    , _siMarriedSegmentGroup = Nothing
    , _siConnectionDuration = Nothing
    , _siDuration = Nothing
    , _siLeg = Nothing
    }

-- | The booking code or class for this segment.
siBookingCode :: Lens' SegmentInfo (Maybe Text)
siBookingCode
  = lens _siBookingCode
      (\ s a -> s{_siBookingCode = a})

-- | The cabin booked for this segment.
siCabin :: Lens' SegmentInfo (Maybe Text)
siCabin = lens _siCabin (\ s a -> s{_siCabin = a})

-- | The number of seats available in this booking code on this segment.
siBookingCodeCount :: Lens' SegmentInfo (Maybe Int32)
siBookingCodeCount
  = lens _siBookingCodeCount
      (\ s a -> s{_siBookingCodeCount = a})

-- | Whether the operation of this segment remains subject to government
-- approval.
siSubjectToGovernmentApproval :: Lens' SegmentInfo (Maybe Bool)
siSubjectToGovernmentApproval
  = lens _siSubjectToGovernmentApproval
      (\ s a -> s{_siSubjectToGovernmentApproval = a})

-- | Identifies this as a segment object. A segment is one or more
-- consecutive legs on the same flight. For example a hypothetical flight
-- ZZ001, from DFW to OGG, could have one segment with two legs: DFW to HNL
-- (leg 1), HNL to OGG (leg 2). Value: the fixed string
-- qpxexpress#segmentInfo.
siKind :: Lens' SegmentInfo Text
siKind = lens _siKind (\ s a -> s{_siKind = a})

-- | The flight this is a segment of.
siFlight :: Lens' SegmentInfo (Maybe (Maybe FlightInfo))
siFlight = lens _siFlight (\ s a -> s{_siFlight = a})

-- | An id uniquely identifying the segment in the solution.
siId :: Lens' SegmentInfo (Maybe Text)
siId = lens _siId (\ s a -> s{_siId = a})

-- | The solution-based index of a segment in a married segment group.
-- Married segments can only be booked together. For example, an airline
-- might report a certain booking code as sold out from Boston to
-- Pittsburgh, but as available as part of two married segments Boston to
-- Chicago connecting through Pittsburgh. For example content of this
-- field, consider the round-trip flight ZZ1 PHX-PHL ZZ2 PHL-CLT ZZ3
-- CLT-PHX. This has three segments, with the two outbound ones (ZZ1 ZZ2)
-- married. In this case, the two outbound segments belong to married
-- segment group 0, and the return segment belongs to married segment group
-- 1.
siMarriedSegmentGroup :: Lens' SegmentInfo (Maybe Text)
siMarriedSegmentGroup
  = lens _siMarriedSegmentGroup
      (\ s a -> s{_siMarriedSegmentGroup = a})

-- | In minutes, the duration of the connection following this segment.
siConnectionDuration :: Lens' SegmentInfo (Maybe Int32)
siConnectionDuration
  = lens _siConnectionDuration
      (\ s a -> s{_siConnectionDuration = a})

-- | The duration of the flight segment in minutes.
siDuration :: Lens' SegmentInfo (Maybe Int32)
siDuration
  = lens _siDuration (\ s a -> s{_siDuration = a})

-- | The legs composing this segment.
siLeg :: Lens' SegmentInfo [Maybe LegInfo]
siLeg
  = lens _siLeg (\ s a -> s{_siLeg = a}) . _Default .
      _Coerce

-- | The price of this segment.
--
-- /See:/ 'segmentPricing' smart constructor.
data SegmentPricing = SegmentPricing
    { _spFreeBaggageOption :: !(Maybe [Maybe FreeBaggageAllowance])
    , _spKind              :: !Text
    , _spFareId            :: !(Maybe Text)
    , _spSegmentId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SegmentPricing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spFreeBaggageOption'
--
-- * 'spKind'
--
-- * 'spFareId'
--
-- * 'spSegmentId'
segmentPricing
    :: SegmentPricing
segmentPricing =
    SegmentPricing
    { _spFreeBaggageOption = Nothing
    , _spKind = "qpxexpress#segmentPricing"
    , _spFareId = Nothing
    , _spSegmentId = Nothing
    }

-- | Details of the free baggage allowance on this segment.
spFreeBaggageOption :: Lens' SegmentPricing [Maybe FreeBaggageAllowance]
spFreeBaggageOption
  = lens _spFreeBaggageOption
      (\ s a -> s{_spFreeBaggageOption = a})
      . _Default
      . _Coerce

-- | Identifies this as a segment pricing object, representing the price of
-- this segment. Value: the fixed string qpxexpress#segmentPricing.
spKind :: Lens' SegmentPricing Text
spKind = lens _spKind (\ s a -> s{_spKind = a})

-- | A segment identifier unique within a single solution. It is used to
-- refer to different parts of the same solution.
spFareId :: Lens' SegmentPricing (Maybe Text)
spFareId = lens _spFareId (\ s a -> s{_spFareId = a})

-- | Unique identifier in the response of this segment.
spSegmentId :: Lens' SegmentPricing (Maybe Text)
spSegmentId
  = lens _spSegmentId (\ s a -> s{_spSegmentId = a})

-- | Information about a slice. A slice represents a traveller\'s intent, the
-- portion of a low-fare search corresponding to a traveler\'s request to
-- get between two points. One-way journeys are generally expressed using 1
-- slice, round-trips using 2. For example, if a traveler specifies the
-- following trip in a user interface: | Origin | Destination | Departure
-- Date | | BOS | LAX | March 10, 2007 | | LAX | SYD | March 17, 2007 | |
-- SYD | BOS | March 22, 2007 | then this is a three slice trip.
--
-- /See:/ 'sliceInfo' smart constructor.
data SliceInfo = SliceInfo
    { _sKind     :: !Text
    , _sSegment  :: !(Maybe [Maybe SegmentInfo])
    , _sDuration :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SliceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sSegment'
--
-- * 'sDuration'
sliceInfo
    :: SliceInfo
sliceInfo =
    SliceInfo
    { _sKind = "qpxexpress#sliceInfo"
    , _sSegment = Nothing
    , _sDuration = Nothing
    }

-- | Identifies this as a slice object. A slice represents a traveller\'s
-- intent, the portion of a low-fare search corresponding to a traveler\'s
-- request to get between two points. One-way journeys are generally
-- expressed using 1 slice, round-trips using 2. Value: the fixed string
-- qpxexpress#sliceInfo.
sKind :: Lens' SliceInfo Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The segment(s) constituting the slice.
sSegment :: Lens' SliceInfo [Maybe SegmentInfo]
sSegment
  = lens _sSegment (\ s a -> s{_sSegment = a}) .
      _Default
      . _Coerce

-- | The duration of the slice in minutes.
sDuration :: Lens' SliceInfo (Maybe Int32)
sDuration
  = lens _sDuration (\ s a -> s{_sDuration = a})

-- | Criteria a desired slice must satisfy.
--
-- /See:/ 'sliceInput' smart constructor.
data SliceInput = SliceInput
    { _sliDestination            :: !(Maybe Text)
    , _sliOrigin                 :: !(Maybe Text)
    , _sliMaxStops               :: !(Maybe Int32)
    , _sliKind                   :: !Text
    , _sliProhibitedCarrier      :: !(Maybe [Text])
    , _sliDate                   :: !(Maybe Text)
    , _sliMaxConnectionDuration  :: !(Maybe Int32)
    , _sliPreferredCabin         :: !(Maybe Text)
    , _sliPermittedDepartureTime :: !(Maybe (Maybe TimeOfDayRange))
    , _sliPermittedCarrier       :: !(Maybe [Text])
    , _sliAlliance               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SliceInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sliDestination'
--
-- * 'sliOrigin'
--
-- * 'sliMaxStops'
--
-- * 'sliKind'
--
-- * 'sliProhibitedCarrier'
--
-- * 'sliDate'
--
-- * 'sliMaxConnectionDuration'
--
-- * 'sliPreferredCabin'
--
-- * 'sliPermittedDepartureTime'
--
-- * 'sliPermittedCarrier'
--
-- * 'sliAlliance'
sliceInput
    :: SliceInput
sliceInput =
    SliceInput
    { _sliDestination = Nothing
    , _sliOrigin = Nothing
    , _sliMaxStops = Nothing
    , _sliKind = "qpxexpress#sliceInput"
    , _sliProhibitedCarrier = Nothing
    , _sliDate = Nothing
    , _sliMaxConnectionDuration = Nothing
    , _sliPreferredCabin = Nothing
    , _sliPermittedDepartureTime = Nothing
    , _sliPermittedCarrier = Nothing
    , _sliAlliance = Nothing
    }

-- | Airport or city IATA designator of the destination.
sliDestination :: Lens' SliceInput (Maybe Text)
sliDestination
  = lens _sliDestination
      (\ s a -> s{_sliDestination = a})

-- | Airport or city IATA designator of the origin.
sliOrigin :: Lens' SliceInput (Maybe Text)
sliOrigin
  = lens _sliOrigin (\ s a -> s{_sliOrigin = a})

-- | The maximum number of stops you are willing to accept in this slice.
sliMaxStops :: Lens' SliceInput (Maybe Int32)
sliMaxStops
  = lens _sliMaxStops (\ s a -> s{_sliMaxStops = a})

-- | Identifies this as a slice input object, representing the criteria a
-- desired slice must satisfy. Value: the fixed string
-- qpxexpress#sliceInput.
sliKind :: Lens' SliceInput Text
sliKind = lens _sliKind (\ s a -> s{_sliKind = a})

-- | A list of 2-letter IATA airline designators. Exclude slices that use
-- these carriers.
sliProhibitedCarrier :: Lens' SliceInput [Text]
sliProhibitedCarrier
  = lens _sliProhibitedCarrier
      (\ s a -> s{_sliProhibitedCarrier = a})
      . _Default
      . _Coerce

-- | Departure date in YYYY-MM-DD format.
sliDate :: Lens' SliceInput (Maybe Text)
sliDate = lens _sliDate (\ s a -> s{_sliDate = a})

-- | The longest connection between two legs, in minutes, you are willing to
-- accept.
sliMaxConnectionDuration :: Lens' SliceInput (Maybe Int32)
sliMaxConnectionDuration
  = lens _sliMaxConnectionDuration
      (\ s a -> s{_sliMaxConnectionDuration = a})

-- | Prefer solutions that book in this cabin for this slice. Allowed values
-- are COACH, PREMIUM_COACH, BUSINESS, and FIRST.
sliPreferredCabin :: Lens' SliceInput (Maybe Text)
sliPreferredCabin
  = lens _sliPreferredCabin
      (\ s a -> s{_sliPreferredCabin = a})

-- | Slices must depart in this time of day range, local to the point of
-- departure.
sliPermittedDepartureTime :: Lens' SliceInput (Maybe (Maybe TimeOfDayRange))
sliPermittedDepartureTime
  = lens _sliPermittedDepartureTime
      (\ s a -> s{_sliPermittedDepartureTime = a})

-- | A list of 2-letter IATA airline designators. Slices with only these
-- carriers should be returned.
sliPermittedCarrier :: Lens' SliceInput [Text]
sliPermittedCarrier
  = lens _sliPermittedCarrier
      (\ s a -> s{_sliPermittedCarrier = a})
      . _Default
      . _Coerce

-- | Slices with only the carriers in this alliance should be returned; do
-- not use this field with permittedCarrier. Allowed values are ONEWORLD,
-- SKYTEAM, and STAR.
sliAlliance :: Lens' SliceInput (Maybe Text)
sliAlliance
  = lens _sliAlliance (\ s a -> s{_sliAlliance = a})

-- | Tax data.
--
-- /See:/ 'taxData' smart constructor.
data TaxData = TaxData
    { _tdKind :: !Text
    , _tdName :: !(Maybe Text)
    , _tdId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaxData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdKind'
--
-- * 'tdName'
--
-- * 'tdId'
taxData
    :: TaxData
taxData =
    TaxData
    { _tdKind = "qpxexpress#taxData"
    , _tdName = Nothing
    , _tdId = Nothing
    }

-- | Identifies this as a tax data object, representing some tax. Value: the
-- fixed string qpxexpress#taxData.
tdKind :: Lens' TaxData Text
tdKind = lens _tdKind (\ s a -> s{_tdKind = a})

-- | The name of a tax.
tdName :: Lens' TaxData (Maybe Text)
tdName = lens _tdName (\ s a -> s{_tdName = a})

-- | An identifier uniquely identifying a tax in a response.
tdId :: Lens' TaxData (Maybe Text)
tdId = lens _tdId (\ s a -> s{_tdId = a})

-- | Tax information.
--
-- /See:/ 'taxInfo' smart constructor.
data TaxInfo = TaxInfo
    { _tiChargeType :: !(Maybe Text)
    , _tiCountry    :: !(Maybe Text)
    , _tiKind       :: !Text
    , _tiSalePrice  :: !(Maybe Text)
    , _tiCode       :: !(Maybe Text)
    , _tiId         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaxInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiChargeType'
--
-- * 'tiCountry'
--
-- * 'tiKind'
--
-- * 'tiSalePrice'
--
-- * 'tiCode'
--
-- * 'tiId'
taxInfo
    :: TaxInfo
taxInfo =
    TaxInfo
    { _tiChargeType = Nothing
    , _tiCountry = Nothing
    , _tiKind = "qpxexpress#taxInfo"
    , _tiSalePrice = Nothing
    , _tiCode = Nothing
    , _tiId = Nothing
    }

-- | Whether this is a government charge or a carrier surcharge.
tiChargeType :: Lens' TaxInfo (Maybe Text)
tiChargeType
  = lens _tiChargeType (\ s a -> s{_tiChargeType = a})

-- | For government charges, the country levying the charge.
tiCountry :: Lens' TaxInfo (Maybe Text)
tiCountry
  = lens _tiCountry (\ s a -> s{_tiCountry = a})

-- | Identifies this as a tax information object. Value: the fixed string
-- qpxexpress#taxInfo.
tiKind :: Lens' TaxInfo Text
tiKind = lens _tiKind (\ s a -> s{_tiKind = a})

-- | The price of the tax in the sales or equivalent currency.
tiSalePrice :: Lens' TaxInfo (Maybe Text)
tiSalePrice
  = lens _tiSalePrice (\ s a -> s{_tiSalePrice = a})

-- | The code to enter in the ticket\'s tax box.
tiCode :: Lens' TaxInfo (Maybe Text)
tiCode = lens _tiCode (\ s a -> s{_tiCode = a})

-- | Identifier uniquely identifying this tax in a response. Not present for
-- unnamed carrier surcharges.
tiId :: Lens' TaxInfo (Maybe Text)
tiId = lens _tiId (\ s a -> s{_tiId = a})

-- | Two times in a single day defining a time range.
--
-- /See:/ 'timeOfDayRange' smart constructor.
data TimeOfDayRange = TimeOfDayRange
    { _todrKind         :: !Text
    , _todrLatestTime   :: !(Maybe Text)
    , _todrEarliestTime :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeOfDayRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todrKind'
--
-- * 'todrLatestTime'
--
-- * 'todrEarliestTime'
timeOfDayRange
    :: TimeOfDayRange
timeOfDayRange =
    TimeOfDayRange
    { _todrKind = "qpxexpress#timeOfDayRange"
    , _todrLatestTime = Nothing
    , _todrEarliestTime = Nothing
    }

-- | Identifies this as a time of day range object, representing two times in
-- a single day defining a time range. Value: the fixed string
-- qpxexpress#timeOfDayRange.
todrKind :: Lens' TimeOfDayRange Text
todrKind = lens _todrKind (\ s a -> s{_todrKind = a})

-- | The latest time of day in HH:MM format.
todrLatestTime :: Lens' TimeOfDayRange (Maybe Text)
todrLatestTime
  = lens _todrLatestTime
      (\ s a -> s{_todrLatestTime = a})

-- | The earliest time of day in HH:MM format.
todrEarliestTime :: Lens' TimeOfDayRange (Maybe Text)
todrEarliestTime
  = lens _todrEarliestTime
      (\ s a -> s{_todrEarliestTime = a})

-- | Trip information.
--
-- /See:/ 'tripOption' smart constructor.
data TripOption = TripOption
    { _toPricing   :: !(Maybe [Maybe PricingInfo])
    , _toKind      :: !Text
    , _toId        :: !(Maybe Text)
    , _toSlice     :: !(Maybe [Maybe SliceInfo])
    , _toSaleTotal :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toPricing'
--
-- * 'toKind'
--
-- * 'toId'
--
-- * 'toSlice'
--
-- * 'toSaleTotal'
tripOption
    :: TripOption
tripOption =
    TripOption
    { _toPricing = Nothing
    , _toKind = "qpxexpress#tripOption"
    , _toId = Nothing
    , _toSlice = Nothing
    , _toSaleTotal = Nothing
    }

-- | Per passenger pricing information.
toPricing :: Lens' TripOption [Maybe PricingInfo]
toPricing
  = lens _toPricing (\ s a -> s{_toPricing = a}) .
      _Default
      . _Coerce

-- | Identifies this as a trip information object. Value: the fixed string
-- qpxexpress#tripOption.
toKind :: Lens' TripOption Text
toKind = lens _toKind (\ s a -> s{_toKind = a})

-- | Identifier uniquely identifying this trip in a response.
toId :: Lens' TripOption (Maybe Text)
toId = lens _toId (\ s a -> s{_toId = a})

-- | The slices that make up this trip\'s itinerary.
toSlice :: Lens' TripOption [Maybe SliceInfo]
toSlice
  = lens _toSlice (\ s a -> s{_toSlice = a}) . _Default
      . _Coerce

-- | The total price for all passengers on the trip, in the form of a
-- currency followed by an amount, e.g. USD253.35.
toSaleTotal :: Lens' TripOption (Maybe Text)
toSaleTotal
  = lens _toSaleTotal (\ s a -> s{_toSaleTotal = a})

-- | A QPX Express search request, which will yield one or more solutions.
--
-- /See:/ 'tripOptionsRequest' smart constructor.
data TripOptionsRequest = TripOptionsRequest
    { _torRefundable  :: !(Maybe Bool)
    , _torSaleCountry :: !(Maybe Text)
    , _torPassengers  :: !(Maybe (Maybe PassengerCounts))
    , _torSolutions   :: !(Maybe Int32)
    , _torSlice       :: !(Maybe [Maybe SliceInput])
    , _torMaxPrice    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripOptionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'torRefundable'
--
-- * 'torSaleCountry'
--
-- * 'torPassengers'
--
-- * 'torSolutions'
--
-- * 'torSlice'
--
-- * 'torMaxPrice'
tripOptionsRequest
    :: TripOptionsRequest
tripOptionsRequest =
    TripOptionsRequest
    { _torRefundable = Nothing
    , _torSaleCountry = Nothing
    , _torPassengers = Nothing
    , _torSolutions = Nothing
    , _torSlice = Nothing
    , _torMaxPrice = Nothing
    }

-- | Return only solutions with refundable fares.
torRefundable :: Lens' TripOptionsRequest (Maybe Bool)
torRefundable
  = lens _torRefundable
      (\ s a -> s{_torRefundable = a})

-- | IATA country code representing the point of sale. This determines the
-- \"equivalent amount paid\" currency for the ticket.
torSaleCountry :: Lens' TripOptionsRequest (Maybe Text)
torSaleCountry
  = lens _torSaleCountry
      (\ s a -> s{_torSaleCountry = a})

-- | Counts for each passenger type in the request.
torPassengers :: Lens' TripOptionsRequest (Maybe (Maybe PassengerCounts))
torPassengers
  = lens _torPassengers
      (\ s a -> s{_torPassengers = a})

-- | The number of solutions to return, maximum 500.
torSolutions :: Lens' TripOptionsRequest (Maybe Int32)
torSolutions
  = lens _torSolutions (\ s a -> s{_torSolutions = a})

-- | The slices that make up the itinerary of this trip. A slice represents a
-- traveler\'s intent, the portion of a low-fare search corresponding to a
-- traveler\'s request to get between two points. One-way journeys are
-- generally expressed using one slice, round-trips using two. An example
-- of a one slice trip with three segments might be BOS-SYD, SYD-LAX,
-- LAX-BOS if the traveler only stopped in SYD and LAX just long enough to
-- change planes.
torSlice :: Lens' TripOptionsRequest [Maybe SliceInput]
torSlice
  = lens _torSlice (\ s a -> s{_torSlice = a}) .
      _Default
      . _Coerce

-- | Do not return solutions that cost more than this price. The alphabetical
-- part of the price is in ISO 4217. The format, in regex, is
-- [A-Z]{3}\\d+(\\.\\d+)? Example: $102.07
torMaxPrice :: Lens' TripOptionsRequest (Maybe Text)
torMaxPrice
  = lens _torMaxPrice (\ s a -> s{_torMaxPrice = a})

-- | A QPX Express search response.
--
-- /See:/ 'tripOptionsResponse' smart constructor.
data TripOptionsResponse = TripOptionsResponse
    { _torRequestId  :: !(Maybe Text)
    , _torKind       :: !Text
    , _torData       :: !(Maybe (Maybe Data))
    , _torTripOption :: !(Maybe [Maybe TripOption])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'torRequestId'
--
-- * 'torKind'
--
-- * 'torData'
--
-- * 'torTripOption'
tripOptionsResponse
    :: TripOptionsResponse
tripOptionsResponse =
    TripOptionsResponse
    { _torRequestId = Nothing
    , _torKind = "qpxexpress#tripOptions"
    , _torData = Nothing
    , _torTripOption = Nothing
    }

-- | An identifier uniquely identifying this response.
torRequestId :: Lens' TripOptionsResponse (Maybe Text)
torRequestId
  = lens _torRequestId (\ s a -> s{_torRequestId = a})

-- | Identifies this as a QPX Express trip response object, which consists of
-- zero or more solutions. Value: the fixed string qpxexpress#tripOptions.
torKind :: Lens' TripOptionsResponse Text
torKind = lens _torKind (\ s a -> s{_torKind = a})

-- | Informational data global to list of solutions.
torData :: Lens' TripOptionsResponse (Maybe (Maybe Data))
torData = lens _torData (\ s a -> s{_torData = a})

-- | A list of priced itinerary solutions to the QPX Express query.
torTripOption :: Lens' TripOptionsResponse [Maybe TripOption]
torTripOption
  = lens _torTripOption
      (\ s a -> s{_torTripOption = a})
      . _Default
      . _Coerce

-- | A QPX Express search request.
--
-- /See:/ 'tripsSearchRequest' smart constructor.
newtype TripsSearchRequest = TripsSearchRequest
    { _tsrRequest :: Maybe (Maybe TripOptionsRequest)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripsSearchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsrRequest'
tripsSearchRequest
    :: TripsSearchRequest
tripsSearchRequest =
    TripsSearchRequest
    { _tsrRequest = Nothing
    }

-- | A QPX Express search request. Required values are at least one adult or
-- senior passenger, an origin, a destination, and a date.
tsrRequest :: Lens' TripsSearchRequest (Maybe (Maybe TripOptionsRequest))
tsrRequest
  = lens _tsrRequest (\ s a -> s{_tsrRequest = a})

-- | A QPX Express search response.
--
-- /See:/ 'tripsSearchResponse' smart constructor.
data TripsSearchResponse = TripsSearchResponse
    { _tsrTrips :: !(Maybe (Maybe TripOptionsResponse))
    , _tsrKind  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripsSearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsrTrips'
--
-- * 'tsrKind'
tripsSearchResponse
    :: TripsSearchResponse
tripsSearchResponse =
    TripsSearchResponse
    { _tsrTrips = Nothing
    , _tsrKind = "qpxExpress#tripsSearch"
    }

-- | All possible solutions to the QPX Express search request.
tsrTrips :: Lens' TripsSearchResponse (Maybe (Maybe TripOptionsResponse))
tsrTrips = lens _tsrTrips (\ s a -> s{_tsrTrips = a})

-- | Identifies this as a QPX Express API search response resource. Value:
-- the fixed string qpxExpress#tripsSearch.
tsrKind :: Lens' TripsSearchResponse Text
tsrKind = lens _tsrKind (\ s a -> s{_tsrKind = a})

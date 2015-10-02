{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

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

-- | Information about free baggage allowed on one segment of a trip.
--
-- /See:/ 'freeBaggageAllowance' smart constructor.
data FreeBaggageAllowance = FreeBaggageAllowance
    { _fbaKind          :: !Text
    , _fbaPounds        :: !(Maybe Int32)
    , _fbaBagDescriptor :: !(Maybe [BagDescriptor])
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
fbaBagDescriptor :: Lens' FreeBaggageAllowance [BagDescriptor]
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

instance FromJSON FreeBaggageAllowance where
        parseJSON
          = withObject "FreeBaggageAllowance"
              (\ o ->
                 FreeBaggageAllowance <$>
                   (o .:? "kind" .!= "qpxexpress#freeBaggageAllowance")
                     <*> (o .:? "pounds")
                     <*> (o .:? "bagDescriptor" .!= mempty)
                     <*> (o .:? "kilosPerPiece")
                     <*> (o .:? "kilos")
                     <*> (o .:? "pieces"))

instance ToJSON FreeBaggageAllowance where
        toJSON FreeBaggageAllowance{..}
          = object
              (catMaybes
                 [Just ("kind" .= _fbaKind),
                  ("pounds" .=) <$> _fbaPounds,
                  ("bagDescriptor" .=) <$> _fbaBagDescriptor,
                  ("kilosPerPiece" .=) <$> _fbaKilosPerPiece,
                  ("kilos" .=) <$> _fbaKilos,
                  ("pieces" .=) <$> _fbaPieces])

-- | Information about a carrier (ie. an airline, bus line, railroad, etc)
-- that might be useful to display to an end-user.
--
-- /See:/ 'carrierData' smart constructor.
data CarrierData = CarrierData
    { _cdKind :: !Text
    , _cdName :: !(Maybe Text)
    , _cdCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CarrierData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdKind'
--
-- * 'cdName'
--
-- * 'cdCode'
carrierData
    :: CarrierData
carrierData =
    CarrierData
    { _cdKind = "qpxexpress#carrierData"
    , _cdName = Nothing
    , _cdCode = Nothing
    }

-- | Identifies this as a kind of carrier (ie. an airline, bus line,
-- railroad, etc). Value: the fixed string qpxexpress#carrierData.
cdKind :: Lens' CarrierData Text
cdKind = lens _cdKind (\ s a -> s{_cdKind = a})

-- | The long, full name of a carrier. For example: American Airlines.
cdName :: Lens' CarrierData (Maybe Text)
cdName = lens _cdName (\ s a -> s{_cdName = a})

-- | The IATA designator of a carrier (airline, etc). For example, for
-- American Airlines, the code is AA.
cdCode :: Lens' CarrierData (Maybe Text)
cdCode = lens _cdCode (\ s a -> s{_cdCode = a})

instance FromJSON CarrierData where
        parseJSON
          = withObject "CarrierData"
              (\ o ->
                 CarrierData <$>
                   (o .:? "kind" .!= "qpxexpress#carrierData") <*>
                     (o .:? "name")
                     <*> (o .:? "code"))

instance ToJSON CarrierData where
        toJSON CarrierData{..}
          = object
              (catMaybes
                 [Just ("kind" .= _cdKind), ("name" .=) <$> _cdName,
                  ("code" .=) <$> _cdCode])

-- | A QPX Express search response.
--
-- /See:/ 'tripOptionsResponse' smart constructor.
data TripOptionsResponse = TripOptionsResponse
    { _torRequestId  :: !(Maybe Text)
    , _torKind       :: !Text
    , _torData       :: !(Maybe Data)
    , _torTripOption :: !(Maybe [TripOption])
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
torData :: Lens' TripOptionsResponse (Maybe Data)
torData = lens _torData (\ s a -> s{_torData = a})

-- | A list of priced itinerary solutions to the QPX Express query.
torTripOption :: Lens' TripOptionsResponse [TripOption]
torTripOption
  = lens _torTripOption
      (\ s a -> s{_torTripOption = a})
      . _Default
      . _Coerce

instance FromJSON TripOptionsResponse where
        parseJSON
          = withObject "TripOptionsResponse"
              (\ o ->
                 TripOptionsResponse <$>
                   (o .:? "requestId") <*>
                     (o .:? "kind" .!= "qpxexpress#tripOptions")
                     <*> (o .:? "data")
                     <*> (o .:? "tripOption" .!= mempty))

instance ToJSON TripOptionsResponse where
        toJSON TripOptionsResponse{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _torRequestId,
                  Just ("kind" .= _torKind), ("data" .=) <$> _torData,
                  ("tripOption" .=) <$> _torTripOption])

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

instance FromJSON TimeOfDayRange where
        parseJSON
          = withObject "TimeOfDayRange"
              (\ o ->
                 TimeOfDayRange <$>
                   (o .:? "kind" .!= "qpxexpress#timeOfDayRange") <*>
                     (o .:? "latestTime")
                     <*> (o .:? "earliestTime"))

instance ToJSON TimeOfDayRange where
        toJSON TimeOfDayRange{..}
          = object
              (catMaybes
                 [Just ("kind" .= _todrKind),
                  ("latestTime" .=) <$> _todrLatestTime,
                  ("earliestTime" .=) <$> _todrEarliestTime])

-- | Detailed information about components found in the solutions of this
-- response, including a trip\'s airport, city, taxes, airline, and
-- aircraft.
--
-- /See:/ 'data'' smart constructor.
data Data = Data
    { _dCarrier  :: !(Maybe [CarrierData])
    , _dKind     :: !Text
    , _dAircraft :: !(Maybe [AircraftData])
    , _dAirport  :: !(Maybe [AirportData])
    , _dCity     :: !(Maybe [CityData])
    , _dTax      :: !(Maybe [TaxData])
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
dCarrier :: Lens' Data [CarrierData]
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
dAircraft :: Lens' Data [AircraftData]
dAircraft
  = lens _dAircraft (\ s a -> s{_dAircraft = a}) .
      _Default
      . _Coerce

-- | The airport of an origin or destination.
dAirport :: Lens' Data [AirportData]
dAirport
  = lens _dAirport (\ s a -> s{_dAirport = a}) .
      _Default
      . _Coerce

-- | The city that is either the origin or destination of part of a trip.
dCity :: Lens' Data [CityData]
dCity
  = lens _dCity (\ s a -> s{_dCity = a}) . _Default .
      _Coerce

-- | The taxes due for flying between an origin and a destination.
dTax :: Lens' Data [TaxData]
dTax
  = lens _dTax (\ s a -> s{_dTax = a}) . _Default .
      _Coerce

instance FromJSON Data where
        parseJSON
          = withObject "Data"
              (\ o ->
                 Data <$>
                   (o .:? "carrier" .!= mempty) <*>
                     (o .:? "kind" .!= "qpxexpress#data")
                     <*> (o .:? "aircraft" .!= mempty)
                     <*> (o .:? "airport" .!= mempty)
                     <*> (o .:? "city" .!= mempty)
                     <*> (o .:? "tax" .!= mempty))

instance ToJSON Data where
        toJSON Data{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _dCarrier,
                  Just ("kind" .= _dKind),
                  ("aircraft" .=) <$> _dAircraft,
                  ("airport" .=) <$> _dAirport, ("city" .=) <$> _dCity,
                  ("tax" .=) <$> _dTax])

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

instance FromJSON AircraftData where
        parseJSON
          = withObject "AircraftData"
              (\ o ->
                 AircraftData <$>
                   (o .:? "kind" .!= "qpxexpress#aircraftData") <*>
                     (o .:? "name")
                     <*> (o .:? "code"))

instance ToJSON AircraftData where
        toJSON AircraftData{..}
          = object
              (catMaybes
                 [Just ("kind" .= _adKind), ("name" .=) <$> _adName,
                  ("code" .=) <$> _adCode])

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
    , _liDePartureTime       :: !(Maybe Text)
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
-- * 'liDePartureTime'
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
    , _liDePartureTime = Nothing
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
liDePartureTime :: Lens' LegInfo (Maybe Text)
liDePartureTime
  = lens _liDePartureTime
      (\ s a -> s{_liDePartureTime = a})

instance FromJSON LegInfo where
        parseJSON
          = withObject "LegInfo"
              (\ o ->
                 LegInfo <$>
                   (o .:? "destination") <*> (o .:? "origin") <*>
                     (o .:? "secure")
                     <*> (o .:? "kind" .!= "qpxexpress#legInfo")
                     <*> (o .:? "aircraft")
                     <*> (o .:? "arrivalTime")
                     <*> (o .:? "onTimePerformance")
                     <*> (o .:? "operatingDisclosure")
                     <*> (o .:? "meal")
                     <*> (o .:? "id")
                     <*> (o .:? "originTerminal")
                     <*> (o .:? "changePlane")
                     <*> (o .:? "destinationTerminal")
                     <*> (o .:? "connectionDuration")
                     <*> (o .:? "duration")
                     <*> (o .:? "mileage")
                     <*> (o .:? "departureTime"))

instance ToJSON LegInfo where
        toJSON LegInfo{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _liDestination,
                  ("origin" .=) <$> _liOrigin,
                  ("secure" .=) <$> _liSecure,
                  Just ("kind" .= _liKind),
                  ("aircraft" .=) <$> _liAircraft,
                  ("arrivalTime" .=) <$> _liArrivalTime,
                  ("onTimePerformance" .=) <$> _liOnTimePerformance,
                  ("operatingDisclosure" .=) <$>
                    _liOperatingDisclosure,
                  ("meal" .=) <$> _liMeal, ("id" .=) <$> _liId,
                  ("originTerminal" .=) <$> _liOriginTerminal,
                  ("changePlane" .=) <$> _liChangePlane,
                  ("destinationTerminal" .=) <$>
                    _liDestinationTerminal,
                  ("connectionDuration" .=) <$> _liConnectionDuration,
                  ("duration" .=) <$> _liDuration,
                  ("mileage" .=) <$> _liMileage,
                  ("departureTime" .=) <$> _liDePartureTime])

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

instance FromJSON AirportData where
        parseJSON
          = withObject "AirportData"
              (\ o ->
                 AirportData <$>
                   (o .:? "kind" .!= "qpxexpress#airportData") <*>
                     (o .:? "name")
                     <*> (o .:? "city")
                     <*> (o .:? "code"))

instance ToJSON AirportData where
        toJSON AirportData{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aKind), ("name" .=) <$> _aName,
                  ("city" .=) <$> _aCity, ("code" .=) <$> _aCode])

-- | The price of this segment.
--
-- /See:/ 'segmentPricing' smart constructor.
data SegmentPricing = SegmentPricing
    { _spFreeBaggageOption :: !(Maybe [FreeBaggageAllowance])
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
spFreeBaggageOption :: Lens' SegmentPricing [FreeBaggageAllowance]
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

instance FromJSON SegmentPricing where
        parseJSON
          = withObject "SegmentPricing"
              (\ o ->
                 SegmentPricing <$>
                   (o .:? "freeBaggageOption" .!= mempty) <*>
                     (o .:? "kind" .!= "qpxexpress#segmentPricing")
                     <*> (o .:? "fareId")
                     <*> (o .:? "segmentId"))

instance ToJSON SegmentPricing where
        toJSON SegmentPricing{..}
          = object
              (catMaybes
                 [("freeBaggageOption" .=) <$> _spFreeBaggageOption,
                  Just ("kind" .= _spKind),
                  ("fareId" .=) <$> _spFareId,
                  ("segmentId" .=) <$> _spSegmentId])

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
    { _siKind     :: !Text
    , _siSegment  :: !(Maybe [SegmentInfo])
    , _siDuration :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SliceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siKind'
--
-- * 'siSegment'
--
-- * 'siDuration'
sliceInfo
    :: SliceInfo
sliceInfo =
    SliceInfo
    { _siKind = "qpxexpress#sliceInfo"
    , _siSegment = Nothing
    , _siDuration = Nothing
    }

-- | Identifies this as a slice object. A slice represents a traveller\'s
-- intent, the portion of a low-fare search corresponding to a traveler\'s
-- request to get between two points. One-way journeys are generally
-- expressed using 1 slice, round-trips using 2. Value: the fixed string
-- qpxexpress#sliceInfo.
siKind :: Lens' SliceInfo Text
siKind = lens _siKind (\ s a -> s{_siKind = a})

-- | The segment(s) constituting the slice.
siSegment :: Lens' SliceInfo [SegmentInfo]
siSegment
  = lens _siSegment (\ s a -> s{_siSegment = a}) .
      _Default
      . _Coerce

-- | The duration of the slice in minutes.
siDuration :: Lens' SliceInfo (Maybe Int32)
siDuration
  = lens _siDuration (\ s a -> s{_siDuration = a})

instance FromJSON SliceInfo where
        parseJSON
          = withObject "SliceInfo"
              (\ o ->
                 SliceInfo <$>
                   (o .:? "kind" .!= "qpxexpress#sliceInfo") <*>
                     (o .:? "segment" .!= mempty)
                     <*> (o .:? "duration"))

instance ToJSON SliceInfo where
        toJSON SliceInfo{..}
          = object
              (catMaybes
                 [Just ("kind" .= _siKind),
                  ("segment" .=) <$> _siSegment,
                  ("duration" .=) <$> _siDuration])

-- | A QPX Express search response.
--
-- /See:/ 'tripsSearchResponse' smart constructor.
data TripsSearchResponse = TripsSearchResponse
    { _tsrTrips :: !(Maybe TripOptionsResponse)
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
tsrTrips :: Lens' TripsSearchResponse (Maybe TripOptionsResponse)
tsrTrips = lens _tsrTrips (\ s a -> s{_tsrTrips = a})

-- | Identifies this as a QPX Express API search response resource. Value:
-- the fixed string qpxExpress#tripsSearch.
tsrKind :: Lens' TripsSearchResponse Text
tsrKind = lens _tsrKind (\ s a -> s{_tsrKind = a})

instance FromJSON TripsSearchResponse where
        parseJSON
          = withObject "TripsSearchResponse"
              (\ o ->
                 TripsSearchResponse <$>
                   (o .:? "trips") <*>
                     (o .:? "kind" .!= "qpxExpress#tripsSearch"))

instance ToJSON TripsSearchResponse where
        toJSON TripsSearchResponse{..}
          = object
              (catMaybes
                 [("trips" .=) <$> _tsrTrips,
                  Just ("kind" .= _tsrKind)])

-- | Trip information.
--
-- /See:/ 'tripOption' smart constructor.
data TripOption = TripOption
    { _toPricing   :: !(Maybe [PricingInfo])
    , _toKind      :: !Text
    , _toId        :: !(Maybe Text)
    , _toSlice     :: !(Maybe [SliceInfo])
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
toPricing :: Lens' TripOption [PricingInfo]
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
toSlice :: Lens' TripOption [SliceInfo]
toSlice
  = lens _toSlice (\ s a -> s{_toSlice = a}) . _Default
      . _Coerce

-- | The total price for all passengers on the trip, in the form of a
-- currency followed by an amount, e.g. USD253.35.
toSaleTotal :: Lens' TripOption (Maybe Text)
toSaleTotal
  = lens _toSaleTotal (\ s a -> s{_toSaleTotal = a})

instance FromJSON TripOption where
        parseJSON
          = withObject "TripOption"
              (\ o ->
                 TripOption <$>
                   (o .:? "pricing" .!= mempty) <*>
                     (o .:? "kind" .!= "qpxexpress#tripOption")
                     <*> (o .:? "id")
                     <*> (o .:? "slice" .!= mempty)
                     <*> (o .:? "saleTotal"))

instance ToJSON TripOption where
        toJSON TripOption{..}
          = object
              (catMaybes
                 [("pricing" .=) <$> _toPricing,
                  Just ("kind" .= _toKind), ("id" .=) <$> _toId,
                  ("slice" .=) <$> _toSlice,
                  ("saleTotal" .=) <$> _toSaleTotal])

-- | Information about a city that might be useful to an end-user; typically
-- the city of an airport.
--
-- /See:/ 'cityData' smart constructor.
data CityData = CityData
    { _cCountry :: !(Maybe Text)
    , _cKind    :: !Text
    , _cName    :: !(Maybe Text)
    , _cCode    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CityData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCountry'
--
-- * 'cKind'
--
-- * 'cName'
--
-- * 'cCode'
cityData
    :: CityData
cityData =
    CityData
    { _cCountry = Nothing
    , _cKind = "qpxexpress#cityData"
    , _cName = Nothing
    , _cCode = Nothing
    }

-- | The two-character country code of the country the city is located in.
-- For example, US for the United States of America.
cCountry :: Lens' CityData (Maybe Text)
cCountry = lens _cCountry (\ s a -> s{_cCountry = a})

-- | Identifies this as a city, typically with one or more airports. Value:
-- the fixed string qpxexpress#cityData.
cKind :: Lens' CityData Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | The full name of a city. An example would be: New York.
cName :: Lens' CityData (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The IATA character ID of a city. For example, for Boston this is BOS.
cCode :: Lens' CityData (Maybe Text)
cCode = lens _cCode (\ s a -> s{_cCode = a})

instance FromJSON CityData where
        parseJSON
          = withObject "CityData"
              (\ o ->
                 CityData <$>
                   (o .:? "country") <*>
                     (o .:? "kind" .!= "qpxexpress#cityData")
                     <*> (o .:? "name")
                     <*> (o .:? "code"))

instance ToJSON CityData where
        toJSON CityData{..}
          = object
              (catMaybes
                 [("country" .=) <$> _cCountry,
                  Just ("kind" .= _cKind), ("name" .=) <$> _cName,
                  ("code" .=) <$> _cCode])

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

instance FromJSON BagDescriptor where
        parseJSON
          = withObject "BagDescriptor"
              (\ o ->
                 BagDescriptor <$>
                   (o .:? "kind" .!= "qpxexpress#bagDescriptor") <*>
                     (o .:? "commercialName")
                     <*> (o .:? "count")
                     <*> (o .:? "description" .!= mempty)
                     <*> (o .:? "subcode"))

instance ToJSON BagDescriptor where
        toJSON BagDescriptor{..}
          = object
              (catMaybes
                 [Just ("kind" .= _bdKind),
                  ("commercialName" .=) <$> _bdCommercialName,
                  ("count" .=) <$> _bdCount,
                  ("description" .=) <$> _bdDescription,
                  ("subcode" .=) <$> _bdSubcode])

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

instance FromJSON PassengerCounts where
        parseJSON
          = withObject "PassengerCounts"
              (\ o ->
                 PassengerCounts <$>
                   (o .:? "seniorCount") <*>
                     (o .:? "kind" .!= "qpxexpress#passengerCounts")
                     <*> (o .:? "infantInLapCount")
                     <*> (o .:? "childCount")
                     <*> (o .:? "infantInSeatCount")
                     <*> (o .:? "adultCount"))

instance ToJSON PassengerCounts where
        toJSON PassengerCounts{..}
          = object
              (catMaybes
                 [("seniorCount" .=) <$> _pcSeniorCount,
                  Just ("kind" .= _pcKind),
                  ("infantInLapCount" .=) <$> _pcInfantInLapCount,
                  ("childCount" .=) <$> _pcChildCount,
                  ("infantInSeatCount" .=) <$> _pcInfantInSeatCount,
                  ("adultCount" .=) <$> _pcAdultCount])

-- | Details of a segment of a flight; a segment is one or more consecutive
-- legs on the same flight. For example a hypothetical flight ZZ001, from
-- DFW to OGG, would have one segment with two legs: DFW to HNL (leg 1),
-- HNL to OGG (leg 2), and DFW to OGG (legs 1 and 2).
--
-- /See:/ 'segmentInfo' smart constructor.
data SegmentInfo = SegmentInfo
    { _sBookingCode                 :: !(Maybe Text)
    , _sCabin                       :: !(Maybe Text)
    , _sBookingCodeCount            :: !(Maybe Int32)
    , _sSubjectToGovernmentApproval :: !(Maybe Bool)
    , _sKind                        :: !Text
    , _sFlight                      :: !(Maybe FlightInfo)
    , _sId                          :: !(Maybe Text)
    , _sMarriedSegmentGroup         :: !(Maybe Text)
    , _sConnectionDuration          :: !(Maybe Int32)
    , _sDuration                    :: !(Maybe Int32)
    , _sLeg                         :: !(Maybe [LegInfo])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SegmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sBookingCode'
--
-- * 'sCabin'
--
-- * 'sBookingCodeCount'
--
-- * 'sSubjectToGovernmentApproval'
--
-- * 'sKind'
--
-- * 'sFlight'
--
-- * 'sId'
--
-- * 'sMarriedSegmentGroup'
--
-- * 'sConnectionDuration'
--
-- * 'sDuration'
--
-- * 'sLeg'
segmentInfo
    :: SegmentInfo
segmentInfo =
    SegmentInfo
    { _sBookingCode = Nothing
    , _sCabin = Nothing
    , _sBookingCodeCount = Nothing
    , _sSubjectToGovernmentApproval = Nothing
    , _sKind = "qpxexpress#segmentInfo"
    , _sFlight = Nothing
    , _sId = Nothing
    , _sMarriedSegmentGroup = Nothing
    , _sConnectionDuration = Nothing
    , _sDuration = Nothing
    , _sLeg = Nothing
    }

-- | The booking code or class for this segment.
sBookingCode :: Lens' SegmentInfo (Maybe Text)
sBookingCode
  = lens _sBookingCode (\ s a -> s{_sBookingCode = a})

-- | The cabin booked for this segment.
sCabin :: Lens' SegmentInfo (Maybe Text)
sCabin = lens _sCabin (\ s a -> s{_sCabin = a})

-- | The number of seats available in this booking code on this segment.
sBookingCodeCount :: Lens' SegmentInfo (Maybe Int32)
sBookingCodeCount
  = lens _sBookingCodeCount
      (\ s a -> s{_sBookingCodeCount = a})

-- | Whether the operation of this segment remains subject to government
-- approval.
sSubjectToGovernmentApproval :: Lens' SegmentInfo (Maybe Bool)
sSubjectToGovernmentApproval
  = lens _sSubjectToGovernmentApproval
      (\ s a -> s{_sSubjectToGovernmentApproval = a})

-- | Identifies this as a segment object. A segment is one or more
-- consecutive legs on the same flight. For example a hypothetical flight
-- ZZ001, from DFW to OGG, could have one segment with two legs: DFW to HNL
-- (leg 1), HNL to OGG (leg 2). Value: the fixed string
-- qpxexpress#segmentInfo.
sKind :: Lens' SegmentInfo Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The flight this is a segment of.
sFlight :: Lens' SegmentInfo (Maybe FlightInfo)
sFlight = lens _sFlight (\ s a -> s{_sFlight = a})

-- | An id uniquely identifying the segment in the solution.
sId :: Lens' SegmentInfo (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

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
sMarriedSegmentGroup :: Lens' SegmentInfo (Maybe Text)
sMarriedSegmentGroup
  = lens _sMarriedSegmentGroup
      (\ s a -> s{_sMarriedSegmentGroup = a})

-- | In minutes, the duration of the connection following this segment.
sConnectionDuration :: Lens' SegmentInfo (Maybe Int32)
sConnectionDuration
  = lens _sConnectionDuration
      (\ s a -> s{_sConnectionDuration = a})

-- | The duration of the flight segment in minutes.
sDuration :: Lens' SegmentInfo (Maybe Int32)
sDuration
  = lens _sDuration (\ s a -> s{_sDuration = a})

-- | The legs composing this segment.
sLeg :: Lens' SegmentInfo [LegInfo]
sLeg
  = lens _sLeg (\ s a -> s{_sLeg = a}) . _Default .
      _Coerce

instance FromJSON SegmentInfo where
        parseJSON
          = withObject "SegmentInfo"
              (\ o ->
                 SegmentInfo <$>
                   (o .:? "bookingCode") <*> (o .:? "cabin") <*>
                     (o .:? "bookingCodeCount")
                     <*> (o .:? "subjectToGovernmentApproval")
                     <*> (o .:? "kind" .!= "qpxexpress#segmentInfo")
                     <*> (o .:? "flight")
                     <*> (o .:? "id")
                     <*> (o .:? "marriedSegmentGroup")
                     <*> (o .:? "connectionDuration")
                     <*> (o .:? "duration")
                     <*> (o .:? "leg" .!= mempty))

instance ToJSON SegmentInfo where
        toJSON SegmentInfo{..}
          = object
              (catMaybes
                 [("bookingCode" .=) <$> _sBookingCode,
                  ("cabin" .=) <$> _sCabin,
                  ("bookingCodeCount" .=) <$> _sBookingCodeCount,
                  ("subjectToGovernmentApproval" .=) <$>
                    _sSubjectToGovernmentApproval,
                  Just ("kind" .= _sKind), ("flight" .=) <$> _sFlight,
                  ("id" .=) <$> _sId,
                  ("marriedSegmentGroup" .=) <$> _sMarriedSegmentGroup,
                  ("connectionDuration" .=) <$> _sConnectionDuration,
                  ("duration" .=) <$> _sDuration,
                  ("leg" .=) <$> _sLeg])

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

instance FromJSON TaxData where
        parseJSON
          = withObject "TaxData"
              (\ o ->
                 TaxData <$>
                   (o .:? "kind" .!= "qpxexpress#taxData") <*>
                     (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON TaxData where
        toJSON TaxData{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tdKind), ("name" .=) <$> _tdName,
                  ("id" .=) <$> _tdId])

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

instance FromJSON TaxInfo where
        parseJSON
          = withObject "TaxInfo"
              (\ o ->
                 TaxInfo <$>
                   (o .:? "chargeType") <*> (o .:? "country") <*>
                     (o .:? "kind" .!= "qpxexpress#taxInfo")
                     <*> (o .:? "salePrice")
                     <*> (o .:? "code")
                     <*> (o .:? "id"))

instance ToJSON TaxInfo where
        toJSON TaxInfo{..}
          = object
              (catMaybes
                 [("chargeType" .=) <$> _tiChargeType,
                  ("country" .=) <$> _tiCountry,
                  Just ("kind" .= _tiKind),
                  ("salePrice" .=) <$> _tiSalePrice,
                  ("code" .=) <$> _tiCode, ("id" .=) <$> _tiId])

-- | A QPX Express search request.
--
-- /See:/ 'tripsSearchRequest' smart constructor.
newtype TripsSearchRequest = TripsSearchRequest
    { _tsrRequest :: Maybe TripOptionsRequest
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
tsrRequest :: Lens' TripsSearchRequest (Maybe TripOptionsRequest)
tsrRequest
  = lens _tsrRequest (\ s a -> s{_tsrRequest = a})

instance FromJSON TripsSearchRequest where
        parseJSON
          = withObject "TripsSearchRequest"
              (\ o -> TripsSearchRequest <$> (o .:? "request"))

instance ToJSON TripsSearchRequest where
        toJSON TripsSearchRequest{..}
          = object (catMaybes [("request" .=) <$> _tsrRequest])

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
    , _piFare                :: !(Maybe [FareInfo])
    , _piKind                :: !Text
    , _piSegmentPricing      :: !(Maybe [SegmentPricing])
    , _piPassengers          :: !(Maybe PassengerCounts)
    , _piFareCalculation     :: !(Maybe Text)
    , _piLatestTicketingTime :: !(Maybe Text)
    , _piTax                 :: !(Maybe [TaxInfo])
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
piFare :: Lens' PricingInfo [FareInfo]
piFare
  = lens _piFare (\ s a -> s{_piFare = a}) . _Default .
      _Coerce

-- | Identifies this as a pricing object, representing the price of one or
-- more travel segments. Value: the fixed string qpxexpress#pricingInfo.
piKind :: Lens' PricingInfo Text
piKind = lens _piKind (\ s a -> s{_piKind = a})

-- | The per-segment price and baggage information.
piSegmentPricing :: Lens' PricingInfo [SegmentPricing]
piSegmentPricing
  = lens _piSegmentPricing
      (\ s a -> s{_piSegmentPricing = a})
      . _Default
      . _Coerce

-- | The number of passengers to which this price applies.
piPassengers :: Lens' PricingInfo (Maybe PassengerCounts)
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
piTax :: Lens' PricingInfo [TaxInfo]
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

instance FromJSON PricingInfo where
        parseJSON
          = withObject "PricingInfo"
              (\ o ->
                 PricingInfo <$>
                   (o .:? "saleTaxTotal") <*> (o .:? "refundable") <*>
                     (o .:? "ptc")
                     <*> (o .:? "baseFareTotal")
                     <*> (o .:? "fare" .!= mempty)
                     <*> (o .:? "kind" .!= "qpxexpress#pricingInfo")
                     <*> (o .:? "segmentPricing" .!= mempty)
                     <*> (o .:? "passengers")
                     <*> (o .:? "fareCalculation")
                     <*> (o .:? "latestTicketingTime")
                     <*> (o .:? "tax" .!= mempty)
                     <*> (o .:? "saleTotal")
                     <*> (o .:? "saleFareTotal"))

instance ToJSON PricingInfo where
        toJSON PricingInfo{..}
          = object
              (catMaybes
                 [("saleTaxTotal" .=) <$> _piSaleTaxTotal,
                  ("refundable" .=) <$> _piRefundable,
                  ("ptc" .=) <$> _piPtc,
                  ("baseFareTotal" .=) <$> _piBaseFareTotal,
                  ("fare" .=) <$> _piFare, Just ("kind" .= _piKind),
                  ("segmentPricing" .=) <$> _piSegmentPricing,
                  ("passengers" .=) <$> _piPassengers,
                  ("fareCalculation" .=) <$> _piFareCalculation,
                  ("latestTicketingTime" .=) <$>
                    _piLatestTicketingTime,
                  ("tax" .=) <$> _piTax,
                  ("saleTotal" .=) <$> _piSaleTotal,
                  ("saleFareTotal" .=) <$> _piSaleFareTotal])

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
    { _fiCarrier :: !(Maybe Text)
    , _fiNumber  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlightInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fiCarrier'
--
-- * 'fiNumber'
flightInfo
    :: FlightInfo
flightInfo =
    FlightInfo
    { _fiCarrier = Nothing
    , _fiNumber = Nothing
    }

fiCarrier :: Lens' FlightInfo (Maybe Text)
fiCarrier
  = lens _fiCarrier (\ s a -> s{_fiCarrier = a})

-- | The flight number.
fiNumber :: Lens' FlightInfo (Maybe Text)
fiNumber = lens _fiNumber (\ s a -> s{_fiNumber = a})

instance FromJSON FlightInfo where
        parseJSON
          = withObject "FlightInfo"
              (\ o ->
                 FlightInfo <$>
                   (o .:? "carrier") <*> (o .:? "number"))

instance ToJSON FlightInfo where
        toJSON FlightInfo{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _fiCarrier,
                  ("number" .=) <$> _fiNumber])

-- | Complete information about a fare used in the solution to a low-fare
-- search query. In the airline industry a fare is a price an airline
-- charges for one-way travel between two points. A fare typically contains
-- a carrier code, two city codes, a price, and a fare basis. (A fare basis
-- is a one-to-eight character alphanumeric code used to identify a fare.)
--
-- /See:/ 'fareInfo' smart constructor.
data FareInfo = FareInfo
    { _fCarrier     :: !(Maybe Text)
    , _fDestination :: !(Maybe Text)
    , _fOrigin      :: !(Maybe Text)
    , _fPrivate     :: !(Maybe Bool)
    , _fKind        :: !Text
    , _fBasisCode   :: !(Maybe Text)
    , _fId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FareInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fCarrier'
--
-- * 'fDestination'
--
-- * 'fOrigin'
--
-- * 'fPrivate'
--
-- * 'fKind'
--
-- * 'fBasisCode'
--
-- * 'fId'
fareInfo
    :: FareInfo
fareInfo =
    FareInfo
    { _fCarrier = Nothing
    , _fDestination = Nothing
    , _fOrigin = Nothing
    , _fPrivate = Nothing
    , _fKind = "qpxexpress#fareInfo"
    , _fBasisCode = Nothing
    , _fId = Nothing
    }

-- | The carrier of the aircraft or other vehicle commuting between two
-- points.
fCarrier :: Lens' FareInfo (Maybe Text)
fCarrier = lens _fCarrier (\ s a -> s{_fCarrier = a})

-- | The city code of the city the trip ends at.
fDestination :: Lens' FareInfo (Maybe Text)
fDestination
  = lens _fDestination (\ s a -> s{_fDestination = a})

-- | The city code of the city the trip begins at.
fOrigin :: Lens' FareInfo (Maybe Text)
fOrigin = lens _fOrigin (\ s a -> s{_fOrigin = a})

-- | Whether this is a private fare, for example one offered only to select
-- customers rather than the general public.
fPrivate :: Lens' FareInfo (Maybe Bool)
fPrivate = lens _fPrivate (\ s a -> s{_fPrivate = a})

-- | Identifies this as a fare object. Value: the fixed string
-- qpxexpress#fareInfo.
fKind :: Lens' FareInfo Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

fBasisCode :: Lens' FareInfo (Maybe Text)
fBasisCode
  = lens _fBasisCode (\ s a -> s{_fBasisCode = a})

-- | A unique identifier of the fare.
fId :: Lens' FareInfo (Maybe Text)
fId = lens _fId (\ s a -> s{_fId = a})

instance FromJSON FareInfo where
        parseJSON
          = withObject "FareInfo"
              (\ o ->
                 FareInfo <$>
                   (o .:? "carrier") <*> (o .:? "destination") <*>
                     (o .:? "origin")
                     <*> (o .:? "private")
                     <*> (o .:? "kind" .!= "qpxexpress#fareInfo")
                     <*> (o .:? "basisCode")
                     <*> (o .:? "id"))

instance ToJSON FareInfo where
        toJSON FareInfo{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _fCarrier,
                  ("destination" .=) <$> _fDestination,
                  ("origin" .=) <$> _fOrigin,
                  ("private" .=) <$> _fPrivate,
                  Just ("kind" .= _fKind),
                  ("basisCode" .=) <$> _fBasisCode,
                  ("id" .=) <$> _fId])

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
    , _sliPermittedDePartureTime :: !(Maybe TimeOfDayRange)
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
-- * 'sliPermittedDePartureTime'
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
    , _sliPermittedDePartureTime = Nothing
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
sliPermittedDePartureTime :: Lens' SliceInput (Maybe TimeOfDayRange)
sliPermittedDePartureTime
  = lens _sliPermittedDePartureTime
      (\ s a -> s{_sliPermittedDePartureTime = a})

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

instance FromJSON SliceInput where
        parseJSON
          = withObject "SliceInput"
              (\ o ->
                 SliceInput <$>
                   (o .:? "destination") <*> (o .:? "origin") <*>
                     (o .:? "maxStops")
                     <*> (o .:? "kind" .!= "qpxexpress#sliceInput")
                     <*> (o .:? "prohibitedCarrier" .!= mempty)
                     <*> (o .:? "date")
                     <*> (o .:? "maxConnectionDuration")
                     <*> (o .:? "preferredCabin")
                     <*> (o .:? "permittedDepartureTime")
                     <*> (o .:? "permittedCarrier" .!= mempty)
                     <*> (o .:? "alliance"))

instance ToJSON SliceInput where
        toJSON SliceInput{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _sliDestination,
                  ("origin" .=) <$> _sliOrigin,
                  ("maxStops" .=) <$> _sliMaxStops,
                  Just ("kind" .= _sliKind),
                  ("prohibitedCarrier" .=) <$> _sliProhibitedCarrier,
                  ("date" .=) <$> _sliDate,
                  ("maxConnectionDuration" .=) <$>
                    _sliMaxConnectionDuration,
                  ("preferredCabin" .=) <$> _sliPreferredCabin,
                  ("permittedDepartureTime" .=) <$>
                    _sliPermittedDePartureTime,
                  ("permittedCarrier" .=) <$> _sliPermittedCarrier,
                  ("alliance" .=) <$> _sliAlliance])

-- | A QPX Express search request, which will yield one or more solutions.
--
-- /See:/ 'tripOptionsRequest' smart constructor.
data TripOptionsRequest = TripOptionsRequest
    { _torRefundable  :: !(Maybe Bool)
    , _torSaleCountry :: !(Maybe Text)
    , _torPassengers  :: !(Maybe PassengerCounts)
    , _torSolutions   :: !(Maybe Int32)
    , _torSlice       :: !(Maybe [SliceInput])
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
torPassengers :: Lens' TripOptionsRequest (Maybe PassengerCounts)
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
torSlice :: Lens' TripOptionsRequest [SliceInput]
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

instance FromJSON TripOptionsRequest where
        parseJSON
          = withObject "TripOptionsRequest"
              (\ o ->
                 TripOptionsRequest <$>
                   (o .:? "refundable") <*> (o .:? "saleCountry") <*>
                     (o .:? "passengers")
                     <*> (o .:? "solutions")
                     <*> (o .:? "slice" .!= mempty)
                     <*> (o .:? "maxPrice"))

instance ToJSON TripOptionsRequest where
        toJSON TripOptionsRequest{..}
          = object
              (catMaybes
                 [("refundable" .=) <$> _torRefundable,
                  ("saleCountry" .=) <$> _torSaleCountry,
                  ("passengers" .=) <$> _torPassengers,
                  ("solutions" .=) <$> _torSolutions,
                  ("slice" .=) <$> _torSlice,
                  ("maxPrice" .=) <$> _torMaxPrice])

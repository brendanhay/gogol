{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.QPXExpress.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.QPXExpress.Internal.Product
  ( -- * AircraftData
    AircraftData (..),
    newAircraftData,

    -- * AirportData
    AirportData (..),
    newAirportData,

    -- * BagDescriptor
    BagDescriptor (..),
    newBagDescriptor,

    -- * CarrierData
    CarrierData (..),
    newCarrierData,

    -- * CityData
    CityData (..),
    newCityData,

    -- * Data'
    Data' (..),
    newData,

    -- * FareInfo
    FareInfo (..),
    newFareInfo,

    -- * FlightInfo
    FlightInfo (..),
    newFlightInfo,

    -- * FreeBaggageAllowance
    FreeBaggageAllowance (..),
    newFreeBaggageAllowance,

    -- * LegInfo
    LegInfo (..),
    newLegInfo,

    -- * PassengerCounts
    PassengerCounts (..),
    newPassengerCounts,

    -- * PricingInfo
    PricingInfo (..),
    newPricingInfo,

    -- * SegmentInfo
    SegmentInfo (..),
    newSegmentInfo,

    -- * SegmentPricing
    SegmentPricing (..),
    newSegmentPricing,

    -- * SliceInfo
    SliceInfo (..),
    newSliceInfo,

    -- * SliceInput
    SliceInput (..),
    newSliceInput,

    -- * TaxData
    TaxData (..),
    newTaxData,

    -- * TaxInfo
    TaxInfo (..),
    newTaxInfo,

    -- * TimeOfDayRange
    TimeOfDayRange (..),
    newTimeOfDayRange,

    -- * TripOption
    TripOption (..),
    newTripOption,

    -- * TripOptionsRequest
    TripOptionsRequest (..),
    newTripOptionsRequest,

    -- * TripOptionsResponse
    TripOptionsResponse (..),
    newTripOptionsResponse,

    -- * TripsSearchRequest
    TripsSearchRequest (..),
    newTripsSearchRequest,

    -- * TripsSearchResponse
    TripsSearchResponse (..),
    newTripsSearchResponse,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.QPXExpress.Internal.Sum

-- | The make, model, and type of an aircraft.
--
-- /See:/ 'newAircraftData' smart constructor.
data AircraftData = AircraftData
  { -- | The aircraft code. For example, for a Boeing 777 the code would be 777.
    code :: (Core.Maybe Core.Text),
    -- | Identifies this as an aircraftData object. Value: the fixed string qpxexpress#aircraftData
    kind :: Core.Text,
    -- | The name of an aircraft, for example Boeing 777.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AircraftData' with the minimum fields required to make a request.
newAircraftData ::
  AircraftData
newAircraftData =
  AircraftData
    { code = Core.Nothing,
      kind = "qpxexpress#aircraftData",
      name = Core.Nothing
    }

instance Core.FromJSON AircraftData where
  parseJSON =
    Core.withObject
      "AircraftData"
      ( \o ->
          AircraftData
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#aircraftData")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AircraftData where
  toJSON AircraftData {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | An airport.
--
-- /See:/ 'newAirportData' smart constructor.
data AirportData = AirportData
  { -- | The city code an airport is located in. For example, for JFK airport, this is NYC.
    city :: (Core.Maybe Core.Text),
    -- | An airport\'s code. For example, for Boston Logan airport, this is BOS.
    code :: (Core.Maybe Core.Text),
    -- | Identifies this as an airport object. Value: the fixed string qpxexpress#airportData.
    kind :: Core.Text,
    -- | The name of an airport. For example, for airport BOS the name is \"Boston Logan International\".
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AirportData' with the minimum fields required to make a request.
newAirportData ::
  AirportData
newAirportData =
  AirportData
    { city = Core.Nothing,
      code = Core.Nothing,
      kind = "qpxexpress#airportData",
      name = Core.Nothing
    }

instance Core.FromJSON AirportData where
  parseJSON =
    Core.withObject
      "AirportData"
      ( \o ->
          AirportData
            Core.<$> (o Core..:? "city")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#airportData")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON AirportData where
  toJSON AirportData {..} =
    Core.object
      ( Core.catMaybes
          [ ("city" Core..=) Core.<$> city,
            ("code" Core..=) Core.<$> code,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Information about an item of baggage.
--
-- /See:/ 'newBagDescriptor' smart constructor.
data BagDescriptor = BagDescriptor
  { -- | Provides the commercial name for an optional service.
    commercialName :: (Core.Maybe Core.Text),
    -- | How many of this type of bag will be checked on this flight.
    count :: (Core.Maybe Core.Int32),
    -- | A description of the baggage.
    description :: (Core.Maybe [Core.Text]),
    -- | Identifies this as a baggage object. Value: the fixed string qpxexpress#bagDescriptor.
    kind :: Core.Text,
    -- | The standard IATA subcode used to identify this optional service.
    subcode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BagDescriptor' with the minimum fields required to make a request.
newBagDescriptor ::
  BagDescriptor
newBagDescriptor =
  BagDescriptor
    { commercialName = Core.Nothing,
      count = Core.Nothing,
      description = Core.Nothing,
      kind = "qpxexpress#bagDescriptor",
      subcode = Core.Nothing
    }

instance Core.FromJSON BagDescriptor where
  parseJSON =
    Core.withObject
      "BagDescriptor"
      ( \o ->
          BagDescriptor
            Core.<$> (o Core..:? "commercialName")
            Core.<*> (o Core..:? "count")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#bagDescriptor")
            Core.<*> (o Core..:? "subcode")
      )

instance Core.ToJSON BagDescriptor where
  toJSON BagDescriptor {..} =
    Core.object
      ( Core.catMaybes
          [ ("commercialName" Core..=) Core.<$> commercialName,
            ("count" Core..=) Core.<$> count,
            ("description" Core..=) Core.<$> description,
            Core.Just ("kind" Core..= kind),
            ("subcode" Core..=) Core.<$> subcode
          ]
      )

-- | Information about a carrier (ie. an airline, bus line, railroad, etc) that might be useful to display to an end-user.
--
-- /See:/ 'newCarrierData' smart constructor.
data CarrierData = CarrierData
  { -- | The IATA designator of a carrier (airline, etc). For example, for American Airlines, the code is AA.
    code :: (Core.Maybe Core.Text),
    -- | Identifies this as a kind of carrier (ie. an airline, bus line, railroad, etc). Value: the fixed string qpxexpress#carrierData.
    kind :: Core.Text,
    -- | The long, full name of a carrier. For example: American Airlines.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CarrierData' with the minimum fields required to make a request.
newCarrierData ::
  CarrierData
newCarrierData =
  CarrierData
    { code = Core.Nothing,
      kind = "qpxexpress#carrierData",
      name = Core.Nothing
    }

instance Core.FromJSON CarrierData where
  parseJSON =
    Core.withObject
      "CarrierData"
      ( \o ->
          CarrierData
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#carrierData")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON CarrierData where
  toJSON CarrierData {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Information about a city that might be useful to an end-user; typically the city of an airport.
--
-- /See:/ 'newCityData' smart constructor.
data CityData = CityData
  { -- | The IATA character ID of a city. For example, for Boston this is BOS.
    code :: (Core.Maybe Core.Text),
    -- | The two-character country code of the country the city is located in. For example, US for the United States of America.
    country :: (Core.Maybe Core.Text),
    -- | Identifies this as a city, typically with one or more airports. Value: the fixed string qpxexpress#cityData.
    kind :: Core.Text,
    -- | The full name of a city. An example would be: New York.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CityData' with the minimum fields required to make a request.
newCityData ::
  CityData
newCityData =
  CityData
    { code = Core.Nothing,
      country = Core.Nothing,
      kind = "qpxexpress#cityData",
      name = Core.Nothing
    }

instance Core.FromJSON CityData where
  parseJSON =
    Core.withObject
      "CityData"
      ( \o ->
          CityData
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#cityData")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON CityData where
  toJSON CityData {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("country" Core..=) Core.<$> country,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Detailed information about components found in the solutions of this response, including a trip\'s airport, city, taxes, airline, and aircraft.
--
-- /See:/ 'newData' smart constructor.
data Data' = Data'
  { -- | The aircraft that is flying between an origin and destination.
    aircraft :: (Core.Maybe [AircraftData]),
    -- | The airport of an origin or destination.
    airport :: (Core.Maybe [AirportData]),
    -- | The airline carrier of the aircraft flying between an origin and destination. Allowed values are IATA carrier codes.
    carrier :: (Core.Maybe [CarrierData]),
    -- | The city that is either the origin or destination of part of a trip.
    city :: (Core.Maybe [CityData]),
    -- | Identifies this as QPX Express response resource, including a trip\'s airport, city, taxes, airline, and aircraft. Value: the fixed string qpxexpress#data.
    kind :: Core.Text,
    -- | The taxes due for flying between an origin and a destination.
    tax :: (Core.Maybe [TaxData])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Data' with the minimum fields required to make a request.
newData ::
  Data'
newData =
  Data'
    { aircraft = Core.Nothing,
      airport = Core.Nothing,
      carrier = Core.Nothing,
      city = Core.Nothing,
      kind = "qpxexpress#data",
      tax = Core.Nothing
    }

instance Core.FromJSON Data' where
  parseJSON =
    Core.withObject
      "Data'"
      ( \o ->
          Data'
            Core.<$> (o Core..:? "aircraft")
            Core.<*> (o Core..:? "airport")
            Core.<*> (o Core..:? "carrier")
            Core.<*> (o Core..:? "city")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#data")
            Core.<*> (o Core..:? "tax")
      )

instance Core.ToJSON Data' where
  toJSON Data' {..} =
    Core.object
      ( Core.catMaybes
          [ ("aircraft" Core..=) Core.<$> aircraft,
            ("airport" Core..=) Core.<$> airport,
            ("carrier" Core..=) Core.<$> carrier,
            ("city" Core..=) Core.<$> city,
            Core.Just ("kind" Core..= kind),
            ("tax" Core..=) Core.<$> tax
          ]
      )

-- | Complete information about a fare used in the solution to a low-fare search query. In the airline industry a fare is a price an airline charges for one-way travel between two points. A fare typically contains a carrier code, two city codes, a price, and a fare basis. (A fare basis is a one-to-eight character alphanumeric code used to identify a fare.)
--
-- /See:/ 'newFareInfo' smart constructor.
data FareInfo = FareInfo
  { basisCode :: (Core.Maybe Core.Text),
    -- | The carrier of the aircraft or other vehicle commuting between two points.
    carrier :: (Core.Maybe Core.Text),
    -- | The city code of the city the trip ends at.
    destination :: (Core.Maybe Core.Text),
    -- | A unique identifier of the fare.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a fare object. Value: the fixed string qpxexpress#fareInfo.
    kind :: Core.Text,
    -- | The city code of the city the trip begins at.
    origin :: (Core.Maybe Core.Text),
    -- | Whether this is a private fare, for example one offered only to select customers rather than the general public.
    private :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FareInfo' with the minimum fields required to make a request.
newFareInfo ::
  FareInfo
newFareInfo =
  FareInfo
    { basisCode = Core.Nothing,
      carrier = Core.Nothing,
      destination = Core.Nothing,
      id = Core.Nothing,
      kind = "qpxexpress#fareInfo",
      origin = Core.Nothing,
      private = Core.Nothing
    }

instance Core.FromJSON FareInfo where
  parseJSON =
    Core.withObject
      "FareInfo"
      ( \o ->
          FareInfo
            Core.<$> (o Core..:? "basisCode")
            Core.<*> (o Core..:? "carrier")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#fareInfo")
            Core.<*> (o Core..:? "origin")
            Core.<*> (o Core..:? "private")
      )

instance Core.ToJSON FareInfo where
  toJSON FareInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("basisCode" Core..=) Core.<$> basisCode,
            ("carrier" Core..=) Core.<$> carrier,
            ("destination" Core..=) Core.<$> destination,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("origin" Core..=) Core.<$> origin,
            ("private" Core..=) Core.<$> private
          ]
      )

-- | A flight is a sequence of legs with the same airline carrier and flight number. (A leg is the smallest unit of travel, in the case of a flight a takeoff immediately followed by a landing at two set points on a particular carrier with a particular flight number.) The naive view is that a flight is scheduled travel of an aircraft between two points, with possibly intermediate stops, but carriers will frequently list flights that require a change of aircraft between legs.
--
-- /See:/ 'newFlightInfo' smart constructor.
data FlightInfo = FlightInfo
  { carrier :: (Core.Maybe Core.Text),
    -- | The flight number.
    number :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FlightInfo' with the minimum fields required to make a request.
newFlightInfo ::
  FlightInfo
newFlightInfo =
  FlightInfo {carrier = Core.Nothing, number = Core.Nothing}

instance Core.FromJSON FlightInfo where
  parseJSON =
    Core.withObject
      "FlightInfo"
      ( \o ->
          FlightInfo
            Core.<$> (o Core..:? "carrier")
            Core.<*> (o Core..:? "number")
      )

instance Core.ToJSON FlightInfo where
  toJSON FlightInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("carrier" Core..=) Core.<$> carrier,
            ("number" Core..=) Core.<$> number
          ]
      )

-- | Information about free baggage allowed on one segment of a trip.
--
-- /See:/ 'newFreeBaggageAllowance' smart constructor.
data FreeBaggageAllowance = FreeBaggageAllowance
  { -- | A representation of a type of bag, such as an ATPCo subcode, Commercial Name, or other description.
    bagDescriptor :: (Core.Maybe [BagDescriptor]),
    -- | The maximum number of kilos all the free baggage together may weigh.
    kilos :: (Core.Maybe Core.Int32),
    -- | The maximum number of kilos any one piece of baggage may weigh.
    kilosPerPiece :: (Core.Maybe Core.Int32),
    -- | Identifies this as free baggage object, allowed on one segment of a trip. Value: the fixed string qpxexpress#freeBaggageAllowance.
    kind :: Core.Text,
    -- | The number of free pieces of baggage allowed.
    pieces :: (Core.Maybe Core.Int32),
    -- | The number of pounds of free baggage allowed.
    pounds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FreeBaggageAllowance' with the minimum fields required to make a request.
newFreeBaggageAllowance ::
  FreeBaggageAllowance
newFreeBaggageAllowance =
  FreeBaggageAllowance
    { bagDescriptor = Core.Nothing,
      kilos = Core.Nothing,
      kilosPerPiece = Core.Nothing,
      kind = "qpxexpress#freeBaggageAllowance",
      pieces = Core.Nothing,
      pounds = Core.Nothing
    }

instance Core.FromJSON FreeBaggageAllowance where
  parseJSON =
    Core.withObject
      "FreeBaggageAllowance"
      ( \o ->
          FreeBaggageAllowance
            Core.<$> (o Core..:? "bagDescriptor")
            Core.<*> (o Core..:? "kilos")
            Core.<*> (o Core..:? "kilosPerPiece")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#freeBaggageAllowance")
            Core.<*> (o Core..:? "pieces")
            Core.<*> (o Core..:? "pounds")
      )

instance Core.ToJSON FreeBaggageAllowance where
  toJSON FreeBaggageAllowance {..} =
    Core.object
      ( Core.catMaybes
          [ ("bagDescriptor" Core..=) Core.<$> bagDescriptor,
            ("kilos" Core..=) Core.<$> kilos,
            ("kilosPerPiece" Core..=) Core.<$> kilosPerPiece,
            Core.Just ("kind" Core..= kind),
            ("pieces" Core..=) Core.<$> pieces,
            ("pounds" Core..=) Core.<$> pounds
          ]
      )

-- | Information about a leg. (A leg is the smallest unit of travel, in the case of a flight a takeoff immediately followed by a landing at two set points on a particular carrier with a particular flight number.)
--
-- /See:/ 'newLegInfo' smart constructor.
data LegInfo = LegInfo
  { -- | The aircraft (or bus, ferry, railcar, etc) travelling between the two points of this leg.
    aircraft :: (Core.Maybe Core.Text),
    -- | The scheduled time of arrival at the destination of the leg, local to the point of arrival.
    arrivalTime :: (Core.Maybe Core.Text),
    -- | Whether you have to change planes following this leg. Only applies to the next leg.
    changePlane :: (Core.Maybe Core.Bool),
    -- | Duration of a connection following this leg, in minutes.
    connectionDuration :: (Core.Maybe Core.Int32),
    -- | The scheduled departure time of the leg, local to the point of departure.
    departureTime :: (Core.Maybe Core.Text),
    -- | The leg destination as a city and airport.
    destination :: (Core.Maybe Core.Text),
    -- | The terminal the flight is scheduled to arrive at.
    destinationTerminal :: (Core.Maybe Core.Text),
    -- | The scheduled travelling time from the origin to the destination.
    duration :: (Core.Maybe Core.Int32),
    -- | An identifier that uniquely identifies this leg in the solution.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a leg object. A leg is the smallest unit of travel, in the case of a flight a takeoff immediately followed by a landing at two set points on a particular carrier with a particular flight number. Value: the fixed string qpxexpress#legInfo.
    kind :: Core.Text,
    -- | A simple, general description of the meal(s) served on the flight, for example: \"Hot meal\".
    meal :: (Core.Maybe Core.Text),
    -- | The number of miles in this leg.
    mileage :: (Core.Maybe Core.Int32),
    -- | In percent, the published on time performance on this leg.
    onTimePerformance :: (Core.Maybe Core.Int32),
    -- | Department of Transportation disclosure information on the actual operator of a flight in a code share. (A code share refers to a marketing agreement between two carriers, where one carrier will list in its schedules (and take bookings for) flights that are actually operated by another carrier.)
    operatingDisclosure :: (Core.Maybe Core.Text),
    -- | The leg origin as a city and airport.
    origin :: (Core.Maybe Core.Text),
    -- | The terminal the flight is scheduled to depart from.
    originTerminal :: (Core.Maybe Core.Text),
    -- | Whether passenger information must be furnished to the United States Transportation Security Administration (TSA) prior to departure.
    secure :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LegInfo' with the minimum fields required to make a request.
newLegInfo ::
  LegInfo
newLegInfo =
  LegInfo
    { aircraft = Core.Nothing,
      arrivalTime = Core.Nothing,
      changePlane = Core.Nothing,
      connectionDuration = Core.Nothing,
      departureTime = Core.Nothing,
      destination = Core.Nothing,
      destinationTerminal = Core.Nothing,
      duration = Core.Nothing,
      id = Core.Nothing,
      kind = "qpxexpress#legInfo",
      meal = Core.Nothing,
      mileage = Core.Nothing,
      onTimePerformance = Core.Nothing,
      operatingDisclosure = Core.Nothing,
      origin = Core.Nothing,
      originTerminal = Core.Nothing,
      secure = Core.Nothing
    }

instance Core.FromJSON LegInfo where
  parseJSON =
    Core.withObject
      "LegInfo"
      ( \o ->
          LegInfo
            Core.<$> (o Core..:? "aircraft")
            Core.<*> (o Core..:? "arrivalTime")
            Core.<*> (o Core..:? "changePlane")
            Core.<*> (o Core..:? "connectionDuration")
            Core.<*> (o Core..:? "departureTime")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "destinationTerminal")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#legInfo")
            Core.<*> (o Core..:? "meal")
            Core.<*> (o Core..:? "mileage")
            Core.<*> (o Core..:? "onTimePerformance")
            Core.<*> (o Core..:? "operatingDisclosure")
            Core.<*> (o Core..:? "origin")
            Core.<*> (o Core..:? "originTerminal")
            Core.<*> (o Core..:? "secure")
      )

instance Core.ToJSON LegInfo where
  toJSON LegInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("aircraft" Core..=) Core.<$> aircraft,
            ("arrivalTime" Core..=) Core.<$> arrivalTime,
            ("changePlane" Core..=) Core.<$> changePlane,
            ("connectionDuration" Core..=) Core.<$> connectionDuration,
            ("departureTime" Core..=) Core.<$> departureTime,
            ("destination" Core..=) Core.<$> destination,
            ("destinationTerminal" Core..=) Core.<$> destinationTerminal,
            ("duration" Core..=) Core.<$> duration,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("meal" Core..=) Core.<$> meal,
            ("mileage" Core..=) Core.<$> mileage,
            ("onTimePerformance" Core..=) Core.<$> onTimePerformance,
            ("operatingDisclosure" Core..=) Core.<$> operatingDisclosure,
            ("origin" Core..=) Core.<$> origin,
            ("originTerminal" Core..=) Core.<$> originTerminal,
            ("secure" Core..=) Core.<$> secure
          ]
      )

-- | The number and type of passengers. Unfortunately the definition of an infant, child, adult, and senior citizen varies across carriers and reservation systems.
--
-- /See:/ 'newPassengerCounts' smart constructor.
data PassengerCounts = PassengerCounts
  { -- | The number of passengers that are adults.
    adultCount :: (Core.Maybe Core.Int32),
    -- | The number of passengers that are children.
    childCount :: (Core.Maybe Core.Int32),
    -- | The number of passengers that are infants travelling in the lap of an adult.
    infantInLapCount :: (Core.Maybe Core.Int32),
    -- | The number of passengers that are infants each assigned a seat.
    infantInSeatCount :: (Core.Maybe Core.Int32),
    -- | Identifies this as a passenger count object, representing the number of passengers. Value: the fixed string qpxexpress#passengerCounts.
    kind :: Core.Text,
    -- | The number of passengers that are senior citizens.
    seniorCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PassengerCounts' with the minimum fields required to make a request.
newPassengerCounts ::
  PassengerCounts
newPassengerCounts =
  PassengerCounts
    { adultCount = Core.Nothing,
      childCount = Core.Nothing,
      infantInLapCount = Core.Nothing,
      infantInSeatCount = Core.Nothing,
      kind = "qpxexpress#passengerCounts",
      seniorCount = Core.Nothing
    }

instance Core.FromJSON PassengerCounts where
  parseJSON =
    Core.withObject
      "PassengerCounts"
      ( \o ->
          PassengerCounts
            Core.<$> (o Core..:? "adultCount")
            Core.<*> (o Core..:? "childCount")
            Core.<*> (o Core..:? "infantInLapCount")
            Core.<*> (o Core..:? "infantInSeatCount")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#passengerCounts")
            Core.<*> (o Core..:? "seniorCount")
      )

instance Core.ToJSON PassengerCounts where
  toJSON PassengerCounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("adultCount" Core..=) Core.<$> adultCount,
            ("childCount" Core..=) Core.<$> childCount,
            ("infantInLapCount" Core..=) Core.<$> infantInLapCount,
            ("infantInSeatCount" Core..=) Core.<$> infantInSeatCount,
            Core.Just ("kind" Core..= kind),
            ("seniorCount" Core..=) Core.<$> seniorCount
          ]
      )

-- | The price of one or more travel segments. The currency used to purchase tickets is usually determined by the sale\/ticketing city or the sale\/ticketing country, unless none are specified, in which case it defaults to that of the journey origin country.
--
-- /See:/ 'newPricingInfo' smart constructor.
data PricingInfo = PricingInfo
  { -- | The total fare in the base fare currency (the currency of the country of origin). This element is only present when the sales currency and the currency of the country of commencement are different.
    baseFareTotal :: (Core.Maybe Core.Text),
    -- | The fare used to price one or more segments.
    fare :: (Core.Maybe [FareInfo]),
    -- | The horizontal fare calculation. This is a field on a ticket that displays all of the relevant items that go into the calculation of the fare.
    fareCalculation :: (Core.Maybe Core.Text),
    -- | Identifies this as a pricing object, representing the price of one or more travel segments. Value: the fixed string qpxexpress#pricingInfo.
    kind :: Core.Text,
    -- | The latest ticketing time for this pricing assuming the reservation occurs at ticketing time and there is no change in fares\/rules. The time is local to the point of sale (POS).
    latestTicketingTime :: (Core.Maybe Core.Text),
    -- | The number of passengers to which this price applies.
    passengers :: (Core.Maybe PassengerCounts),
    -- | The passenger type code for this pricing. An alphanumeric code used by a carrier to restrict fares to certain categories of passenger. For instance, a fare might be valid only for senior citizens.
    ptc :: (Core.Maybe Core.Text),
    -- | Whether the fares on this pricing are refundable.
    refundable :: (Core.Maybe Core.Bool),
    -- | The total fare in the sale or equivalent currency.
    saleFareTotal :: (Core.Maybe Core.Text),
    -- | The taxes in the sale or equivalent currency.
    saleTaxTotal :: (Core.Maybe Core.Text),
    -- | Total per-passenger price (fare and tax) in the sale or equivalent currency.
    saleTotal :: (Core.Maybe Core.Text),
    -- | The per-segment price and baggage information.
    segmentPricing :: (Core.Maybe [SegmentPricing]),
    -- | The taxes used to calculate the tax total per ticket.
    tax :: (Core.Maybe [TaxInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PricingInfo' with the minimum fields required to make a request.
newPricingInfo ::
  PricingInfo
newPricingInfo =
  PricingInfo
    { baseFareTotal = Core.Nothing,
      fare = Core.Nothing,
      fareCalculation = Core.Nothing,
      kind = "qpxexpress#pricingInfo",
      latestTicketingTime = Core.Nothing,
      passengers = Core.Nothing,
      ptc = Core.Nothing,
      refundable = Core.Nothing,
      saleFareTotal = Core.Nothing,
      saleTaxTotal = Core.Nothing,
      saleTotal = Core.Nothing,
      segmentPricing = Core.Nothing,
      tax = Core.Nothing
    }

instance Core.FromJSON PricingInfo where
  parseJSON =
    Core.withObject
      "PricingInfo"
      ( \o ->
          PricingInfo
            Core.<$> (o Core..:? "baseFareTotal")
            Core.<*> (o Core..:? "fare")
            Core.<*> (o Core..:? "fareCalculation")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#pricingInfo")
            Core.<*> (o Core..:? "latestTicketingTime")
            Core.<*> (o Core..:? "passengers")
            Core.<*> (o Core..:? "ptc")
            Core.<*> (o Core..:? "refundable")
            Core.<*> (o Core..:? "saleFareTotal")
            Core.<*> (o Core..:? "saleTaxTotal")
            Core.<*> (o Core..:? "saleTotal")
            Core.<*> (o Core..:? "segmentPricing")
            Core.<*> (o Core..:? "tax")
      )

instance Core.ToJSON PricingInfo where
  toJSON PricingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseFareTotal" Core..=) Core.<$> baseFareTotal,
            ("fare" Core..=) Core.<$> fare,
            ("fareCalculation" Core..=) Core.<$> fareCalculation,
            Core.Just ("kind" Core..= kind),
            ("latestTicketingTime" Core..=) Core.<$> latestTicketingTime,
            ("passengers" Core..=) Core.<$> passengers,
            ("ptc" Core..=) Core.<$> ptc,
            ("refundable" Core..=) Core.<$> refundable,
            ("saleFareTotal" Core..=) Core.<$> saleFareTotal,
            ("saleTaxTotal" Core..=) Core.<$> saleTaxTotal,
            ("saleTotal" Core..=) Core.<$> saleTotal,
            ("segmentPricing" Core..=) Core.<$> segmentPricing,
            ("tax" Core..=) Core.<$> tax
          ]
      )

-- | Details of a segment of a flight; a segment is one or more consecutive legs on the same flight. For example a hypothetical flight ZZ001, from DFW to OGG, would have one segment with two legs: DFW to HNL (leg 1), HNL to OGG (leg 2), and DFW to OGG (legs 1 and 2).
--
-- /See:/ 'newSegmentInfo' smart constructor.
data SegmentInfo = SegmentInfo
  { -- | The booking code or class for this segment.
    bookingCode :: (Core.Maybe Core.Text),
    -- | The number of seats available in this booking code on this segment.
    bookingCodeCount :: (Core.Maybe Core.Int32),
    -- | The cabin booked for this segment.
    cabin :: (Core.Maybe Core.Text),
    -- | In minutes, the duration of the connection following this segment.
    connectionDuration :: (Core.Maybe Core.Int32),
    -- | The duration of the flight segment in minutes.
    duration :: (Core.Maybe Core.Int32),
    -- | The flight this is a segment of.
    flight :: (Core.Maybe FlightInfo),
    -- | An id uniquely identifying the segment in the solution.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a segment object. A segment is one or more consecutive legs on the same flight. For example a hypothetical flight ZZ001, from DFW to OGG, could have one segment with two legs: DFW to HNL (leg 1), HNL to OGG (leg 2). Value: the fixed string qpxexpress#segmentInfo.
    kind :: Core.Text,
    -- | The legs composing this segment.
    leg :: (Core.Maybe [LegInfo]),
    -- | The solution-based index of a segment in a married segment group. Married segments can only be booked together. For example, an airline might report a certain booking code as sold out from Boston to Pittsburgh, but as available as part of two married segments Boston to Chicago connecting through Pittsburgh. For example content of this field, consider the round-trip flight ZZ1 PHX-PHL ZZ2 PHL-CLT ZZ3 CLT-PHX. This has three segments, with the two outbound ones (ZZ1 ZZ2) married. In this case, the two outbound segments belong to married segment group 0, and the return segment belongs to married segment group 1.
    marriedSegmentGroup :: (Core.Maybe Core.Text),
    -- | Whether the operation of this segment remains subject to government approval.
    subjectToGovernmentApproval :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentInfo' with the minimum fields required to make a request.
newSegmentInfo ::
  SegmentInfo
newSegmentInfo =
  SegmentInfo
    { bookingCode = Core.Nothing,
      bookingCodeCount = Core.Nothing,
      cabin = Core.Nothing,
      connectionDuration = Core.Nothing,
      duration = Core.Nothing,
      flight = Core.Nothing,
      id = Core.Nothing,
      kind = "qpxexpress#segmentInfo",
      leg = Core.Nothing,
      marriedSegmentGroup = Core.Nothing,
      subjectToGovernmentApproval = Core.Nothing
    }

instance Core.FromJSON SegmentInfo where
  parseJSON =
    Core.withObject
      "SegmentInfo"
      ( \o ->
          SegmentInfo
            Core.<$> (o Core..:? "bookingCode")
            Core.<*> (o Core..:? "bookingCodeCount")
            Core.<*> (o Core..:? "cabin")
            Core.<*> (o Core..:? "connectionDuration")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "flight")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#segmentInfo")
            Core.<*> (o Core..:? "leg")
            Core.<*> (o Core..:? "marriedSegmentGroup")
            Core.<*> (o Core..:? "subjectToGovernmentApproval")
      )

instance Core.ToJSON SegmentInfo where
  toJSON SegmentInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("bookingCode" Core..=) Core.<$> bookingCode,
            ("bookingCodeCount" Core..=) Core.<$> bookingCodeCount,
            ("cabin" Core..=) Core.<$> cabin,
            ("connectionDuration" Core..=) Core.<$> connectionDuration,
            ("duration" Core..=) Core.<$> duration,
            ("flight" Core..=) Core.<$> flight,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("leg" Core..=) Core.<$> leg,
            ("marriedSegmentGroup" Core..=) Core.<$> marriedSegmentGroup,
            ("subjectToGovernmentApproval" Core..=)
              Core.<$> subjectToGovernmentApproval
          ]
      )

-- | The price of this segment.
--
-- /See:/ 'newSegmentPricing' smart constructor.
data SegmentPricing = SegmentPricing
  { -- | A segment identifier unique within a single solution. It is used to refer to different parts of the same solution.
    fareId :: (Core.Maybe Core.Text),
    -- | Details of the free baggage allowance on this segment.
    freeBaggageOption :: (Core.Maybe [FreeBaggageAllowance]),
    -- | Identifies this as a segment pricing object, representing the price of this segment. Value: the fixed string qpxexpress#segmentPricing.
    kind :: Core.Text,
    -- | Unique identifier in the response of this segment.
    segmentId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SegmentPricing' with the minimum fields required to make a request.
newSegmentPricing ::
  SegmentPricing
newSegmentPricing =
  SegmentPricing
    { fareId = Core.Nothing,
      freeBaggageOption = Core.Nothing,
      kind = "qpxexpress#segmentPricing",
      segmentId = Core.Nothing
    }

instance Core.FromJSON SegmentPricing where
  parseJSON =
    Core.withObject
      "SegmentPricing"
      ( \o ->
          SegmentPricing
            Core.<$> (o Core..:? "fareId")
            Core.<*> (o Core..:? "freeBaggageOption")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#segmentPricing")
            Core.<*> (o Core..:? "segmentId")
      )

instance Core.ToJSON SegmentPricing where
  toJSON SegmentPricing {..} =
    Core.object
      ( Core.catMaybes
          [ ("fareId" Core..=) Core.<$> fareId,
            ("freeBaggageOption" Core..=) Core.<$> freeBaggageOption,
            Core.Just ("kind" Core..= kind),
            ("segmentId" Core..=) Core.<$> segmentId
          ]
      )

-- | Information about a slice. A slice represents a traveller\'s intent, the portion of a low-fare search corresponding to a traveler\'s request to get between two points. One-way journeys are generally expressed using 1 slice, round-trips using 2. For example, if a traveler specifies the following trip in a user interface: | Origin | Destination | Departure Date | | BOS | LAX | March 10, 2007 | | LAX | SYD | March 17, 2007 | | SYD | BOS | March 22, 2007 | then this is a three slice trip.
--
-- /See:/ 'newSliceInfo' smart constructor.
data SliceInfo = SliceInfo
  { -- | The duration of the slice in minutes.
    duration :: (Core.Maybe Core.Int32),
    -- | Identifies this as a slice object. A slice represents a traveller\'s intent, the portion of a low-fare search corresponding to a traveler\'s request to get between two points. One-way journeys are generally expressed using 1 slice, round-trips using 2. Value: the fixed string qpxexpress#sliceInfo.
    kind :: Core.Text,
    -- | The segment(s) constituting the slice.
    segment :: (Core.Maybe [SegmentInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SliceInfo' with the minimum fields required to make a request.
newSliceInfo ::
  SliceInfo
newSliceInfo =
  SliceInfo
    { duration = Core.Nothing,
      kind = "qpxexpress#sliceInfo",
      segment = Core.Nothing
    }

instance Core.FromJSON SliceInfo where
  parseJSON =
    Core.withObject
      "SliceInfo"
      ( \o ->
          SliceInfo
            Core.<$> (o Core..:? "duration")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#sliceInfo")
            Core.<*> (o Core..:? "segment")
      )

instance Core.ToJSON SliceInfo where
  toJSON SliceInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("duration" Core..=) Core.<$> duration,
            Core.Just ("kind" Core..= kind),
            ("segment" Core..=) Core.<$> segment
          ]
      )

-- | Criteria a desired slice must satisfy.
--
-- /See:/ 'newSliceInput' smart constructor.
data SliceInput = SliceInput
  { -- | Slices with only the carriers in this alliance should be returned; do not use this field with permittedCarrier. Allowed values are ONEWORLD, SKYTEAM, and STAR.
    alliance :: (Core.Maybe Core.Text),
    -- | Departure date in YYYY-MM-DD format.
    date :: (Core.Maybe Core.Text),
    -- | Airport or city IATA designator of the destination.
    destination :: (Core.Maybe Core.Text),
    -- | Identifies this as a slice input object, representing the criteria a desired slice must satisfy. Value: the fixed string qpxexpress#sliceInput.
    kind :: Core.Text,
    -- | The longest connection between two legs, in minutes, you are willing to accept.
    maxConnectionDuration :: (Core.Maybe Core.Int32),
    -- | The maximum number of stops you are willing to accept in this slice.
    maxStops :: (Core.Maybe Core.Int32),
    -- | Airport or city IATA designator of the origin.
    origin :: (Core.Maybe Core.Text),
    -- | A list of 2-letter IATA airline designators. Slices with only these carriers should be returned.
    permittedCarrier :: (Core.Maybe [Core.Text]),
    -- | Slices must depart in this time of day range, local to the point of departure.
    permittedDepartureTime :: (Core.Maybe TimeOfDayRange),
    -- | Prefer solutions that book in this cabin for this slice. Allowed values are COACH, PREMIUM_COACH, BUSINESS, and FIRST.
    preferredCabin :: (Core.Maybe Core.Text),
    -- | A list of 2-letter IATA airline designators. Exclude slices that use these carriers.
    prohibitedCarrier :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SliceInput' with the minimum fields required to make a request.
newSliceInput ::
  SliceInput
newSliceInput =
  SliceInput
    { alliance = Core.Nothing,
      date = Core.Nothing,
      destination = Core.Nothing,
      kind = "qpxexpress#sliceInput",
      maxConnectionDuration = Core.Nothing,
      maxStops = Core.Nothing,
      origin = Core.Nothing,
      permittedCarrier = Core.Nothing,
      permittedDepartureTime = Core.Nothing,
      preferredCabin = Core.Nothing,
      prohibitedCarrier = Core.Nothing
    }

instance Core.FromJSON SliceInput where
  parseJSON =
    Core.withObject
      "SliceInput"
      ( \o ->
          SliceInput
            Core.<$> (o Core..:? "alliance")
            Core.<*> (o Core..:? "date")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#sliceInput")
            Core.<*> (o Core..:? "maxConnectionDuration")
            Core.<*> (o Core..:? "maxStops")
            Core.<*> (o Core..:? "origin")
            Core.<*> (o Core..:? "permittedCarrier")
            Core.<*> (o Core..:? "permittedDepartureTime")
            Core.<*> (o Core..:? "preferredCabin")
            Core.<*> (o Core..:? "prohibitedCarrier")
      )

instance Core.ToJSON SliceInput where
  toJSON SliceInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("alliance" Core..=) Core.<$> alliance,
            ("date" Core..=) Core.<$> date,
            ("destination" Core..=) Core.<$> destination,
            Core.Just ("kind" Core..= kind),
            ("maxConnectionDuration" Core..=) Core.<$> maxConnectionDuration,
            ("maxStops" Core..=) Core.<$> maxStops,
            ("origin" Core..=) Core.<$> origin,
            ("permittedCarrier" Core..=) Core.<$> permittedCarrier,
            ("permittedDepartureTime" Core..=) Core.<$> permittedDepartureTime,
            ("preferredCabin" Core..=) Core.<$> preferredCabin,
            ("prohibitedCarrier" Core..=) Core.<$> prohibitedCarrier
          ]
      )

-- | Tax data.
--
-- /See:/ 'newTaxData' smart constructor.
data TaxData = TaxData
  { -- | An identifier uniquely identifying a tax in a response.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a tax data object, representing some tax. Value: the fixed string qpxexpress#taxData.
    kind :: Core.Text,
    -- | The name of a tax.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaxData' with the minimum fields required to make a request.
newTaxData ::
  TaxData
newTaxData =
  TaxData
    { id = Core.Nothing,
      kind = "qpxexpress#taxData",
      name = Core.Nothing
    }

instance Core.FromJSON TaxData where
  parseJSON =
    Core.withObject
      "TaxData"
      ( \o ->
          TaxData
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#taxData")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON TaxData where
  toJSON TaxData {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Tax information.
--
-- /See:/ 'newTaxInfo' smart constructor.
data TaxInfo = TaxInfo
  { -- | Whether this is a government charge or a carrier surcharge.
    chargeType :: (Core.Maybe Core.Text),
    -- | The code to enter in the ticket\'s tax box.
    code :: (Core.Maybe Core.Text),
    -- | For government charges, the country levying the charge.
    country :: (Core.Maybe Core.Text),
    -- | Identifier uniquely identifying this tax in a response. Not present for unnamed carrier surcharges.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a tax information object. Value: the fixed string qpxexpress#taxInfo.
    kind :: Core.Text,
    -- | The price of the tax in the sales or equivalent currency.
    salePrice :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaxInfo' with the minimum fields required to make a request.
newTaxInfo ::
  TaxInfo
newTaxInfo =
  TaxInfo
    { chargeType = Core.Nothing,
      code = Core.Nothing,
      country = Core.Nothing,
      id = Core.Nothing,
      kind = "qpxexpress#taxInfo",
      salePrice = Core.Nothing
    }

instance Core.FromJSON TaxInfo where
  parseJSON =
    Core.withObject
      "TaxInfo"
      ( \o ->
          TaxInfo
            Core.<$> (o Core..:? "chargeType")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "country")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#taxInfo")
            Core.<*> (o Core..:? "salePrice")
      )

instance Core.ToJSON TaxInfo where
  toJSON TaxInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("chargeType" Core..=) Core.<$> chargeType,
            ("code" Core..=) Core.<$> code,
            ("country" Core..=) Core.<$> country,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("salePrice" Core..=) Core.<$> salePrice
          ]
      )

-- | Two times in a single day defining a time range.
--
-- /See:/ 'newTimeOfDayRange' smart constructor.
data TimeOfDayRange = TimeOfDayRange
  { -- | The earliest time of day in HH:MM format.
    earliestTime :: (Core.Maybe Core.Text),
    -- | Identifies this as a time of day range object, representing two times in a single day defining a time range. Value: the fixed string qpxexpress#timeOfDayRange.
    kind :: Core.Text,
    -- | The latest time of day in HH:MM format.
    latestTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDayRange' with the minimum fields required to make a request.
newTimeOfDayRange ::
  TimeOfDayRange
newTimeOfDayRange =
  TimeOfDayRange
    { earliestTime = Core.Nothing,
      kind = "qpxexpress#timeOfDayRange",
      latestTime = Core.Nothing
    }

instance Core.FromJSON TimeOfDayRange where
  parseJSON =
    Core.withObject
      "TimeOfDayRange"
      ( \o ->
          TimeOfDayRange
            Core.<$> (o Core..:? "earliestTime")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#timeOfDayRange")
            Core.<*> (o Core..:? "latestTime")
      )

instance Core.ToJSON TimeOfDayRange where
  toJSON TimeOfDayRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("earliestTime" Core..=) Core.<$> earliestTime,
            Core.Just ("kind" Core..= kind),
            ("latestTime" Core..=) Core.<$> latestTime
          ]
      )

-- | Trip information.
--
-- /See:/ 'newTripOption' smart constructor.
data TripOption = TripOption
  { -- | Identifier uniquely identifying this trip in a response.
    id :: (Core.Maybe Core.Text),
    -- | Identifies this as a trip information object. Value: the fixed string qpxexpress#tripOption.
    kind :: Core.Text,
    -- | Per passenger pricing information.
    pricing :: (Core.Maybe [PricingInfo]),
    -- | The total price for all passengers on the trip, in the form of a currency followed by an amount, e.g. USD253.35.
    saleTotal :: (Core.Maybe Core.Text),
    -- | The slices that make up this trip\'s itinerary.
    slice :: (Core.Maybe [SliceInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TripOption' with the minimum fields required to make a request.
newTripOption ::
  TripOption
newTripOption =
  TripOption
    { id = Core.Nothing,
      kind = "qpxexpress#tripOption",
      pricing = Core.Nothing,
      saleTotal = Core.Nothing,
      slice = Core.Nothing
    }

instance Core.FromJSON TripOption where
  parseJSON =
    Core.withObject
      "TripOption"
      ( \o ->
          TripOption
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#tripOption")
            Core.<*> (o Core..:? "pricing")
            Core.<*> (o Core..:? "saleTotal")
            Core.<*> (o Core..:? "slice")
      )

instance Core.ToJSON TripOption where
  toJSON TripOption {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("pricing" Core..=) Core.<$> pricing,
            ("saleTotal" Core..=) Core.<$> saleTotal,
            ("slice" Core..=) Core.<$> slice
          ]
      )

-- | A QPX Express search request, which will yield one or more solutions.
--
-- /See:/ 'newTripOptionsRequest' smart constructor.
data TripOptionsRequest = TripOptionsRequest
  { -- | Do not return solutions that cost more than this price. The alphabetical part of the price is in ISO 4217. The format, in regex, is [A-Z]{3}\\d+(.\\d+)? Example: $102.07
    maxPrice :: (Core.Maybe Core.Text),
    -- | Counts for each passenger type in the request.
    passengers :: (Core.Maybe PassengerCounts),
    -- | Return only solutions with refundable fares.
    refundable :: (Core.Maybe Core.Bool),
    -- | IATA country code representing the point of sale. This determines the \"equivalent amount paid\" currency for the ticket.
    saleCountry :: (Core.Maybe Core.Text),
    -- | The slices that make up the itinerary of this trip. A slice represents a traveler\'s intent, the portion of a low-fare search corresponding to a traveler\'s request to get between two points. One-way journeys are generally expressed using one slice, round-trips using two. An example of a one slice trip with three segments might be BOS-SYD, SYD-LAX, LAX-BOS if the traveler only stopped in SYD and LAX just long enough to change planes.
    slice :: (Core.Maybe [SliceInput]),
    -- | The number of solutions to return, maximum 500.
    solutions :: (Core.Maybe Core.Int32),
    -- | IATA country code representing the point of ticketing.
    ticketingCountry :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TripOptionsRequest' with the minimum fields required to make a request.
newTripOptionsRequest ::
  TripOptionsRequest
newTripOptionsRequest =
  TripOptionsRequest
    { maxPrice = Core.Nothing,
      passengers = Core.Nothing,
      refundable = Core.Nothing,
      saleCountry = Core.Nothing,
      slice = Core.Nothing,
      solutions = Core.Nothing,
      ticketingCountry = Core.Nothing
    }

instance Core.FromJSON TripOptionsRequest where
  parseJSON =
    Core.withObject
      "TripOptionsRequest"
      ( \o ->
          TripOptionsRequest
            Core.<$> (o Core..:? "maxPrice")
            Core.<*> (o Core..:? "passengers")
            Core.<*> (o Core..:? "refundable")
            Core.<*> (o Core..:? "saleCountry")
            Core.<*> (o Core..:? "slice")
            Core.<*> (o Core..:? "solutions")
            Core.<*> (o Core..:? "ticketingCountry")
      )

instance Core.ToJSON TripOptionsRequest where
  toJSON TripOptionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxPrice" Core..=) Core.<$> maxPrice,
            ("passengers" Core..=) Core.<$> passengers,
            ("refundable" Core..=) Core.<$> refundable,
            ("saleCountry" Core..=) Core.<$> saleCountry,
            ("slice" Core..=) Core.<$> slice,
            ("solutions" Core..=) Core.<$> solutions,
            ("ticketingCountry" Core..=) Core.<$> ticketingCountry
          ]
      )

-- | A QPX Express search response.
--
-- /See:/ 'newTripOptionsResponse' smart constructor.
data TripOptionsResponse = TripOptionsResponse
  { -- | Informational data global to list of solutions.
    data' :: (Core.Maybe Data'),
    -- | Identifies this as a QPX Express trip response object, which consists of zero or more solutions. Value: the fixed string qpxexpress#tripOptions.
    kind :: Core.Text,
    -- | An identifier uniquely identifying this response.
    requestId :: (Core.Maybe Core.Text),
    -- | A list of priced itinerary solutions to the QPX Express query.
    tripOption :: (Core.Maybe [TripOption])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TripOptionsResponse' with the minimum fields required to make a request.
newTripOptionsResponse ::
  TripOptionsResponse
newTripOptionsResponse =
  TripOptionsResponse
    { data' = Core.Nothing,
      kind = "qpxexpress#tripOptions",
      requestId = Core.Nothing,
      tripOption = Core.Nothing
    }

instance Core.FromJSON TripOptionsResponse where
  parseJSON =
    Core.withObject
      "TripOptionsResponse"
      ( \o ->
          TripOptionsResponse
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "kind" Core..!= "qpxexpress#tripOptions")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "tripOption")
      )

instance Core.ToJSON TripOptionsResponse where
  toJSON TripOptionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            Core.Just ("kind" Core..= kind),
            ("requestId" Core..=) Core.<$> requestId,
            ("tripOption" Core..=) Core.<$> tripOption
          ]
      )

-- | A QPX Express search request.
--
-- /See:/ 'newTripsSearchRequest' smart constructor.
newtype TripsSearchRequest = TripsSearchRequest
  { -- | A QPX Express search request. Required values are at least one adult or senior passenger, an origin, a destination, and a date.
    request' :: (Core.Maybe TripOptionsRequest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TripsSearchRequest' with the minimum fields required to make a request.
newTripsSearchRequest ::
  TripsSearchRequest
newTripsSearchRequest = TripsSearchRequest {request' = Core.Nothing}

instance Core.FromJSON TripsSearchRequest where
  parseJSON =
    Core.withObject
      "TripsSearchRequest"
      (\o -> TripsSearchRequest Core.<$> (o Core..:? "request"))

instance Core.ToJSON TripsSearchRequest where
  toJSON TripsSearchRequest {..} =
    Core.object
      (Core.catMaybes [("request" Core..=) Core.<$> request'])

-- | A QPX Express search response.
--
-- /See:/ 'newTripsSearchResponse' smart constructor.
data TripsSearchResponse = TripsSearchResponse
  { -- | Identifies this as a QPX Express API search response resource. Value: the fixed string qpxExpress#tripsSearch.
    kind :: Core.Text,
    -- | All possible solutions to the QPX Express search request.
    trips :: (Core.Maybe TripOptionsResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TripsSearchResponse' with the minimum fields required to make a request.
newTripsSearchResponse ::
  TripsSearchResponse
newTripsSearchResponse =
  TripsSearchResponse
    { kind = "qpxExpress#tripsSearch",
      trips = Core.Nothing
    }

instance Core.FromJSON TripsSearchResponse where
  parseJSON =
    Core.withObject
      "TripsSearchResponse"
      ( \o ->
          TripsSearchResponse
            Core.<$> (o Core..:? "kind" Core..!= "qpxExpress#tripsSearch")
            Core.<*> (o Core..:? "trips")
      )

instance Core.ToJSON TripsSearchResponse where
  toJSON TripsSearchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("trips" Core..=) Core.<$> trips
          ]
      )

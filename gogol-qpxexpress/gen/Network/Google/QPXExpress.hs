{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.QPXExpress
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you find the least expensive flights between an origin and a
-- destination.
--
-- /See:/ <http://developers.google.com/qpx-express QPX Express API Reference>
module Network.Google.QPXExpress
    (
    -- * Resources
      QPXExpress
    , TripsAPI
    , TripsSearch

    -- * Types

    -- ** AircraftData
    , AircraftData
    , aircraftData
    , adKind
    , adName
    , adCode

    -- ** AirportData
    , AirportData
    , airportData
    , aKind
    , aName
    , aCity
    , aCode

    -- ** BagDescriptor
    , BagDescriptor
    , bagDescriptor
    , bdKind
    , bdCommercialName
    , bdCount
    , bdDescription
    , bdSubcode

    -- ** CarrierData
    , CarrierData
    , carrierData
    , cKind
    , cName
    , cCode

    -- ** CityData
    , CityData
    , cityData
    , cdCountry
    , cdKind
    , cdName
    , cdCode

    -- ** Data
    , Data
    , data'
    , dCarrier
    , dKind
    , dAircraft
    , dAirport
    , dCity
    , dTax

    -- ** FareInfo
    , FareInfo
    , fareInfo
    , fiCarrier
    , fiDestination
    , fiOrigin
    , fiPrivate
    , fiKind
    , fiBasisCode
    , fiId

    -- ** FlightInfo
    , FlightInfo
    , flightInfo
    , fCarrier
    , fNumber

    -- ** FreeBaggageAllowance
    , FreeBaggageAllowance
    , freeBaggageAllowance
    , fbaKind
    , fbaPounds
    , fbaBagDescriptor
    , fbaKilosPerPiece
    , fbaKilos
    , fbaPieces

    -- ** LegInfo
    , LegInfo
    , legInfo
    , liDestination
    , liOrigin
    , liSecure
    , liKind
    , liAircraft
    , liArrivalTime
    , liOnTimePerformance
    , liOperatingDisclosure
    , liMeal
    , liId
    , liOriginTerminal
    , liChangePlane
    , liDestinationTerminal
    , liConnectionDuration
    , liDuration
    , liMileage
    , liDepartureTime

    -- ** PassengerCounts
    , PassengerCounts
    , passengerCounts
    , pcSeniorCount
    , pcKind
    , pcInfantInLapCount
    , pcChildCount
    , pcInfantInSeatCount
    , pcAdultCount

    -- ** PricingInfo
    , PricingInfo
    , pricingInfo
    , piSaleTaxTotal
    , piRefundable
    , piPtc
    , piBaseFareTotal
    , piFare
    , piKind
    , piSegmentPricing
    , piPassengers
    , piFareCalculation
    , piLatestTicketingTime
    , piTax
    , piSaleTotal
    , piSaleFareTotal

    -- ** SegmentInfo
    , SegmentInfo
    , segmentInfo
    , siBookingCode
    , siCabin
    , siBookingCodeCount
    , siSubjectToGovernmentApproval
    , siKind
    , siFlight
    , siId
    , siMarriedSegmentGroup
    , siConnectionDuration
    , siDuration
    , siLeg

    -- ** SegmentPricing
    , SegmentPricing
    , segmentPricing
    , spFreeBaggageOption
    , spKind
    , spFareId
    , spSegmentId

    -- ** SliceInfo
    , SliceInfo
    , sliceInfo
    , sKind
    , sSegment
    , sDuration

    -- ** SliceInput
    , SliceInput
    , sliceInput
    , sliDestination
    , sliOrigin
    , sliMaxStops
    , sliKind
    , sliProhibitedCarrier
    , sliDate
    , sliMaxConnectionDuration
    , sliPreferredCabin
    , sliPermittedDepartureTime
    , sliPermittedCarrier
    , sliAlliance

    -- ** TaxData
    , TaxData
    , taxData
    , tdKind
    , tdName
    , tdId

    -- ** TaxInfo
    , TaxInfo
    , taxInfo
    , tiChargeType
    , tiCountry
    , tiKind
    , tiSalePrice
    , tiCode
    , tiId

    -- ** TimeOfDayRange
    , TimeOfDayRange
    , timeOfDayRange
    , todrKind
    , todrLatestTime
    , todrEarliestTime

    -- ** TripOption
    , TripOption
    , tripOption
    , toPricing
    , toKind
    , toId
    , toSlice
    , toSaleTotal

    -- ** TripOptionsRequest
    , TripOptionsRequest
    , tripOptionsRequest
    , torRefundable
    , torSaleCountry
    , torPassengers
    , torSolutions
    , torSlice
    , torMaxPrice

    -- ** TripOptionsResponse
    , TripOptionsResponse
    , tripOptionsResponse
    , torRequestId
    , torKind
    , torData
    , torTripOption

    -- ** TripsSearchRequest
    , TripsSearchRequest
    , tripsSearchRequest
    , tsrRequest

    -- ** TripsSearchResponse
    , TripsSearchResponse
    , tripsSearchResponse
    , tsrTrips
    , tsrKind
    ) where

import           Network.Google.Prelude
import           Network.Google.QPXExpress.Types

{- $resources
TODO
-}

type QPXExpress = TripsAPI

type TripsAPI = TripsSearch

-- | Returns a list of flights.
type TripsSearch =
     "qpxExpress" :>
       "v1" :>
         "trips" :>
           "search" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Text :>
                           Post '[JSON] TripsSearchResponse

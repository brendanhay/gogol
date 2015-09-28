{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.QPXExpress.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.QPXExpress.Types
    (
    -- * Service URL
      qPXExpressURL

    -- * TripOption
    , TripOption
    , tripOption
    , toPricing
    , toKind
    , toId
    , toSlice
    , toSaleTotal

    -- * CityData
    , CityData
    , cityData
    , cdCountry
    , cdKind
    , cdName
    , cdCode

    -- * BagDescriptor
    , BagDescriptor
    , bagDescriptor
    , bdKind
    , bdCommercialName
    , bdCount
    , bdDescription
    , bdSubcode

    -- * Alt
    , Alt (..)

    -- * SegmentInfo
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

    -- * TaxData
    , TaxData
    , taxData
    , tdKind
    , tdName
    , tdId

    -- * TaxInfo
    , TaxInfo
    , taxInfo
    , tiChargeType
    , tiCountry
    , tiKind
    , tiSalePrice
    , tiCode
    , tiId

    -- * TripsSearchRequest
    , TripsSearchRequest
    , tripsSearchRequest
    , tsrRequest

    -- * SliceInfo
    , SliceInfo
    , sliceInfo
    , sKind
    , sSegment
    , sDuration

    -- * FreeBaggageAllowance
    , FreeBaggageAllowance
    , freeBaggageAllowance
    , fbaKind
    , fbaPounds
    , fbaBagDescriptor
    , fbaKilosPerPiece
    , fbaKilos
    , fbaPieces

    -- * TripOptionsResponse
    , TripOptionsResponse
    , tripOptionsResponse
    , torRequestId
    , torKind
    , torData
    , torTripOption

    -- * CarrierData
    , CarrierData
    , carrierData
    , cKind
    , cName
    , cCode

    -- * TimeOfDayRange
    , TimeOfDayRange
    , timeOfDayRange
    , todrKind
    , todrLatestTime
    , todrEarliestTime

    -- * PassengerCounts
    , PassengerCounts
    , passengerCounts
    , pcSeniorCount
    , pcKind
    , pcInfantInLapCount
    , pcChildCount
    , pcInfantInSeatCount
    , pcAdultCount

    -- * LegInfo
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

    -- * Data
    , Data
    , data'
    , dCarrier
    , dKind
    , dAircraft
    , dAirport
    , dCity
    , dTax

    -- * AircraftData
    , AircraftData
    , aircraftData
    , adKind
    , adName
    , adCode

    -- * AirportData
    , AirportData
    , airportData
    , aKind
    , aName
    , aCity
    , aCode

    -- * SegmentPricing
    , SegmentPricing
    , segmentPricing
    , spFreeBaggageOption
    , spKind
    , spFareId
    , spSegmentId

    -- * FareInfo
    , FareInfo
    , fareInfo
    , fiCarrier
    , fiDestination
    , fiOrigin
    , fiPrivate
    , fiKind
    , fiBasisCode
    , fiId

    -- * SliceInput
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

    -- * TripOptionsRequest
    , TripOptionsRequest
    , tripOptionsRequest
    , torRefundable
    , torSaleCountry
    , torPassengers
    , torSolutions
    , torSlice
    , torMaxPrice

    -- * PricingInfo
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

    -- * FlightInfo
    , FlightInfo
    , flightInfo
    , fCarrier
    , fNumber

    -- * TripsSearchResponse
    , TripsSearchResponse
    , tripsSearchResponse
    , tsrTrips
    , tsrKind
    ) where

import           Network.Google.Prelude
import           Network.Google.QPXExpress.Types.Product
import           Network.Google.QPXExpress.Types.Sum

-- | URL referring to version 'v1' of the QPX Express API.
qPXExpressURL :: BaseUrl
qPXExpressURL
  = BaseUrl Https
      "https://www.googleapis.com/qpxExpress/v1/trips/"
      443

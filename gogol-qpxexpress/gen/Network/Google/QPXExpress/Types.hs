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

    -- * FreeBaggageAllowance
    , FreeBaggageAllowance
    , freeBaggageAllowance
    , fbaKind
    , fbaPounds
    , fbaBagDescriptor
    , fbaKilosPerPiece
    , fbaKilos
    , fbaPieces

    -- * CarrierData
    , CarrierData
    , carrierData
    , cdKind
    , cdName
    , cdCode

    -- * TripOptionsResponse
    , TripOptionsResponse
    , tripOptionsResponse
    , torRequestId
    , torKind
    , torData
    , torTripOption

    -- * TimeOfDayRange
    , TimeOfDayRange
    , timeOfDayRange
    , todrKind
    , todrLatestTime
    , todrEarliestTime

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
    , liDePartyureTime

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

    -- * SliceInfo
    , SliceInfo
    , sliceInfo
    , siKind
    , siSegment
    , siDuration

    -- * TripsSearchResponse
    , TripsSearchResponse
    , tripsSearchResponse
    , tsrTrips
    , tsrKind

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
    , cCountry
    , cKind
    , cName
    , cCode

    -- * BagDescriptor
    , BagDescriptor
    , bagDescriptor
    , bdKind
    , bdCommercialName
    , bdCount
    , bdDescription
    , bdSubcode

    -- * PassengerCounts
    , PassengerCounts
    , passengerCounts
    , pcSeniorCount
    , pcKind
    , pcInfantInLapCount
    , pcChildCount
    , pcInfantInSeatCount
    , pcAdultCount

    -- * SegmentInfo
    , SegmentInfo
    , segmentInfo
    , sBookingCode
    , sCabin
    , sBookingCodeCount
    , sSubjectToGovernmentApproval
    , sKind
    , sFlight
    , sId
    , sMarriedSegmentGroup
    , sConnectionDuration
    , sDuration
    , sLeg

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
    , fiCarrier
    , fiNumber

    -- * FareInfo
    , FareInfo
    , fareInfo
    , fCarrier
    , fDestination
    , fOrigin
    , fPrivate
    , fKind
    , fBasisCode
    , fId

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
    , sliPermittedDePartyureTime
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

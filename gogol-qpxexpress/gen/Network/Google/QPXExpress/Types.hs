{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.QPXExpress.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.QPXExpress.Types
    (
    -- * Service Configuration
      qPXExpressService

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
    , cdKind
    , cdName
    , cdCode

    -- * FreeBaggageAllowance
    , FreeBaggageAllowance
    , freeBaggageAllowance
    , fbaKind
    , fbaPounds
    , fbaBagDescriptor
    , fbaKilosPerPiece
    , fbaKilos
    , fbaPieces

    -- * TimeOfDayRange
    , TimeOfDayRange
    , timeOfDayRange
    , todrKind
    , todrLatestTime
    , todrEarliestTime

    -- * Data'
    , Data'
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
    , liDePartureTime

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

    -- * BagDescriptor
    , BagDescriptor
    , bagDescriptor
    , bdKind
    , bdCommercialName
    , bdCount
    , bdDescription
    , bdSubcode

    -- * CityData
    , CityData
    , cityData
    , cCountry
    , cKind
    , cName
    , cCode

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

    -- * TripsSearchRequest
    , TripsSearchRequest
    , tripsSearchRequest
    , tsrRequest

    -- * TaxInfo
    , TaxInfo
    , taxInfo
    , tiChargeType
    , tiCountry
    , tiKind
    , tiSalePrice
    , tiCode
    , tiId

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

    -- * TripOptionsRequest
    , TripOptionsRequest
    , tripOptionsRequest
    , torRefundable
    , torSaleCountry
    , torPassengers
    , torTicketingCountry
    , torSolutions
    , torSlice
    , torMaxPrice

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
    , sliPermittedDePartureTime
    , sliPermittedCarrier
    , sliAlliance
    ) where

import Network.Google.Prelude
import Network.Google.QPXExpress.Types.Product
import Network.Google.QPXExpress.Types.Sum

-- | Default request referring to version 'v1' of the QPX Express API. This contains the host and root path used as a starting point for constructing service requests.
qPXExpressService :: ServiceConfig
qPXExpressService
  = defaultService (ServiceId "qpxExpress:v1")
      "www.googleapis.com"

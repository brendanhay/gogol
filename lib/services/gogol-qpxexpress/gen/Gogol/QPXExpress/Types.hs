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
-- Module      : Gogol.QPXExpress.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.QPXExpress.Types
  ( -- * Configuration
    qPXExpressService,

    -- * Types

    -- ** AircraftData
    AircraftData (..),
    newAircraftData,

    -- ** AirportData
    AirportData (..),
    newAirportData,

    -- ** BagDescriptor
    BagDescriptor (..),
    newBagDescriptor,

    -- ** CarrierData
    CarrierData (..),
    newCarrierData,

    -- ** CityData
    CityData (..),
    newCityData,

    -- ** Data'
    Data' (..),
    newData,

    -- ** FareInfo
    FareInfo (..),
    newFareInfo,

    -- ** FlightInfo
    FlightInfo (..),
    newFlightInfo,

    -- ** FreeBaggageAllowance
    FreeBaggageAllowance (..),
    newFreeBaggageAllowance,

    -- ** LegInfo
    LegInfo (..),
    newLegInfo,

    -- ** PassengerCounts
    PassengerCounts (..),
    newPassengerCounts,

    -- ** PricingInfo
    PricingInfo (..),
    newPricingInfo,

    -- ** SegmentInfo
    SegmentInfo (..),
    newSegmentInfo,

    -- ** SegmentPricing
    SegmentPricing (..),
    newSegmentPricing,

    -- ** SliceInfo
    SliceInfo (..),
    newSliceInfo,

    -- ** SliceInput
    SliceInput (..),
    newSliceInput,

    -- ** TaxData
    TaxData (..),
    newTaxData,

    -- ** TaxInfo
    TaxInfo (..),
    newTaxInfo,

    -- ** TimeOfDayRange
    TimeOfDayRange (..),
    newTimeOfDayRange,

    -- ** TripOption
    TripOption (..),
    newTripOption,

    -- ** TripOptionsRequest
    TripOptionsRequest (..),
    newTripOptionsRequest,

    -- ** TripOptionsResponse
    TripOptionsResponse (..),
    newTripOptionsResponse,

    -- ** TripsSearchRequest
    TripsSearchRequest (..),
    newTripsSearchRequest,

    -- ** TripsSearchResponse
    TripsSearchResponse (..),
    newTripsSearchResponse,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.QPXExpress.Internal.Product
import Gogol.QPXExpress.Internal.Sum

-- | Default request referring to version @v1@ of the QPX Express API. This contains the host and root path used as a starting point for constructing service requests.
qPXExpressService :: Core.ServiceConfig
qPXExpressService =
  Core.defaultService
    (Core.ServiceId "qpxExpress:v1")
    "www.googleapis.com"

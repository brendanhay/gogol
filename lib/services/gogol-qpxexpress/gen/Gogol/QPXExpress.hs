{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.QPXExpress
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds the least expensive flights between an origin and a destination.
--
-- /See:/ <http://developers.google.com/qpx-express QPX Express API Reference>
module Gogol.QPXExpress
    (
    -- * Configuration
      qPXExpressService

    -- * Resources

    -- ** qpxExpress.trips.search
    , QPXExpressTripsSearchResource
    , newQPXExpressTripsSearch
    , QPXExpressTripsSearch

    -- * Types

    -- ** AircraftData
    , AircraftData (..)
    , newAircraftData

    -- ** AirportData
    , AirportData (..)
    , newAirportData

    -- ** BagDescriptor
    , BagDescriptor (..)
    , newBagDescriptor

    -- ** CarrierData
    , CarrierData (..)
    , newCarrierData

    -- ** CityData
    , CityData (..)
    , newCityData

    -- ** Data'
    , Data' (..)
    , newData

    -- ** FareInfo
    , FareInfo (..)
    , newFareInfo

    -- ** FlightInfo
    , FlightInfo (..)
    , newFlightInfo

    -- ** FreeBaggageAllowance
    , FreeBaggageAllowance (..)
    , newFreeBaggageAllowance

    -- ** LegInfo
    , LegInfo (..)
    , newLegInfo

    -- ** PassengerCounts
    , PassengerCounts (..)
    , newPassengerCounts

    -- ** PricingInfo
    , PricingInfo (..)
    , newPricingInfo

    -- ** SegmentInfo
    , SegmentInfo (..)
    , newSegmentInfo

    -- ** SegmentPricing
    , SegmentPricing (..)
    , newSegmentPricing

    -- ** SliceInfo
    , SliceInfo (..)
    , newSliceInfo

    -- ** SliceInput
    , SliceInput (..)
    , newSliceInput

    -- ** TaxData
    , TaxData (..)
    , newTaxData

    -- ** TaxInfo
    , TaxInfo (..)
    , newTaxInfo

    -- ** TimeOfDayRange
    , TimeOfDayRange (..)
    , newTimeOfDayRange

    -- ** TripOption
    , TripOption (..)
    , newTripOption

    -- ** TripOptionsRequest
    , TripOptionsRequest (..)
    , newTripOptionsRequest

    -- ** TripOptionsResponse
    , TripOptionsResponse (..)
    , newTripOptionsResponse

    -- ** TripsSearchRequest
    , TripsSearchRequest (..)
    , newTripsSearchRequest

    -- ** TripsSearchResponse
    , TripsSearchResponse (..)
    , newTripsSearchResponse
    ) where

import Gogol.QPXExpress.Trips.Search
import Gogol.QPXExpress.Types

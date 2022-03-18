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
-- Module      : Gogol.PlayMoviesPartner.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.PlayMoviesPartner.Types
    (
    -- * Configuration
      playMoviesPartnerService

    -- * OAuth Scopes
    , playmovies_partnerReadOnlyScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Avail
    , Avail (..)
    , newAvail

    -- ** Avail_FormatProfile
    , Avail_FormatProfile (..)

    -- ** Avail_LicenseType
    , Avail_LicenseType (..)

    -- ** Avail_WorkType
    , Avail_WorkType (..)

    -- ** ListAvailsResponse
    , ListAvailsResponse (..)
    , newListAvailsResponse

    -- ** ListOrdersResponse
    , ListOrdersResponse (..)
    , newListOrdersResponse

    -- ** ListStoreInfosResponse
    , ListStoreInfosResponse (..)
    , newListStoreInfosResponse

    -- ** Order
    , Order (..)
    , newOrder

    -- ** Order_NormalizedPriority
    , Order_NormalizedPriority (..)

    -- ** Order_Status
    , Order_Status (..)

    -- ** Order_StatusDetail
    , Order_StatusDetail (..)

    -- ** Order_Type
    , Order_Type (..)

    -- ** StoreInfo
    , StoreInfo (..)
    , newStoreInfo

    -- ** StoreInfo_Type
    , StoreInfo_Type (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PlayMoviesPartner.Internal.Product
import Gogol.PlayMoviesPartner.Internal.Sum

-- | Default request referring to version @v1@ of the Google Play Movies Partner API. This contains the host and root path used as a starting point for constructing service requests.
playMoviesPartnerService :: Core.ServiceConfig
playMoviesPartnerService
  = Core.defaultService
      (Core.ServiceId "playmoviespartner:v1")
      "playmoviespartner.googleapis.com"

-- | View the digital assets you publish on Google Play Movies and TV
playmovies_partnerReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
playmovies_partnerReadOnlyScope = Core.Proxy

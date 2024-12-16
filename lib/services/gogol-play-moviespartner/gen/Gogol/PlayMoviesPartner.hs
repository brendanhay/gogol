{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.PlayMoviesPartner
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the delivery status of titles for Google Play Movies Partners.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference>
module Gogol.PlayMoviesPartner
    (
    -- * Configuration
      playMoviesPartnerService

    -- * OAuth Scopes
    , PlaymoviesPartner'Readonly

    -- * Resources

    -- ** playmoviespartner.accounts.avails.get
    , PlayMoviesPartnerAccountsAvailsGetResource
    , PlayMoviesPartnerAccountsAvailsGet (..)
    , newPlayMoviesPartnerAccountsAvailsGet

    -- ** playmoviespartner.accounts.avails.list
    , PlayMoviesPartnerAccountsAvailsListResource
    , PlayMoviesPartnerAccountsAvailsList (..)
    , newPlayMoviesPartnerAccountsAvailsList

    -- ** playmoviespartner.accounts.orders.get
    , PlayMoviesPartnerAccountsOrdersGetResource
    , PlayMoviesPartnerAccountsOrdersGet (..)
    , newPlayMoviesPartnerAccountsOrdersGet

    -- ** playmoviespartner.accounts.orders.list
    , PlayMoviesPartnerAccountsOrdersListResource
    , PlayMoviesPartnerAccountsOrdersList (..)
    , newPlayMoviesPartnerAccountsOrdersList

    -- ** playmoviespartner.accounts.storeInfos.country.get
    , PlayMoviesPartnerAccountsStoreInfosCountryGetResource
    , PlayMoviesPartnerAccountsStoreInfosCountryGet (..)
    , newPlayMoviesPartnerAccountsStoreInfosCountryGet

    -- ** playmoviespartner.accounts.storeInfos.list
    , PlayMoviesPartnerAccountsStoreInfosListResource
    , PlayMoviesPartnerAccountsStoreInfosList (..)
    , newPlayMoviesPartnerAccountsStoreInfosList

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

import Gogol.PlayMoviesPartner.Accounts.Avails.Get
import Gogol.PlayMoviesPartner.Accounts.Avails.List
import Gogol.PlayMoviesPartner.Accounts.Orders.Get
import Gogol.PlayMoviesPartner.Accounts.Orders.List
import Gogol.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
import Gogol.PlayMoviesPartner.Accounts.StoreInfos.List
import Gogol.PlayMoviesPartner.Types

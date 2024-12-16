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
-- Module      : Gogol.PlayMoviesPartner.Accounts.Orders.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Orders owned or managed by the partner.
-- 
-- See /Authentication and Authorization rules/ and /List methods rules/ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.orders.list@.
module Gogol.PlayMoviesPartner.Accounts.Orders.List
    (
    -- * Resource
      PlayMoviesPartnerAccountsOrdersListResource

    -- ** Constructing a Request
    , PlayMoviesPartnerAccountsOrdersList (..)
    , newPlayMoviesPartnerAccountsOrdersList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PlayMoviesPartner.Types

-- | A resource alias for @playmoviespartner.accounts.orders.list@ method which the
-- 'PlayMoviesPartnerAccountsOrdersList' request conforms to.
type PlayMoviesPartnerAccountsOrdersListResource =
     "v1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Text Core.:>
           "orders" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "bearer_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "customId" Core.Text Core.:>
                       Core.QueryParam "name" Core.Text Core.:>
                         Core.QueryParam "pageSize" Core.Int32 Core.:>
                           Core.QueryParam "pageToken" Core.Text Core.:>
                             Core.QueryParam "pp" Core.Bool Core.:>
                               Core.QueryParams "pphNames" Core.Text Core.:>
                                 Core.QueryParams "status" Core.Text Core.:>
                                   Core.QueryParams "studioNames" Core.Text
                                     Core.:>
                                     Core.QueryParam "uploadType" Core.Text
                                       Core.:>
                                       Core.QueryParam "upload_protocol"
                                         Core.Text
                                         Core.:>
                                         Core.QueryParams "videoIds" Core.Text
                                           Core.:>
                                           Core.QueryParam "alt" Core.AltJSON
                                             Core.:>
                                             Core.Get '[Core.JSON]
                                               ListOrdersResponse

-- | List Orders owned or managed by the partner.
-- 
-- See /Authentication and Authorization rules/ and /List methods rules/ for more information about this method.
--
-- /See:/ 'newPlayMoviesPartnerAccountsOrdersList' smart constructor.
data PlayMoviesPartnerAccountsOrdersList = PlayMoviesPartnerAccountsOrdersList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | REQUIRED. See /General rules/ for more information about this field.
    , accountId :: Core.Text
      -- | OAuth bearer token.
    , bearerToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Filter Orders that match a case-insensitive, partner-specific custom id.
    , customId :: (Core.Maybe Core.Text)
      -- | Filter that matches Orders with a @name@, @show@, @season@ or @episode@ that contains the given case-insensitive name.
    , name :: (Core.Maybe Core.Text)
      -- | See /List methods rules/ for info about this field.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | See /List methods rules/ for info about this field.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Pretty-print response.
    , pp :: Core.Bool
      -- | See /List methods rules/ for info about this field.
    , pphNames :: (Core.Maybe [Core.Text])
      -- | Filter Orders that match one of the given status.
    , status :: (Core.Maybe [Core.Text])
      -- | See /List methods rules/ for info about this field.
    , studioNames :: (Core.Maybe [Core.Text])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Filter Orders that match any of the given @video_id@s.
    , videoIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayMoviesPartnerAccountsOrdersList' with the minimum fields required to make a request.
newPlayMoviesPartnerAccountsOrdersList 
    ::  Core.Text
       -- ^  REQUIRED. See /General rules/ for more information about this field. See 'accountId'.
    -> PlayMoviesPartnerAccountsOrdersList
newPlayMoviesPartnerAccountsOrdersList accountId =
  PlayMoviesPartnerAccountsOrdersList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , bearerToken = Core.Nothing
    , callback = Core.Nothing
    , customId = Core.Nothing
    , name = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , pp = Core.True
    , pphNames = Core.Nothing
    , status = Core.Nothing
    , studioNames = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , videoIds = Core.Nothing
    }

instance Core.GoogleRequest
           PlayMoviesPartnerAccountsOrdersList
         where
        type Rs PlayMoviesPartnerAccountsOrdersList =
             ListOrdersResponse
        type Scopes PlayMoviesPartnerAccountsOrdersList =
             '[PlaymoviesPartner'Readonly]
        requestClient PlayMoviesPartnerAccountsOrdersList{..}
          = go accountId xgafv accessToken bearerToken callback
              customId
              name
              pageSize
              pageToken
              (Core.Just pp)
              (pphNames Core.^. Core._Default)
              (status Core.^. Core._Default)
              (studioNames Core.^. Core._Default)
              uploadType
              uploadProtocol
              (videoIds Core.^. Core._Default)
              (Core.Just Core.AltJSON)
              playMoviesPartnerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           PlayMoviesPartnerAccountsOrdersListResource)
                      Core.mempty


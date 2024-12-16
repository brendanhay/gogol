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
-- Module      : Gogol.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a StoreInfo given its video id and country.
-- 
-- See /Authentication and Authorization rules/ and /Get methods rules/ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.storeInfos.country.get@.
module Gogol.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
    (
    -- * Resource
      PlayMoviesPartnerAccountsStoreInfosCountryGetResource

    -- ** Constructing a Request
    , PlayMoviesPartnerAccountsStoreInfosCountryGet (..)
    , newPlayMoviesPartnerAccountsStoreInfosCountryGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PlayMoviesPartner.Types

-- | A resource alias for @playmoviespartner.accounts.storeInfos.country.get@ method which the
-- 'PlayMoviesPartnerAccountsStoreInfosCountryGet' request conforms to.
type PlayMoviesPartnerAccountsStoreInfosCountryGetResource
     =
     "v1" Core.:>
       "accounts" Core.:>
         Core.Capture "accountId" Core.Text Core.:>
           "storeInfos" Core.:>
             Core.Capture "videoId" Core.Text Core.:>
               "country" Core.:>
                 Core.Capture "country" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "bearer_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "pp" Core.Bool Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON] StoreInfo

-- | Get a StoreInfo given its video id and country.
-- 
-- See /Authentication and Authorization rules/ and /Get methods rules/ for more information about this method.
--
-- /See:/ 'newPlayMoviesPartnerAccountsStoreInfosCountryGet' smart constructor.
data PlayMoviesPartnerAccountsStoreInfosCountryGet = PlayMoviesPartnerAccountsStoreInfosCountryGet
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
      -- | REQUIRED. Edit country.
    , country :: Core.Text
      -- | Pretty-print response.
    , pp :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | REQUIRED. Video ID.
    , videoId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayMoviesPartnerAccountsStoreInfosCountryGet' with the minimum fields required to make a request.
newPlayMoviesPartnerAccountsStoreInfosCountryGet 
    ::  Core.Text
       -- ^  REQUIRED. See /General rules/ for more information about this field. See 'accountId'.
    -> Core.Text
       -- ^  REQUIRED. Edit country. See 'country'.
    -> Core.Text
       -- ^  REQUIRED. Video ID. See 'videoId'.
    -> PlayMoviesPartnerAccountsStoreInfosCountryGet
newPlayMoviesPartnerAccountsStoreInfosCountryGet accountId country videoId =
  PlayMoviesPartnerAccountsStoreInfosCountryGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , accountId = accountId
    , bearerToken = Core.Nothing
    , callback = Core.Nothing
    , country = country
    , pp = Core.True
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , videoId = videoId
    }

instance Core.GoogleRequest
           PlayMoviesPartnerAccountsStoreInfosCountryGet
         where
        type Rs PlayMoviesPartnerAccountsStoreInfosCountryGet
             = StoreInfo
        type Scopes
               PlayMoviesPartnerAccountsStoreInfosCountryGet
             = '[PlaymoviesPartner'Readonly]
        requestClient
          PlayMoviesPartnerAccountsStoreInfosCountryGet{..}
          = go accountId videoId country xgafv accessToken
              bearerToken
              callback
              (Core.Just pp)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              playMoviesPartnerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           PlayMoviesPartnerAccountsStoreInfosCountryGetResource)
                      Core.mempty


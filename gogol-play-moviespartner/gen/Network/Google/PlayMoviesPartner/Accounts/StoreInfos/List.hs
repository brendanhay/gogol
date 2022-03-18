{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.PlayMoviesPartner.Accounts.StoreInfos.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List StoreInfos owned or managed by the partner.
--
-- See /Authentication and Authorization rules/ and /List methods rules/ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.storeInfos.list@.
module Network.Google.PlayMoviesPartner.Accounts.StoreInfos.List
  ( -- * Resource
    PlayMoviesPartnerAccountsStoreInfosListResource,

    -- ** Constructing a Request
    newPlayMoviesPartnerAccountsStoreInfosList,
    PlayMoviesPartnerAccountsStoreInfosList,
  )
where

import Network.Google.PlayMoviesPartner.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @playmoviespartner.accounts.storeInfos.list@ method which the
-- 'PlayMoviesPartnerAccountsStoreInfosList' request conforms to.
type PlayMoviesPartnerAccountsStoreInfosListResource =
  "v1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "storeInfos"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "countries" Core.Text
    Core.:> Core.QueryParams "mids" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParams "pphNames" Core.Text
    Core.:> Core.QueryParams "seasonIds" Core.Text
    Core.:> Core.QueryParams "studioNames" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "videoId" Core.Text
    Core.:> Core.QueryParams
              "videoIds"
              Core.Text
    Core.:> Core.QueryParam
              "alt"
              Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListStoreInfosResponse

-- | List StoreInfos owned or managed by the partner.
--
-- See /Authentication and Authorization rules/ and /List methods rules/ for more information about this method.
--
-- /See:/ 'newPlayMoviesPartnerAccountsStoreInfosList' smart constructor.
data PlayMoviesPartnerAccountsStoreInfosList = PlayMoviesPartnerAccountsStoreInfosList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | REQUIRED. See /General rules/ for more information about this field.
    accountId :: Core.Text,
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Filter StoreInfos that match (case-insensitive) any of the given country codes, using the \"ISO 3166-1 alpha-2\" format (examples: \"US\", \"us\", \"Us\").
    countries :: (Core.Maybe [Core.Text]),
    -- | Filter StoreInfos that match any of the given @mid@s.
    mids :: (Core.Maybe [Core.Text]),
    -- | Filter that matches StoreInfos with a @name@ or @show_name@ that contains the given case-insensitive name.
    name :: (Core.Maybe Core.Text),
    -- | See /List methods rules/ for info about this field.
    pageSize :: (Core.Maybe Core.Int32),
    -- | See /List methods rules/ for info about this field.
    pageToken :: (Core.Maybe Core.Text),
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | See /List methods rules/ for info about this field.
    pphNames :: (Core.Maybe [Core.Text]),
    -- | Filter StoreInfos that match any of the given @season_id@s.
    seasonIds :: (Core.Maybe [Core.Text]),
    -- | See /List methods rules/ for info about this field.
    studioNames :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Filter StoreInfos that match a given @video_id@. NOTE: this field is deprecated and will be removed on V2; @video_ids@ should be used instead.
    videoId :: (Core.Maybe Core.Text),
    -- | Filter StoreInfos that match any of the given @video_id@s.
    videoIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayMoviesPartnerAccountsStoreInfosList' with the minimum fields required to make a request.
newPlayMoviesPartnerAccountsStoreInfosList ::
  -- |  REQUIRED. See /General rules/ for more information about this field. See 'accountId'.
  Core.Text ->
  PlayMoviesPartnerAccountsStoreInfosList
newPlayMoviesPartnerAccountsStoreInfosList accountId =
  PlayMoviesPartnerAccountsStoreInfosList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      countries = Core.Nothing,
      mids = Core.Nothing,
      name = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      pp = Core.True,
      pphNames = Core.Nothing,
      seasonIds = Core.Nothing,
      studioNames = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      videoId = Core.Nothing,
      videoIds = Core.Nothing
    }

instance
  Core.GoogleRequest
    PlayMoviesPartnerAccountsStoreInfosList
  where
  type
    Rs PlayMoviesPartnerAccountsStoreInfosList =
      ListStoreInfosResponse
  type
    Scopes PlayMoviesPartnerAccountsStoreInfosList =
      '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
  requestClient
    PlayMoviesPartnerAccountsStoreInfosList {..} =
      go
        accountId
        xgafv
        accessToken
        bearerToken
        callback
        (countries Core.^. Core._Default)
        (mids Core.^. Core._Default)
        name
        pageSize
        pageToken
        (Core.Just pp)
        (pphNames Core.^. Core._Default)
        (seasonIds Core.^. Core._Default)
        (studioNames Core.^. Core._Default)
        uploadType
        uploadProtocol
        videoId
        (videoIds Core.^. Core._Default)
        (Core.Just Core.AltJSON)
        playMoviesPartnerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  PlayMoviesPartnerAccountsStoreInfosListResource
            )
            Core.mempty

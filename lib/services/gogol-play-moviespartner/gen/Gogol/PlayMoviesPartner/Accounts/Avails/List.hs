{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.PlayMoviesPartner.Accounts.Avails.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Avails owned or managed by the partner.
--
-- See /Authentication and Authorization rules/ and /List methods rules/ for more information about this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.avails.list@.
module Gogol.PlayMoviesPartner.Accounts.Avails.List
  ( -- * Resource
    PlayMoviesPartnerAccountsAvailsListResource,

    -- ** Constructing a Request
    PlayMoviesPartnerAccountsAvailsList (..),
    newPlayMoviesPartnerAccountsAvailsList,
  )
where

import Gogol.PlayMoviesPartner.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @playmoviespartner.accounts.avails.list@ method which the
-- 'PlayMoviesPartnerAccountsAvailsList' request conforms to.
type PlayMoviesPartnerAccountsAvailsListResource =
  "v1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "avails"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "altId" Core.Text
    Core.:> Core.QueryParams "altIds" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParams "pphNames" Core.Text
    Core.:> Core.QueryParams "studioNames" Core.Text
    Core.:> Core.QueryParams "territories" Core.Text
    Core.:> Core.QueryParam "title" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParams "videoIds" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAvailsResponse

-- | List Avails owned or managed by the partner.
--
-- See /Authentication and Authorization rules/ and /List methods rules/ for more information about this method.
--
-- /See:/ 'newPlayMoviesPartnerAccountsAvailsList' smart constructor.
data PlayMoviesPartnerAccountsAvailsList = PlayMoviesPartnerAccountsAvailsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | REQUIRED. See /General rules/ for more information about this field.
    accountId :: Core.Text,
    -- | Filter Avails that match a case-insensitive, partner-specific custom id. NOTE: this field is deprecated and will be removed on V2; @alt_ids@ should be used instead.
    altId :: (Core.Maybe Core.Text),
    -- | Filter Avails that match (case-insensitive) any of the given partner-specific custom ids.
    altIds :: (Core.Maybe [Core.Text]),
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | See /List methods rules/ for info about this field.
    pageSize :: (Core.Maybe Core.Int32),
    -- | See /List methods rules/ for info about this field.
    pageToken :: (Core.Maybe Core.Text),
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | See /List methods rules/ for info about this field.
    pphNames :: (Core.Maybe [Core.Text]),
    -- | See /List methods rules/ for info about this field.
    studioNames :: (Core.Maybe [Core.Text]),
    -- | Filter Avails that match (case-insensitive) any of the given country codes, using the \"ISO 3166-1 alpha-2\" format (examples: \"US\", \"us\", \"Us\").
    territories :: (Core.Maybe [Core.Text]),
    -- | Filter that matches Avails with a @title_internal_alias@, @series_title_internal_alias@, @season_title_internal_alias@, or @episode_title_internal_alias@ that contains the given case-insensitive title.
    title :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Filter Avails that match any of the given @video_id@s.
    videoIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayMoviesPartnerAccountsAvailsList' with the minimum fields required to make a request.
newPlayMoviesPartnerAccountsAvailsList ::
  -- |  REQUIRED. See /General rules/ for more information about this field. See 'accountId'.
  Core.Text ->
  PlayMoviesPartnerAccountsAvailsList
newPlayMoviesPartnerAccountsAvailsList accountId =
  PlayMoviesPartnerAccountsAvailsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      altId = Core.Nothing,
      altIds = Core.Nothing,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      pp = Core.True,
      pphNames = Core.Nothing,
      studioNames = Core.Nothing,
      territories = Core.Nothing,
      title = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      videoIds = Core.Nothing
    }

instance Core.GoogleRequest PlayMoviesPartnerAccountsAvailsList where
  type Rs PlayMoviesPartnerAccountsAvailsList = ListAvailsResponse
  type
    Scopes PlayMoviesPartnerAccountsAvailsList =
      '[PlaymoviesPartner'Readonly]
  requestClient PlayMoviesPartnerAccountsAvailsList {..} =
    go
      accountId
      xgafv
      accessToken
      altId
      (altIds Core.^. Core._Default)
      bearerToken
      callback
      pageSize
      pageToken
      (Core.Just pp)
      (pphNames Core.^. Core._Default)
      (studioNames Core.^. Core._Default)
      (territories Core.^. Core._Default)
      title
      uploadType
      uploadProtocol
      (videoIds Core.^. Core._Default)
      (Core.Just Core.AltJSON)
      playMoviesPartnerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlayMoviesPartnerAccountsAvailsListResource
          )
          Core.mempty

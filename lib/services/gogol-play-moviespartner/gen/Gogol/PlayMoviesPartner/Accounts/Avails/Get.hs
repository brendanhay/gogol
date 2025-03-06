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
-- Module      : Gogol.PlayMoviesPartner.Accounts.Avails.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an Avail given its avail group id and avail id.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.avails.get@.
module Gogol.PlayMoviesPartner.Accounts.Avails.Get
  ( -- * Resource
    PlayMoviesPartnerAccountsAvailsGetResource,

    -- ** Constructing a Request
    PlayMoviesPartnerAccountsAvailsGet (..),
    newPlayMoviesPartnerAccountsAvailsGet,
  )
where

import Gogol.PlayMoviesPartner.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @playmoviespartner.accounts.avails.get@ method which the
-- 'PlayMoviesPartnerAccountsAvailsGet' request conforms to.
type PlayMoviesPartnerAccountsAvailsGetResource =
  "v1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "avails"
    Core.:> Core.Capture "availId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "bearer_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pp" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Avail

-- | Get an Avail given its avail group id and avail id.
--
-- /See:/ 'newPlayMoviesPartnerAccountsAvailsGet' smart constructor.
data PlayMoviesPartnerAccountsAvailsGet = PlayMoviesPartnerAccountsAvailsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | REQUIRED. See /General rules/ for more information about this field.
    accountId :: Core.Text,
    -- | REQUIRED. Avail ID.
    availId :: Core.Text,
    -- | OAuth bearer token.
    bearerToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Pretty-print response.
    pp :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlayMoviesPartnerAccountsAvailsGet' with the minimum fields required to make a request.
newPlayMoviesPartnerAccountsAvailsGet ::
  -- |  REQUIRED. See /General rules/ for more information about this field. See 'accountId'.
  Core.Text ->
  -- |  REQUIRED. Avail ID. See 'availId'.
  Core.Text ->
  PlayMoviesPartnerAccountsAvailsGet
newPlayMoviesPartnerAccountsAvailsGet accountId availId =
  PlayMoviesPartnerAccountsAvailsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      availId = availId,
      bearerToken = Core.Nothing,
      callback = Core.Nothing,
      pp = Core.True,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PlayMoviesPartnerAccountsAvailsGet where
  type Rs PlayMoviesPartnerAccountsAvailsGet = Avail
  type
    Scopes PlayMoviesPartnerAccountsAvailsGet =
      '[PlaymoviesPartner'Readonly]
  requestClient PlayMoviesPartnerAccountsAvailsGet {..} =
    go
      accountId
      availId
      xgafv
      accessToken
      bearerToken
      callback
      (Core.Just pp)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      playMoviesPartnerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PlayMoviesPartnerAccountsAvailsGetResource
          )
          Core.mempty

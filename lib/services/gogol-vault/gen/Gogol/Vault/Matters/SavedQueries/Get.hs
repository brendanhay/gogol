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
-- Module      : Gogol.Vault.Matters.SavedQueries.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified saved query.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.savedQueries.get@.
module Gogol.Vault.Matters.SavedQueries.Get
  ( -- * Resource
    VaultMattersSavedQueriesGetResource,

    -- ** Constructing a Request
    VaultMattersSavedQueriesGet (..),
    newVaultMattersSavedQueriesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.get@ method which the
-- 'VaultMattersSavedQueriesGet' request conforms to.
type VaultMattersSavedQueriesGetResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "savedQueries"
    Core.:> Core.Capture "savedQueryId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SavedQuery

-- | Retrieves the specified saved query.
--
-- /See:/ 'newVaultMattersSavedQueriesGet' smart constructor.
data VaultMattersSavedQueriesGet = VaultMattersSavedQueriesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the matter to get the saved query from.
    matterId :: Core.Text,
    -- | ID of the saved query to retrieve.
    savedQueryId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersSavedQueriesGet' with the minimum fields required to make a request.
newVaultMattersSavedQueriesGet ::
  -- |  The ID of the matter to get the saved query from. See 'matterId'.
  Core.Text ->
  -- |  ID of the saved query to retrieve. See 'savedQueryId'.
  Core.Text ->
  VaultMattersSavedQueriesGet
newVaultMattersSavedQueriesGet matterId savedQueryId =
  VaultMattersSavedQueriesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      savedQueryId = savedQueryId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    VaultMattersSavedQueriesGet
  where
  type Rs VaultMattersSavedQueriesGet = SavedQuery
  type
    Scopes VaultMattersSavedQueriesGet =
      '[Ediscovery'FullControl, Ediscovery'Readonly]
  requestClient VaultMattersSavedQueriesGet {..} =
    go
      matterId
      savedQueryId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      vaultService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy VaultMattersSavedQueriesGetResource
          )
          Core.mempty

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
-- Module      : Gogol.Vault.Matters.SavedQueries.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a saved query.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.savedQueries.create@.
module Gogol.Vault.Matters.SavedQueries.Create
  ( -- * Resource
    VaultMattersSavedQueriesCreateResource,

    -- ** Constructing a Request
    newVaultMattersSavedQueriesCreate,
    VaultMattersSavedQueriesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.create@ method which the
-- 'VaultMattersSavedQueriesCreate' request conforms to.
type VaultMattersSavedQueriesCreateResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "savedQueries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SavedQuery
    Core.:> Core.Post '[Core.JSON] SavedQuery

-- | Creates a saved query.
--
-- /See:/ 'newVaultMattersSavedQueriesCreate' smart constructor.
data VaultMattersSavedQueriesCreate = VaultMattersSavedQueriesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the matter to create the saved query in.
    matterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SavedQuery,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersSavedQueriesCreate' with the minimum fields required to make a request.
newVaultMattersSavedQueriesCreate ::
  -- |  The ID of the matter to create the saved query in. See 'matterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SavedQuery ->
  VaultMattersSavedQueriesCreate
newVaultMattersSavedQueriesCreate matterId payload =
  VaultMattersSavedQueriesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    VaultMattersSavedQueriesCreate
  where
  type Rs VaultMattersSavedQueriesCreate = SavedQuery
  type
    Scopes VaultMattersSavedQueriesCreate =
      '["https://www.googleapis.com/auth/ediscovery"]
  requestClient VaultMattersSavedQueriesCreate {..} =
    go
      matterId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      vaultService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy VaultMattersSavedQueriesCreateResource
          )
          Core.mempty

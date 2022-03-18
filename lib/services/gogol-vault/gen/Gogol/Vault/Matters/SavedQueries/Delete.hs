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
-- Module      : Gogol.Vault.Matters.SavedQueries.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified saved query.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.savedQueries.delete@.
module Gogol.Vault.Matters.SavedQueries.Delete
  ( -- * Resource
    VaultMattersSavedQueriesDeleteResource,

    -- ** Constructing a Request
    newVaultMattersSavedQueriesDelete,
    VaultMattersSavedQueriesDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.delete@ method which the
-- 'VaultMattersSavedQueriesDelete' request conforms to.
type VaultMattersSavedQueriesDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified saved query.
--
-- /See:/ 'newVaultMattersSavedQueriesDelete' smart constructor.
data VaultMattersSavedQueriesDelete = VaultMattersSavedQueriesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the matter to delete the saved query from.
    matterId :: Core.Text,
    -- | ID of the saved query to delete.
    savedQueryId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersSavedQueriesDelete' with the minimum fields required to make a request.
newVaultMattersSavedQueriesDelete ::
  -- |  The ID of the matter to delete the saved query from. See 'matterId'.
  Core.Text ->
  -- |  ID of the saved query to delete. See 'savedQueryId'.
  Core.Text ->
  VaultMattersSavedQueriesDelete
newVaultMattersSavedQueriesDelete matterId savedQueryId =
  VaultMattersSavedQueriesDelete
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
    VaultMattersSavedQueriesDelete
  where
  type Rs VaultMattersSavedQueriesDelete = Empty
  type
    Scopes VaultMattersSavedQueriesDelete =
      '["https://www.googleapis.com/auth/ediscovery"]
  requestClient VaultMattersSavedQueriesDelete {..} =
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
              Core.Proxy VaultMattersSavedQueriesDeleteResource
          )
          Core.mempty

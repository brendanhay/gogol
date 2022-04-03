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
-- Module      : Gogol.Vault.Matters.SavedQueries.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the saved queries in a matter.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.savedQueries.list@.
module Gogol.Vault.Matters.SavedQueries.List
  ( -- * Resource
    VaultMattersSavedQueriesListResource,

    -- ** Constructing a Request
    VaultMattersSavedQueriesList (..),
    newVaultMattersSavedQueriesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.savedQueries.list@ method which the
-- 'VaultMattersSavedQueriesList' request conforms to.
type VaultMattersSavedQueriesListResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "savedQueries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSavedQueriesResponse

-- | Lists the saved queries in a matter.
--
-- /See:/ 'newVaultMattersSavedQueriesList' smart constructor.
data VaultMattersSavedQueriesList = VaultMattersSavedQueriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the matter to get the saved queries for.
    matterId :: Core.Text,
    -- | The maximum number of saved queries to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The pagination token as returned in the previous response. An empty token means start from the beginning.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersSavedQueriesList' with the minimum fields required to make a request.
newVaultMattersSavedQueriesList ::
  -- |  The ID of the matter to get the saved queries for. See 'matterId'.
  Core.Text ->
  VaultMattersSavedQueriesList
newVaultMattersSavedQueriesList matterId =
  VaultMattersSavedQueriesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    VaultMattersSavedQueriesList
  where
  type
    Rs VaultMattersSavedQueriesList =
      ListSavedQueriesResponse
  type
    Scopes VaultMattersSavedQueriesList =
      '[Ediscovery'FullControl, Ediscovery'Readonly]
  requestClient VaultMattersSavedQueriesList {..} =
    go
      matterId
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      vaultService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy VaultMattersSavedQueriesListResource
          )
          Core.mempty

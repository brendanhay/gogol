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
-- Module      : Gogol.Vault.Matters.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists matters the requestor has access to.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.list@.
module Gogol.Vault.Matters.List
  ( -- * Resource
    VaultMattersListResource,

    -- ** Constructing a Request
    VaultMattersList (..),
    newVaultMattersList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Vault.Types

-- | A resource alias for @vault.matters.list@ method which the
-- 'VaultMattersList' request conforms to.
type VaultMattersListResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "state" MattersListState
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" MattersListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListMattersResponse

-- | Lists matters the requestor has access to.
--
-- /See:/ 'newVaultMattersList' smart constructor.
data VaultMattersList = VaultMattersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The number of matters to return in the response. Default and maximum are 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The pagination token as returned in the response.
    pageToken :: (Core.Maybe Core.Text),
    -- | If set, lists only matters with the specified state. The default lists matters of all states.
    state :: (Core.Maybe MattersListState),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies how much information about the matter to return in response.
    view :: (Core.Maybe MattersListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersList' with the minimum fields required to make a request.
newVaultMattersList ::
  VaultMattersList
newVaultMattersList =
  VaultMattersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      state = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersList where
  type Rs VaultMattersList = ListMattersResponse
  type
    Scopes VaultMattersList =
      '[Ediscovery'FullControl, Ediscovery'Readonly]
  requestClient VaultMattersList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      state
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      vaultService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy VaultMattersListResource)
          Core.mempty

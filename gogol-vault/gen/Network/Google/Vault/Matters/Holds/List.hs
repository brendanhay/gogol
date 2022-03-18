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
-- Module      : Network.Google.Vault.Matters.Holds.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the holds in a matter.
--
-- /See:/ <https://developers.google.com/vault Google Vault API Reference> for @vault.matters.holds.list@.
module Network.Google.Vault.Matters.Holds.List
  ( -- * Resource
    VaultMattersHoldsListResource,

    -- ** Constructing a Request
    newVaultMattersHoldsList,
    VaultMattersHoldsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.list@ method which the
-- 'VaultMattersHoldsList' request conforms to.
type VaultMattersHoldsListResource =
  "v1"
    Core.:> "matters"
    Core.:> Core.Capture "matterId" Core.Text
    Core.:> "holds"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" MattersHoldsListView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListHoldsResponse

-- | Lists the holds in a matter.
--
-- /See:/ 'newVaultMattersHoldsList' smart constructor.
data VaultMattersHoldsList = VaultMattersHoldsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The matter ID.
    matterId :: Core.Text,
    -- | The number of holds to return in the response, between 0 and 100 inclusive. Leaving this empty, or as 0, is the same as **page_size** = 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The pagination token as returned in the response. An empty token means start from the beginning.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The amount of detail to return for a hold.
    view :: (Core.Maybe MattersHoldsListView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VaultMattersHoldsList' with the minimum fields required to make a request.
newVaultMattersHoldsList ::
  -- |  The matter ID. See 'matterId'.
  Core.Text ->
  VaultMattersHoldsList
newVaultMattersHoldsList matterId =
  VaultMattersHoldsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      matterId = matterId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest VaultMattersHoldsList where
  type Rs VaultMattersHoldsList = ListHoldsResponse
  type
    Scopes VaultMattersHoldsList =
      '[ "https://www.googleapis.com/auth/ediscovery",
         "https://www.googleapis.com/auth/ediscovery.readonly"
       ]
  requestClient VaultMattersHoldsList {..} =
    go
      matterId
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      vaultService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy VaultMattersHoldsListResource
          )
          Core.mempty

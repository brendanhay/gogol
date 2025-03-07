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
-- Module      : Gogol.AndroidManagement.Enterprises.MigrationTokens.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists migration tokens.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.migrationTokens.list@.
module Gogol.AndroidManagement.Enterprises.MigrationTokens.List
  ( -- * Resource
    AndroidManagementEnterprisesMigrationTokensListResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesMigrationTokensList (..),
    newAndroidManagementEnterprisesMigrationTokensList,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.migrationTokens.list@ method which the
-- 'AndroidManagementEnterprisesMigrationTokensList' request conforms to.
type AndroidManagementEnterprisesMigrationTokensListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "migrationTokens"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListMigrationTokensResponse

-- | Lists migration tokens.
--
-- /See:/ 'newAndroidManagementEnterprisesMigrationTokensList' smart constructor.
data AndroidManagementEnterprisesMigrationTokensList = AndroidManagementEnterprisesMigrationTokensList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of migration tokens to return. Fewer migration tokens may be returned. If unspecified, at most 100 migration tokens will be returned. The maximum value is 100; values above 100 will be coerced to 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous ListMigrationTokens call. Provide this to retrieve the subsequent page.When paginating, all other parameters provided to ListMigrationTokens must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The enterprise which the migration tokens belong to. Format: enterprises\/{enterprise}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesMigrationTokensList' with the minimum fields required to make a request.
newAndroidManagementEnterprisesMigrationTokensList ::
  -- |  Required. The enterprise which the migration tokens belong to. Format: enterprises\/{enterprise} See 'parent'.
  Core.Text ->
  AndroidManagementEnterprisesMigrationTokensList
newAndroidManagementEnterprisesMigrationTokensList parent =
  AndroidManagementEnterprisesMigrationTokensList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesMigrationTokensList
  where
  type
    Rs AndroidManagementEnterprisesMigrationTokensList =
      ListMigrationTokensResponse
  type
    Scopes AndroidManagementEnterprisesMigrationTokensList =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesMigrationTokensList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidManagementEnterprisesMigrationTokensListResource
          )
          Core.mempty

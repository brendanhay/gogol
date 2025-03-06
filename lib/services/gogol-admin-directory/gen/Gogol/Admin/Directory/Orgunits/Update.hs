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
-- Module      : Gogol.Admin.Directory.Orgunits.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an organizational unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.update@.
module Gogol.Admin.Directory.Orgunits.Update
  ( -- * Resource
    DirectoryOrgunitsUpdateResource,

    -- ** Constructing a Request
    DirectoryOrgunitsUpdate (..),
    newDirectoryOrgunitsUpdate,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.orgunits.update@ method which the
-- 'DirectoryOrgunitsUpdate' request conforms to.
type DirectoryOrgunitsUpdateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customerId" Core.Text
    Core.:> "orgunits"
    Core.:> Core.Capture "orgUnitPath" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] OrgUnit
    Core.:> Core.Put '[Core.JSON] OrgUnit

-- | Updates an organizational unit.
--
-- /See:/ 'newDirectoryOrgunitsUpdate' smart constructor.
data DirectoryOrgunitsUpdate = DirectoryOrgunitsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>.
    customerId :: Core.Text,
    -- | The full path of the organizational unit (minus the leading @\/@) or its unique ID.
    orgUnitPath :: Core.Text,
    -- | Multipart request metadata.
    payload :: OrgUnit,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryOrgunitsUpdate' with the minimum fields required to make a request.
newDirectoryOrgunitsUpdate ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  -- |  The full path of the organizational unit (minus the leading @\/@) or its unique ID. See 'orgUnitPath'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  OrgUnit ->
  DirectoryOrgunitsUpdate
newDirectoryOrgunitsUpdate customerId orgUnitPath payload =
  DirectoryOrgunitsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      orgUnitPath = orgUnitPath,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryOrgunitsUpdate where
  type Rs DirectoryOrgunitsUpdate = OrgUnit
  type Scopes DirectoryOrgunitsUpdate = '[Admin'Directory'Orgunit]
  requestClient DirectoryOrgunitsUpdate {..} =
    go
      customerId
      orgUnitPath
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryOrgunitsUpdateResource)
          Core.mempty

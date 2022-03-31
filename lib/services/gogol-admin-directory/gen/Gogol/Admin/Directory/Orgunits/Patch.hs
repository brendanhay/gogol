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
-- Module      : Gogol.Admin.Directory.Orgunits.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an organizational unit. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.patch@.
module Gogol.Admin.Directory.Orgunits.Patch
  ( -- * Resource
    DirectoryOrgunitsPatchResource,

    -- ** Constructing a Request
    newDirectoryOrgunitsPatch,
    DirectoryOrgunitsPatch,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.orgunits.patch@ method which the
-- 'DirectoryOrgunitsPatch' request conforms to.
type DirectoryOrgunitsPatchResource =
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
    Core.:> Core.Patch '[Core.JSON] OrgUnit

-- | Updates an organizational unit. This method supports </admin-sdk/directory/v1/guides/performance#patch patch semantics>
--
-- /See:/ 'newDirectoryOrgunitsPatch' smart constructor.
data DirectoryOrgunitsPatch = DirectoryOrgunitsPatch
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

-- | Creates a value of 'DirectoryOrgunitsPatch' with the minimum fields required to make a request.
newDirectoryOrgunitsPatch ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s @customerId@. The @customerId@ is also returned as part of the </admin-sdk/directory/v1/reference/users Users resource>. See 'customerId'.
  Core.Text ->
  -- |  The full path of the organizational unit (minus the leading @\/@) or its unique ID. See 'orgUnitPath'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  OrgUnit ->
  DirectoryOrgunitsPatch
newDirectoryOrgunitsPatch customerId orgUnitPath payload =
  DirectoryOrgunitsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = customerId,
      orgUnitPath = orgUnitPath,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryOrgunitsPatch where
  type Rs DirectoryOrgunitsPatch = OrgUnit
  type
    Scopes DirectoryOrgunitsPatch =
      '[Admin'Directory'Orgunit]
  requestClient DirectoryOrgunitsPatch {..} =
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
          ( Core.Proxy ::
              Core.Proxy DirectoryOrgunitsPatchResource
          )
          Core.mempty

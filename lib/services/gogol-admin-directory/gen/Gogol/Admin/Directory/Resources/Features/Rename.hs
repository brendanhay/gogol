{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Admin.Directory.Resources.Features.Rename
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Renames a feature.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.resources.features.rename@.
module Gogol.Admin.Directory.Resources.Features.Rename
  ( -- * Resource
    DirectoryResourcesFeaturesRenameResource,

    -- ** Constructing a Request
    DirectoryResourcesFeaturesRename (..),
    newDirectoryResourcesFeaturesRename,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.resources.features.rename@ method which the
-- 'DirectoryResourcesFeaturesRename' request conforms to.
type DirectoryResourcesFeaturesRenameResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customer"
    Core.:> Core.Capture "customer" Core.Text
    Core.:> "resources"
    Core.:> "features"
    Core.:> Core.Capture "oldName" Core.Text
    Core.:> "rename"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] FeatureRename
    Core.:> Core.Post '[Core.JSON] ()

-- | Renames a feature.
--
-- /See:/ 'newDirectoryResourcesFeaturesRename' smart constructor.
data DirectoryResourcesFeaturesRename = DirectoryResourcesFeaturesRename
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID.
    customer :: Core.Text,
    -- | The unique ID of the feature to rename.
    oldName :: Core.Text,
    -- | Multipart request metadata.
    payload :: FeatureRename,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryResourcesFeaturesRename' with the minimum fields required to make a request.
newDirectoryResourcesFeaturesRename ::
  -- |  The unique ID for the customer\'s Google Workspace account. As an account administrator, you can also use the @my_customer@ alias to represent your account\'s customer ID. See 'customer'.
  Core.Text ->
  -- |  The unique ID of the feature to rename. See 'oldName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  FeatureRename ->
  DirectoryResourcesFeaturesRename
newDirectoryResourcesFeaturesRename customer oldName payload =
  DirectoryResourcesFeaturesRename
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = customer,
      oldName = oldName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryResourcesFeaturesRename where
  type Rs DirectoryResourcesFeaturesRename = ()
  type
    Scopes DirectoryResourcesFeaturesRename =
      '[Admin'Directory'Resource'Calendar]
  requestClient DirectoryResourcesFeaturesRename {..} =
    go
      customer
      oldName
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
          (Core.Proxy :: Core.Proxy DirectoryResourcesFeaturesRenameResource)
          Core.mempty

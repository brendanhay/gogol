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
-- Module      : Gogol.AndroidPublisher.Edits.Commit
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits an app edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.commit@.
module Gogol.AndroidPublisher.Edits.Commit
  ( -- * Resource
    AndroidPublisherEditsCommitResource,

    -- ** Constructing a Request
    AndroidPublisherEditsCommit (..),
    newAndroidPublisherEditsCommit,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.edits.commit@ method which the
-- 'AndroidPublisherEditsCommit' request conforms to.
type AndroidPublisherEditsCommitResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.CaptureMode "editId" "commit" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "changesNotSentForReview" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] AppEdit

-- | Commits an app edit.
--
-- /See:/ 'newAndroidPublisherEditsCommit' smart constructor.
data AndroidPublisherEditsCommit = AndroidPublisherEditsCommit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Indicates that the changes in this edit will not be reviewed until they are explicitly sent for review from the Google Play Console UI. These changes will be added to any other changes that are not yet sent for review.
    changesNotSentForReview :: (Core.Maybe Core.Bool),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsCommit' with the minimum fields required to make a request.
newAndroidPublisherEditsCommit ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsCommit
newAndroidPublisherEditsCommit editId packageName =
  AndroidPublisherEditsCommit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      changesNotSentForReview = Core.Nothing,
      editId = editId,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherEditsCommit where
  type Rs AndroidPublisherEditsCommit = AppEdit
  type
    Scopes AndroidPublisherEditsCommit =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsCommit {..} =
    go
      packageName
      editId
      xgafv
      accessToken
      callback
      changesNotSentForReview
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AndroidPublisherEditsCommitResource)
          Core.mempty

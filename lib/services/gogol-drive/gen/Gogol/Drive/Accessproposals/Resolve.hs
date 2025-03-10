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
-- Module      : Gogol.Drive.Accessproposals.Resolve
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used to approve or deny an Access Proposal.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.accessproposals.resolve@.
module Gogol.Drive.Accessproposals.Resolve
  ( -- * Resource
    DriveAccessproposalsResolveResource,

    -- ** Constructing a Request
    DriveAccessproposalsResolve (..),
    newDriveAccessproposalsResolve,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.accessproposals.resolve@ method which the
-- 'DriveAccessproposalsResolve' request conforms to.
type DriveAccessproposalsResolveResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "accessproposals"
    Core.:> Core.CaptureMode "proposalId" "resolve" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ResolveAccessProposalRequest
    Core.:> Core.Post '[Core.JSON] ()

-- | Used to approve or deny an Access Proposal.
--
-- /See:/ 'newDriveAccessproposalsResolve' smart constructor.
data DriveAccessproposalsResolve = DriveAccessproposalsResolve
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The id of the item the request is on.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: ResolveAccessProposalRequest,
    -- | Required. The id of the access proposal to resolve.
    proposalId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveAccessproposalsResolve' with the minimum fields required to make a request.
newDriveAccessproposalsResolve ::
  -- |  Required. The id of the item the request is on. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ResolveAccessProposalRequest ->
  -- |  Required. The id of the access proposal to resolve. See 'proposalId'.
  Core.Text ->
  DriveAccessproposalsResolve
newDriveAccessproposalsResolve fileId payload proposalId =
  DriveAccessproposalsResolve
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fileId = fileId,
      payload = payload,
      proposalId = proposalId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveAccessproposalsResolve where
  type Rs DriveAccessproposalsResolve = ()
  type
    Scopes DriveAccessproposalsResolve =
      '[Drive'FullControl, Drive'File]
  requestClient DriveAccessproposalsResolve {..} =
    go
      fileId
      proposalId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveAccessproposalsResolveResource)
          Core.mempty

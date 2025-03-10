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
-- Module      : Gogol.FirebaseHosting.Projects.Sites.CustomDomains.Operations.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- CancelOperation is a part of the google.longrunning.Operations interface, but is not implemented for CustomDomain resources.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.projects.sites.customDomains.operations.cancel@.
module Gogol.FirebaseHosting.Projects.Sites.CustomDomains.Operations.Cancel
  ( -- * Resource
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancelResource,

    -- ** Constructing a Request
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancel (..),
    newFirebaseHostingProjectsSitesCustomDomainsOperationsCancel,
  )
where

import Gogol.FirebaseHosting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firebasehosting.projects.sites.customDomains.operations.cancel@ method which the
-- 'FirebaseHostingProjectsSitesCustomDomainsOperationsCancel' request conforms to.
type FirebaseHostingProjectsSitesCustomDomainsOperationsCancelResource =
  "v1"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelOperationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | CancelOperation is a part of the google.longrunning.Operations interface, but is not implemented for CustomDomain resources.
--
-- /See:/ 'newFirebaseHostingProjectsSitesCustomDomainsOperationsCancel' smart constructor.
data FirebaseHostingProjectsSitesCustomDomainsOperationsCancel = FirebaseHostingProjectsSitesCustomDomainsOperationsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource to be cancelled.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelOperationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FirebaseHostingProjectsSitesCustomDomainsOperationsCancel' with the minimum fields required to make a request.
newFirebaseHostingProjectsSitesCustomDomainsOperationsCancel ::
  -- |  The name of the operation resource to be cancelled. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelOperationRequest ->
  FirebaseHostingProjectsSitesCustomDomainsOperationsCancel
newFirebaseHostingProjectsSitesCustomDomainsOperationsCancel
  name
  payload =
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancel
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancel
  where
  type
    Rs FirebaseHostingProjectsSitesCustomDomainsOperationsCancel =
      Empty
  type
    Scopes
      FirebaseHostingProjectsSitesCustomDomainsOperationsCancel =
      '[CloudPlatform'FullControl, Firebase'FullControl]
  requestClient
    FirebaseHostingProjectsSitesCustomDomainsOperationsCancel {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        firebaseHostingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FirebaseHostingProjectsSitesCustomDomainsOperationsCancelResource
            )
            Core.mempty

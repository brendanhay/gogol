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
-- Module      : Gogol.BinaryAuthorization.Projects.Attestors.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists attestors. Returns @INVALID_ARGUMENT@ if the project does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.list@.
module Gogol.BinaryAuthorization.Projects.Attestors.List
  ( -- * Resource
    BinaryAuthorizationProjectsAttestorsListResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsAttestorsList (..),
    newBinaryAuthorizationProjectsAttestorsList,
  )
where

import Gogol.BinaryAuthorization.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @binaryauthorization.projects.attestors.list@ method which the
-- 'BinaryAuthorizationProjectsAttestorsList' request conforms to.
type BinaryAuthorizationProjectsAttestorsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "attestors"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAttestorsResponse

-- | Lists attestors. Returns @INVALID_ARGUMENT@ if the project does not exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsAttestorsList' smart constructor.
data BinaryAuthorizationProjectsAttestorsList = BinaryAuthorizationProjectsAttestorsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. The server may return fewer results than requested. If unspecified, the server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListAttestorsResponse.next/page/token returned from the previous call to the @ListAttestors@ method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the project associated with the attestors, in the format @projects\/*@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsAttestorsList' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsAttestorsList ::
  -- |  Required. The resource name of the project associated with the attestors, in the format @projects\/*@. See 'parent'.
  Core.Text ->
  BinaryAuthorizationProjectsAttestorsList
newBinaryAuthorizationProjectsAttestorsList parent =
  BinaryAuthorizationProjectsAttestorsList
    { xgafv = Core.Nothing,
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
    BinaryAuthorizationProjectsAttestorsList
  where
  type
    Rs BinaryAuthorizationProjectsAttestorsList =
      ListAttestorsResponse
  type
    Scopes BinaryAuthorizationProjectsAttestorsList =
      '[CloudPlatform'FullControl]
  requestClient BinaryAuthorizationProjectsAttestorsList {..} =
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
      binaryAuthorizationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BinaryAuthorizationProjectsAttestorsListResource
          )
          Core.mempty

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
-- Module      : Gogol.BinaryAuthorization.Projects.Attestors.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an attestor, and returns a copy of the new attestor. Returns NOT/FOUND if the project does not exist, INVALID/ARGUMENT if the request is malformed, ALREADY_EXISTS if the attestor already exists.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.create@.
module Gogol.BinaryAuthorization.Projects.Attestors.Create
  ( -- * Resource
    BinaryAuthorizationProjectsAttestorsCreateResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsAttestorsCreate (..),
    newBinaryAuthorizationProjectsAttestorsCreate,
  )
where

import Gogol.BinaryAuthorization.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @binaryauthorization.projects.attestors.create@ method which the
-- 'BinaryAuthorizationProjectsAttestorsCreate' request conforms to.
type BinaryAuthorizationProjectsAttestorsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "attestors"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "attestorId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Attestor
    Core.:> Core.Post '[Core.JSON] Attestor

-- | Creates an attestor, and returns a copy of the new attestor. Returns NOT/FOUND if the project does not exist, INVALID/ARGUMENT if the request is malformed, ALREADY_EXISTS if the attestor already exists.
--
-- /See:/ 'newBinaryAuthorizationProjectsAttestorsCreate' smart constructor.
data BinaryAuthorizationProjectsAttestorsCreate = BinaryAuthorizationProjectsAttestorsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The attestors ID.
    attestorId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent of this attestor.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Attestor,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsAttestorsCreate' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsAttestorsCreate ::
  -- |  Required. The parent of this attestor. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Attestor ->
  BinaryAuthorizationProjectsAttestorsCreate
newBinaryAuthorizationProjectsAttestorsCreate parent payload =
  BinaryAuthorizationProjectsAttestorsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      attestorId = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsAttestorsCreate
  where
  type
    Rs BinaryAuthorizationProjectsAttestorsCreate =
      Attestor
  type
    Scopes
      BinaryAuthorizationProjectsAttestorsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    BinaryAuthorizationProjectsAttestorsCreate {..} =
      go
        parent
        xgafv
        accessToken
        attestorId
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        binaryAuthorizationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BinaryAuthorizationProjectsAttestorsCreateResource
            )
            Core.mempty

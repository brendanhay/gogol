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
-- Module      : Gogol.BinaryAuthorization.Projects.Attestors.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.update@.
module Gogol.BinaryAuthorization.Projects.Attestors.Update
  ( -- * Resource
    BinaryAuthorizationProjectsAttestorsUpdateResource,

    -- ** Constructing a Request
    newBinaryAuthorizationProjectsAttestorsUpdate,
    BinaryAuthorizationProjectsAttestorsUpdate,
  )
where

import Gogol.BinaryAuthorization.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @binaryauthorization.projects.attestors.update@ method which the
-- 'BinaryAuthorizationProjectsAttestorsUpdate' request conforms to.
type BinaryAuthorizationProjectsAttestorsUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Attestor
    Core.:> Core.Put '[Core.JSON] Attestor

-- | Updates an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsAttestorsUpdate' smart constructor.
data BinaryAuthorizationProjectsAttestorsUpdate = BinaryAuthorizationProjectsAttestorsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name, in the format: @projects\/*\/attestors\/*@. This field may not be updated.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Attestor,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsAttestorsUpdate' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsAttestorsUpdate ::
  -- |  Required. The resource name, in the format: @projects\/*\/attestors\/*@. This field may not be updated. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Attestor ->
  BinaryAuthorizationProjectsAttestorsUpdate
newBinaryAuthorizationProjectsAttestorsUpdate name payload =
  BinaryAuthorizationProjectsAttestorsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsAttestorsUpdate
  where
  type
    Rs BinaryAuthorizationProjectsAttestorsUpdate =
      Attestor
  type
    Scopes
      BinaryAuthorizationProjectsAttestorsUpdate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    BinaryAuthorizationProjectsAttestorsUpdate {..} =
      go
        name
        xgafv
        accessToken
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
                  BinaryAuthorizationProjectsAttestorsUpdateResource
            )
            Core.mempty

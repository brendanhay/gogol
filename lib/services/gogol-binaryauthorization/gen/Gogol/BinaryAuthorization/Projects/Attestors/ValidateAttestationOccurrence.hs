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
-- Module      : Gogol.BinaryAuthorization.Projects.Attestors.ValidateAttestationOccurrence
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns whether the given @Attestation@ for the given image URI was signed by the given @Attestor@
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.validateAttestationOccurrence@.
module Gogol.BinaryAuthorization.Projects.Attestors.ValidateAttestationOccurrence
  ( -- * Resource
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrenceResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence (..),
    newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence,
  )
where

import Gogol.BinaryAuthorization.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @binaryauthorization.projects.attestors.validateAttestationOccurrence@ method which the
-- 'BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence' request conforms to.
type BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrenceResource =
  "v1"
    Core.:> Core.CaptureMode
              "attestor"
              "validateAttestationOccurrence"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ValidateAttestationOccurrenceRequest
    Core.:> Core.Post '[Core.JSON] ValidateAttestationOccurrenceResponse

-- | Returns whether the given @Attestation@ for the given image URI was signed by the given @Attestor@
--
-- /See:/ 'newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence' smart constructor.
data BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence = BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Attestor of the occurrence, in the format @projects\/*\/attestors\/*@.
    attestor :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ValidateAttestationOccurrenceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence ::
  -- |  Required. The resource name of the Attestor of the occurrence, in the format @projects\/*\/attestors\/*@. See 'attestor'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ValidateAttestationOccurrenceRequest ->
  BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence
newBinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence
  attestor
  payload =
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        attestor = attestor,
        callback = Core.Nothing,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence
  where
  type
    Rs
      BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence =
      ValidateAttestationOccurrenceResponse
  type
    Scopes
      BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence =
      '[CloudPlatform'FullControl]
  requestClient
    BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrence {..} =
      go
        attestor
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
                  BinaryAuthorizationProjectsAttestorsValidateAttestationOccurrenceResource
            )
            Core.mempty

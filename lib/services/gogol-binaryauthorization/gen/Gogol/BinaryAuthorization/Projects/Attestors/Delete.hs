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
-- Module      : Gogol.BinaryAuthorization.Projects.Attestors.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ <https://cloud.google.com/binary-authorization/ Binary Authorization API Reference> for @binaryauthorization.projects.attestors.delete@.
module Gogol.BinaryAuthorization.Projects.Attestors.Delete
  ( -- * Resource
    BinaryAuthorizationProjectsAttestorsDeleteResource,

    -- ** Constructing a Request
    BinaryAuthorizationProjectsAttestorsDelete (..),
    newBinaryAuthorizationProjectsAttestorsDelete,
  )
where

import Gogol.BinaryAuthorization.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @binaryauthorization.projects.attestors.delete@ method which the
-- 'BinaryAuthorizationProjectsAttestorsDelete' request conforms to.
type BinaryAuthorizationProjectsAttestorsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an attestor. Returns NOT_FOUND if the attestor does not exist.
--
-- /See:/ 'newBinaryAuthorizationProjectsAttestorsDelete' smart constructor.
data BinaryAuthorizationProjectsAttestorsDelete = BinaryAuthorizationProjectsAttestorsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the attestors to delete, in the format @projects\/*\/attestors\/*@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryAuthorizationProjectsAttestorsDelete' with the minimum fields required to make a request.
newBinaryAuthorizationProjectsAttestorsDelete ::
  -- |  Required. The name of the attestors to delete, in the format @projects\/*\/attestors\/*@. See 'name'.
  Core.Text ->
  BinaryAuthorizationProjectsAttestorsDelete
newBinaryAuthorizationProjectsAttestorsDelete name =
  BinaryAuthorizationProjectsAttestorsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BinaryAuthorizationProjectsAttestorsDelete
  where
  type
    Rs BinaryAuthorizationProjectsAttestorsDelete =
      Empty
  type
    Scopes
      BinaryAuthorizationProjectsAttestorsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    BinaryAuthorizationProjectsAttestorsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        binaryAuthorizationService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BinaryAuthorizationProjectsAttestorsDeleteResource
            )
            Core.mempty

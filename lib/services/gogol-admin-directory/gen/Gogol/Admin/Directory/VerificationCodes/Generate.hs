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
-- Module      : Gogol.Admin.Directory.VerificationCodes.Generate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates new backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.verificationCodes.generate@.
module Gogol.Admin.Directory.VerificationCodes.Generate
  ( -- * Resource
    DirectoryVerificationCodesGenerateResource,

    -- ** Constructing a Request
    DirectoryVerificationCodesGenerate (..),
    newDirectoryVerificationCodesGenerate,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.verificationCodes.generate@ method which the
-- 'DirectoryVerificationCodesGenerate' request conforms to.
type DirectoryVerificationCodesGenerateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "verificationCodes"
    Core.:> "generate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Generates new backup verification codes for the user.
--
-- /See:/ 'newDirectoryVerificationCodesGenerate' smart constructor.
data DirectoryVerificationCodesGenerate = DirectoryVerificationCodesGenerate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Email or immutable ID of the user
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryVerificationCodesGenerate' with the minimum fields required to make a request.
newDirectoryVerificationCodesGenerate ::
  -- |  Email or immutable ID of the user See 'userKey'.
  Core.Text ->
  DirectoryVerificationCodesGenerate
newDirectoryVerificationCodesGenerate userKey =
  DirectoryVerificationCodesGenerate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance
  Core.GoogleRequest
    DirectoryVerificationCodesGenerate
  where
  type Rs DirectoryVerificationCodesGenerate = ()
  type
    Scopes DirectoryVerificationCodesGenerate =
      '[Admin'Directory'User'Security]
  requestClient DirectoryVerificationCodesGenerate {..} =
    go
      userKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DirectoryVerificationCodesGenerateResource
          )
          Core.mempty

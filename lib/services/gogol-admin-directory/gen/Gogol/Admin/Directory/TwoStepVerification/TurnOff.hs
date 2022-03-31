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
-- Module      : Gogol.Admin.Directory.TwoStepVerification.TurnOff
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Turns off 2-Step Verification for user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.twoStepVerification.turnOff@.
module Gogol.Admin.Directory.TwoStepVerification.TurnOff
  ( -- * Resource
    DirectoryTwoStepVerificationTurnOffResource,

    -- ** Constructing a Request
    newDirectoryTwoStepVerificationTurnOff,
    DirectoryTwoStepVerificationTurnOff,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @directory.twoStepVerification.turnOff@ method which the
-- 'DirectoryTwoStepVerificationTurnOff' request conforms to.
type DirectoryTwoStepVerificationTurnOffResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userKey" Core.Text
    Core.:> "twoStepVerification"
    Core.:> "turnOff"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Turns off 2-Step Verification for user.
--
-- /See:/ 'newDirectoryTwoStepVerificationTurnOff' smart constructor.
data DirectoryTwoStepVerificationTurnOff = DirectoryTwoStepVerificationTurnOff
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
    -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    userKey :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryTwoStepVerificationTurnOff' with the minimum fields required to make a request.
newDirectoryTwoStepVerificationTurnOff ::
  -- |  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
  Core.Text ->
  DirectoryTwoStepVerificationTurnOff
newDirectoryTwoStepVerificationTurnOff userKey =
  DirectoryTwoStepVerificationTurnOff
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userKey = userKey
    }

instance
  Core.GoogleRequest
    DirectoryTwoStepVerificationTurnOff
  where
  type Rs DirectoryTwoStepVerificationTurnOff = ()
  type
    Scopes DirectoryTwoStepVerificationTurnOff =
      '[Admin'Directory'User'Security]
  requestClient DirectoryTwoStepVerificationTurnOff {..} =
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
                DirectoryTwoStepVerificationTurnOffResource
          )
          Core.mempty

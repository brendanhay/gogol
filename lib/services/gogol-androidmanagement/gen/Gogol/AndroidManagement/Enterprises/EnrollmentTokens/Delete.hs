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
-- Module      : Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an enrollment token. This operation invalidates the token, preventing its future use.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.enrollmentTokens.delete@.
module Gogol.AndroidManagement.Enterprises.EnrollmentTokens.Delete
  ( -- * Resource
    AndroidManagementEnterprisesEnrollmentTokensDeleteResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesEnrollmentTokensDelete,
    AndroidManagementEnterprisesEnrollmentTokensDelete,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.enrollmentTokens.delete@ method which the
-- 'AndroidManagementEnterprisesEnrollmentTokensDelete' request conforms to.
type AndroidManagementEnterprisesEnrollmentTokensDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an enrollment token. This operation invalidates the token, preventing its future use.
--
-- /See:/ 'newAndroidManagementEnterprisesEnrollmentTokensDelete' smart constructor.
data AndroidManagementEnterprisesEnrollmentTokensDelete = AndroidManagementEnterprisesEnrollmentTokensDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the enrollment token in the form enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesEnrollmentTokensDelete' with the minimum fields required to make a request.
newAndroidManagementEnterprisesEnrollmentTokensDelete ::
  -- |  The name of the enrollment token in the form enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}. See 'name'.
  Core.Text ->
  AndroidManagementEnterprisesEnrollmentTokensDelete
newAndroidManagementEnterprisesEnrollmentTokensDelete name =
  AndroidManagementEnterprisesEnrollmentTokensDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesEnrollmentTokensDelete
  where
  type
    Rs
      AndroidManagementEnterprisesEnrollmentTokensDelete =
      Empty
  type
    Scopes
      AndroidManagementEnterprisesEnrollmentTokensDelete =
      '[Androidmanagement'FullControl]
  requestClient
    AndroidManagementEnterprisesEnrollmentTokensDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesEnrollmentTokensDeleteResource
            )
            Core.mempty

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
-- Module      : Gogol.AndroidManagement.Enterprises.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enterprise. This is the last step in the enterprise signup flow.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.create@.
module Gogol.AndroidManagement.Enterprises.Create
  ( -- * Resource
    AndroidManagementEnterprisesCreateResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesCreate,
    AndroidManagementEnterprisesCreate,
  )
where

import Gogol.AndroidManagement.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.create@ method which the
-- 'AndroidManagementEnterprisesCreate' request conforms to.
type AndroidManagementEnterprisesCreateResource =
  "v1"
    Core.:> "enterprises"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "agreementAccepted" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "enterpriseToken" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "signupUrlName" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Enterprise
    Core.:> Core.Post '[Core.JSON] Enterprise

-- | Creates an enterprise. This is the last step in the enterprise signup flow.
--
-- /See:/ 'newAndroidManagementEnterprisesCreate' smart constructor.
data AndroidManagementEnterprisesCreate = AndroidManagementEnterprisesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether the enterprise admin has seen and agreed to the managed Google Play Agreement (https:\/\/www.android.com\/enterprise\/terms\/). Always set this to true when creating an EMM-managed enterprise. Do not create the enterprise until the admin has viewed and accepted the agreement.
    agreementAccepted :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The enterprise token appended to the callback URL. Only set this when creating a customer-managed enterprise.
    enterpriseToken :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Enterprise,
    -- | The ID of the Google Cloud Platform project which will own the enterprise.
    projectId :: (Core.Maybe Core.Text),
    -- | The name of the SignupUrl used to sign up for the enterprise. Only set this when creating a customer-managed enterprise.
    signupUrlName :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesCreate' with the minimum fields required to make a request.
newAndroidManagementEnterprisesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Enterprise ->
  AndroidManagementEnterprisesCreate
newAndroidManagementEnterprisesCreate payload =
  AndroidManagementEnterprisesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      agreementAccepted = Core.Nothing,
      callback = Core.Nothing,
      enterpriseToken = Core.Nothing,
      payload = payload,
      projectId = Core.Nothing,
      signupUrlName = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidManagementEnterprisesCreate
  where
  type
    Rs AndroidManagementEnterprisesCreate =
      Enterprise
  type
    Scopes AndroidManagementEnterprisesCreate =
      '[Androidmanagement'FullControl]
  requestClient AndroidManagementEnterprisesCreate {..} =
    go
      xgafv
      accessToken
      agreementAccepted
      callback
      enterpriseToken
      projectId
      signupUrlName
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidManagementService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AndroidManagementEnterprisesCreateResource
          )
          Core.mempty

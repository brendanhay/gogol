{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidManagement.SignupUrls.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enterprise signup URL.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.signupUrls.create@.
module Gogol.AndroidManagement.SignupUrls.Create
    (
    -- * Resource
      AndroidManagementSignupUrlsCreateResource

    -- ** Constructing a Request
    , AndroidManagementSignupUrlsCreate (..)
    , newAndroidManagementSignupUrlsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidManagement.Types

-- | A resource alias for @androidmanagement.signupUrls.create@ method which the
-- 'AndroidManagementSignupUrlsCreate' request conforms to.
type AndroidManagementSignupUrlsCreateResource =
     "v1" Core.:>
       "signupUrls" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "adminEmail" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "callbackUrl" Core.Text Core.:>
                   Core.QueryParam "projectId" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON] SignupUrl

-- | Creates an enterprise signup URL.
--
-- /See:/ 'newAndroidManagementSignupUrlsCreate' smart constructor.
data AndroidManagementSignupUrlsCreate = AndroidManagementSignupUrlsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Optional. Email address used to prefill the admin field of the enterprise signup form. This value is a hint only and can be altered by the user.
    , adminEmail :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The callback URL that the admin will be redirected to after successfully creating an enterprise. Before redirecting there the system will add a query parameter to this URL named enterpriseToken which will contain an opaque token to be used for the create enterprise request. The URL will be parsed then reformatted in order to add the enterpriseToken parameter, so there may be some minor formatting changes.
    , callbackUrl :: (Core.Maybe Core.Text)
      -- | The ID of the Google Cloud Platform project which will own the enterprise.
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementSignupUrlsCreate' with the minimum fields required to make a request.
newAndroidManagementSignupUrlsCreate 
    ::  AndroidManagementSignupUrlsCreate
newAndroidManagementSignupUrlsCreate =
  AndroidManagementSignupUrlsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , adminEmail = Core.Nothing
    , callback = Core.Nothing
    , callbackUrl = Core.Nothing
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidManagementSignupUrlsCreate
         where
        type Rs AndroidManagementSignupUrlsCreate = SignupUrl
        type Scopes AndroidManagementSignupUrlsCreate =
             '[Androidmanagement'FullControl]
        requestClient AndroidManagementSignupUrlsCreate{..}
          = go xgafv accessToken adminEmail callback
              callbackUrl
              projectId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidManagementService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AndroidManagementSignupUrlsCreateResource)
                      Core.mempty


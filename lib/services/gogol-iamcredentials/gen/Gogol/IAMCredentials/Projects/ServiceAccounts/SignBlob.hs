{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.IAMCredentials.Projects.ServiceAccounts.SignBlob
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a blob using a service account\'s system-managed private key.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.signBlob@.
module Gogol.IAMCredentials.Projects.ServiceAccounts.SignBlob
    (
    -- * Resource
      IAMCredentialsProjectsServiceAccountsSignBlobResource

    -- ** Constructing a Request
    , newIAMCredentialsProjectsServiceAccountsSignBlob
    , IAMCredentialsProjectsServiceAccountsSignBlob
    ) where

import qualified Gogol.Prelude as Core
import Gogol.IAMCredentials.Types

-- | A resource alias for @iamcredentials.projects.serviceAccounts.signBlob@ method which the
-- 'IAMCredentialsProjectsServiceAccountsSignBlob' request conforms to.
type IAMCredentialsProjectsServiceAccountsSignBlobResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "signBlob" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SignBlobRequest Core.:>
                       Core.Post '[Core.JSON] SignBlobResponse

-- | Signs a blob using a service account\'s system-managed private key.
--
-- /See:/ 'newIAMCredentialsProjectsServiceAccountsSignBlob' smart constructor.
data IAMCredentialsProjectsServiceAccountsSignBlob = IAMCredentialsProjectsServiceAccountsSignBlob
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the service account for which the credentials are requested, in the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: SignBlobRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IAMCredentialsProjectsServiceAccountsSignBlob' with the minimum fields required to make a request.
newIAMCredentialsProjectsServiceAccountsSignBlob 
    ::  Core.Text
       -- ^  Required. The resource name of the service account for which the credentials are requested, in the following format: @projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}@. The @-@ wildcard character is required; replacing it with a project ID is invalid. See 'name'.
    -> SignBlobRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> IAMCredentialsProjectsServiceAccountsSignBlob
newIAMCredentialsProjectsServiceAccountsSignBlob name payload =
  IAMCredentialsProjectsServiceAccountsSignBlob
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           IAMCredentialsProjectsServiceAccountsSignBlob
         where
        type Rs IAMCredentialsProjectsServiceAccountsSignBlob
             = SignBlobResponse
        type Scopes
               IAMCredentialsProjectsServiceAccountsSignBlob
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          IAMCredentialsProjectsServiceAccountsSignBlob{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              iAMCredentialsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           IAMCredentialsProjectsServiceAccountsSignBlobResource)
                      Core.mempty


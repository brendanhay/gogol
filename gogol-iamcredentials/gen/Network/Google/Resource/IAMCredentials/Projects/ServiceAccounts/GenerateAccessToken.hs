{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an OAuth 2.0 access token for a service account.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.generateAccessToken@.
module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateAccessToken
    (
    -- * REST Resource
      ProjectsServiceAccountsGenerateAccessTokenResource

    -- * Creating a Request
    , projectsServiceAccountsGenerateAccessToken
    , ProjectsServiceAccountsGenerateAccessToken

    -- * Request Lenses
    , psagatXgafv
    , psagatUploadProtocol
    , psagatAccessToken
    , psagatUploadType
    , psagatPayload
    , psagatName
    , psagatCallback
    ) where

import           Network.Google.IAMCredentials.Types
import           Network.Google.Prelude

-- | A resource alias for @iamcredentials.projects.serviceAccounts.generateAccessToken@ method which the
-- 'ProjectsServiceAccountsGenerateAccessToken' request conforms to.
type ProjectsServiceAccountsGenerateAccessTokenResource
     =
     "v1" :>
       CaptureMode "name" "generateAccessToken" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GenerateAccessTokenRequest :>
                       Post '[JSON] GenerateAccessTokenResponse

-- | Generates an OAuth 2.0 access token for a service account.
--
-- /See:/ 'projectsServiceAccountsGenerateAccessToken' smart constructor.
data ProjectsServiceAccountsGenerateAccessToken =
  ProjectsServiceAccountsGenerateAccessToken'
    { _psagatXgafv          :: !(Maybe Xgafv)
    , _psagatUploadProtocol :: !(Maybe Text)
    , _psagatAccessToken    :: !(Maybe Text)
    , _psagatUploadType     :: !(Maybe Text)
    , _psagatPayload        :: !GenerateAccessTokenRequest
    , _psagatName           :: !Text
    , _psagatCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsGenerateAccessToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagatXgafv'
--
-- * 'psagatUploadProtocol'
--
-- * 'psagatAccessToken'
--
-- * 'psagatUploadType'
--
-- * 'psagatPayload'
--
-- * 'psagatName'
--
-- * 'psagatCallback'
projectsServiceAccountsGenerateAccessToken
    :: GenerateAccessTokenRequest -- ^ 'psagatPayload'
    -> Text -- ^ 'psagatName'
    -> ProjectsServiceAccountsGenerateAccessToken
projectsServiceAccountsGenerateAccessToken pPsagatPayload_ pPsagatName_ =
  ProjectsServiceAccountsGenerateAccessToken'
    { _psagatXgafv = Nothing
    , _psagatUploadProtocol = Nothing
    , _psagatAccessToken = Nothing
    , _psagatUploadType = Nothing
    , _psagatPayload = pPsagatPayload_
    , _psagatName = pPsagatName_
    , _psagatCallback = Nothing
    }


-- | V1 error format.
psagatXgafv :: Lens' ProjectsServiceAccountsGenerateAccessToken (Maybe Xgafv)
psagatXgafv
  = lens _psagatXgafv (\ s a -> s{_psagatXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psagatUploadProtocol :: Lens' ProjectsServiceAccountsGenerateAccessToken (Maybe Text)
psagatUploadProtocol
  = lens _psagatUploadProtocol
      (\ s a -> s{_psagatUploadProtocol = a})

-- | OAuth access token.
psagatAccessToken :: Lens' ProjectsServiceAccountsGenerateAccessToken (Maybe Text)
psagatAccessToken
  = lens _psagatAccessToken
      (\ s a -> s{_psagatAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psagatUploadType :: Lens' ProjectsServiceAccountsGenerateAccessToken (Maybe Text)
psagatUploadType
  = lens _psagatUploadType
      (\ s a -> s{_psagatUploadType = a})

-- | Multipart request metadata.
psagatPayload :: Lens' ProjectsServiceAccountsGenerateAccessToken GenerateAccessTokenRequest
psagatPayload
  = lens _psagatPayload
      (\ s a -> s{_psagatPayload = a})

-- | The resource name of the service account for which the credentials are
-- requested, in the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`.
psagatName :: Lens' ProjectsServiceAccountsGenerateAccessToken Text
psagatName
  = lens _psagatName (\ s a -> s{_psagatName = a})

-- | JSONP
psagatCallback :: Lens' ProjectsServiceAccountsGenerateAccessToken (Maybe Text)
psagatCallback
  = lens _psagatCallback
      (\ s a -> s{_psagatCallback = a})

instance GoogleRequest
           ProjectsServiceAccountsGenerateAccessToken
         where
        type Rs ProjectsServiceAccountsGenerateAccessToken =
             GenerateAccessTokenResponse
        type Scopes
               ProjectsServiceAccountsGenerateAccessToken
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsServiceAccountsGenerateAccessToken'{..}
          = go _psagatName _psagatXgafv _psagatUploadProtocol
              _psagatAccessToken
              _psagatUploadType
              _psagatCallback
              (Just AltJSON)
              _psagatPayload
              iAMCredentialsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsServiceAccountsGenerateAccessTokenResource)
                      mempty

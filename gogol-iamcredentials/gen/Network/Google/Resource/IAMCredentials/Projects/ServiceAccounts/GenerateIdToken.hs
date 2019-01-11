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
-- Module      : Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateIdToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an OpenID Connect ID token for a service account.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.generateIdToken@.
module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.GenerateIdToken
    (
    -- * REST Resource
      ProjectsServiceAccountsGenerateIdTokenResource

    -- * Creating a Request
    , projectsServiceAccountsGenerateIdToken
    , ProjectsServiceAccountsGenerateIdToken

    -- * Request Lenses
    , psagitXgafv
    , psagitUploadProtocol
    , psagitAccessToken
    , psagitUploadType
    , psagitPayload
    , psagitName
    , psagitCallback
    ) where

import           Network.Google.IAMCredentials.Types
import           Network.Google.Prelude

-- | A resource alias for @iamcredentials.projects.serviceAccounts.generateIdToken@ method which the
-- 'ProjectsServiceAccountsGenerateIdToken' request conforms to.
type ProjectsServiceAccountsGenerateIdTokenResource =
     "v1" :>
       CaptureMode "name" "generateIdToken" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GenerateIdTokenRequest :>
                       Post '[JSON] GenerateIdTokenResponse

-- | Generates an OpenID Connect ID token for a service account.
--
-- /See:/ 'projectsServiceAccountsGenerateIdToken' smart constructor.
data ProjectsServiceAccountsGenerateIdToken = ProjectsServiceAccountsGenerateIdToken'
    { _psagitXgafv          :: !(Maybe Xgafv)
    , _psagitUploadProtocol :: !(Maybe Text)
    , _psagitAccessToken    :: !(Maybe Text)
    , _psagitUploadType     :: !(Maybe Text)
    , _psagitPayload        :: !GenerateIdTokenRequest
    , _psagitName           :: !Text
    , _psagitCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsGenerateIdToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagitXgafv'
--
-- * 'psagitUploadProtocol'
--
-- * 'psagitAccessToken'
--
-- * 'psagitUploadType'
--
-- * 'psagitPayload'
--
-- * 'psagitName'
--
-- * 'psagitCallback'
projectsServiceAccountsGenerateIdToken
    :: GenerateIdTokenRequest -- ^ 'psagitPayload'
    -> Text -- ^ 'psagitName'
    -> ProjectsServiceAccountsGenerateIdToken
projectsServiceAccountsGenerateIdToken pPsagitPayload_ pPsagitName_ =
    ProjectsServiceAccountsGenerateIdToken'
    { _psagitXgafv = Nothing
    , _psagitUploadProtocol = Nothing
    , _psagitAccessToken = Nothing
    , _psagitUploadType = Nothing
    , _psagitPayload = pPsagitPayload_
    , _psagitName = pPsagitName_
    , _psagitCallback = Nothing
    }

-- | V1 error format.
psagitXgafv :: Lens' ProjectsServiceAccountsGenerateIdToken (Maybe Xgafv)
psagitXgafv
  = lens _psagitXgafv (\ s a -> s{_psagitXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psagitUploadProtocol :: Lens' ProjectsServiceAccountsGenerateIdToken (Maybe Text)
psagitUploadProtocol
  = lens _psagitUploadProtocol
      (\ s a -> s{_psagitUploadProtocol = a})

-- | OAuth access token.
psagitAccessToken :: Lens' ProjectsServiceAccountsGenerateIdToken (Maybe Text)
psagitAccessToken
  = lens _psagitAccessToken
      (\ s a -> s{_psagitAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psagitUploadType :: Lens' ProjectsServiceAccountsGenerateIdToken (Maybe Text)
psagitUploadType
  = lens _psagitUploadType
      (\ s a -> s{_psagitUploadType = a})

-- | Multipart request metadata.
psagitPayload :: Lens' ProjectsServiceAccountsGenerateIdToken GenerateIdTokenRequest
psagitPayload
  = lens _psagitPayload
      (\ s a -> s{_psagitPayload = a})

-- | The resource name of the service account for which the credentials are
-- requested, in the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`.
psagitName :: Lens' ProjectsServiceAccountsGenerateIdToken Text
psagitName
  = lens _psagitName (\ s a -> s{_psagitName = a})

-- | JSONP
psagitCallback :: Lens' ProjectsServiceAccountsGenerateIdToken (Maybe Text)
psagitCallback
  = lens _psagitCallback
      (\ s a -> s{_psagitCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsGenerateIdToken where
        type Rs ProjectsServiceAccountsGenerateIdToken =
             GenerateIdTokenResponse
        type Scopes ProjectsServiceAccountsGenerateIdToken =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsServiceAccountsGenerateIdToken'{..}
          = go _psagitName _psagitXgafv _psagitUploadProtocol
              _psagitAccessToken
              _psagitUploadType
              _psagitCallback
              (Just AltJSON)
              _psagitPayload
              iAMCredentialsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsGenerateIdTokenResource)
                      mempty

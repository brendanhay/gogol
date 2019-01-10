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
-- Module      : Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignBlob
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a blob using a service account\'s system-managed private key.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.signBlob@.
module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignBlob
    (
    -- * REST Resource
      ProjectsServiceAccountsSignBlobResource

    -- * Creating a Request
    , projectsServiceAccountsSignBlob
    , ProjectsServiceAccountsSignBlob

    -- * Request Lenses
    , psasbXgafv
    , psasbUploadProtocol
    , psasbAccessToken
    , psasbUploadType
    , psasbPayload
    , psasbName
    , psasbCallback
    ) where

import           Network.Google.IAMCredentials.Types
import           Network.Google.Prelude

-- | A resource alias for @iamcredentials.projects.serviceAccounts.signBlob@ method which the
-- 'ProjectsServiceAccountsSignBlob' request conforms to.
type ProjectsServiceAccountsSignBlobResource =
     "v1" :>
       CaptureMode "name" "signBlob" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SignBlobRequest :>
                       Post '[JSON] SignBlobResponse

-- | Signs a blob using a service account\'s system-managed private key.
--
-- /See:/ 'projectsServiceAccountsSignBlob' smart constructor.
data ProjectsServiceAccountsSignBlob = ProjectsServiceAccountsSignBlob'
    { _psasbXgafv          :: !(Maybe Xgafv)
    , _psasbUploadProtocol :: !(Maybe Text)
    , _psasbAccessToken    :: !(Maybe Text)
    , _psasbUploadType     :: !(Maybe Text)
    , _psasbPayload        :: !SignBlobRequest
    , _psasbName           :: !Text
    , _psasbCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsSignBlob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psasbXgafv'
--
-- * 'psasbUploadProtocol'
--
-- * 'psasbAccessToken'
--
-- * 'psasbUploadType'
--
-- * 'psasbPayload'
--
-- * 'psasbName'
--
-- * 'psasbCallback'
projectsServiceAccountsSignBlob
    :: SignBlobRequest -- ^ 'psasbPayload'
    -> Text -- ^ 'psasbName'
    -> ProjectsServiceAccountsSignBlob
projectsServiceAccountsSignBlob pPsasbPayload_ pPsasbName_ =
    ProjectsServiceAccountsSignBlob'
    { _psasbXgafv = Nothing
    , _psasbUploadProtocol = Nothing
    , _psasbAccessToken = Nothing
    , _psasbUploadType = Nothing
    , _psasbPayload = pPsasbPayload_
    , _psasbName = pPsasbName_
    , _psasbCallback = Nothing
    }

-- | V1 error format.
psasbXgafv :: Lens' ProjectsServiceAccountsSignBlob (Maybe Xgafv)
psasbXgafv
  = lens _psasbXgafv (\ s a -> s{_psasbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psasbUploadProtocol :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbUploadProtocol
  = lens _psasbUploadProtocol
      (\ s a -> s{_psasbUploadProtocol = a})

-- | OAuth access token.
psasbAccessToken :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbAccessToken
  = lens _psasbAccessToken
      (\ s a -> s{_psasbAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psasbUploadType :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbUploadType
  = lens _psasbUploadType
      (\ s a -> s{_psasbUploadType = a})

-- | Multipart request metadata.
psasbPayload :: Lens' ProjectsServiceAccountsSignBlob SignBlobRequest
psasbPayload
  = lens _psasbPayload (\ s a -> s{_psasbPayload = a})

-- | The resource name of the service account for which the credentials are
-- requested, in the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`.
psasbName :: Lens' ProjectsServiceAccountsSignBlob Text
psasbName
  = lens _psasbName (\ s a -> s{_psasbName = a})

-- | JSONP
psasbCallback :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbCallback
  = lens _psasbCallback
      (\ s a -> s{_psasbCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsSignBlob where
        type Rs ProjectsServiceAccountsSignBlob =
             SignBlobResponse
        type Scopes ProjectsServiceAccountsSignBlob =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsSignBlob'{..}
          = go _psasbName _psasbXgafv _psasbUploadProtocol
              _psasbAccessToken
              _psasbUploadType
              _psasbCallback
              (Just AltJSON)
              _psasbPayload
              iAMCredentialsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsSignBlobResource)
                      mempty

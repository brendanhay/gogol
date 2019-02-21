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
-- Module      : Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignJwt
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a JWT using a service account\'s system-managed private key.
--
-- /See:/ <https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials IAM Service Account Credentials API Reference> for @iamcredentials.projects.serviceAccounts.signJwt@.
module Network.Google.Resource.IAMCredentials.Projects.ServiceAccounts.SignJwt
    (
    -- * REST Resource
      ProjectsServiceAccountsSignJwtResource

    -- * Creating a Request
    , projectsServiceAccountsSignJwt
    , ProjectsServiceAccountsSignJwt

    -- * Request Lenses
    , psasjXgafv
    , psasjUploadProtocol
    , psasjAccessToken
    , psasjUploadType
    , psasjPayload
    , psasjName
    , psasjCallback
    ) where

import           Network.Google.IAMCredentials.Types
import           Network.Google.Prelude

-- | A resource alias for @iamcredentials.projects.serviceAccounts.signJwt@ method which the
-- 'ProjectsServiceAccountsSignJwt' request conforms to.
type ProjectsServiceAccountsSignJwtResource =
     "v1" :>
       CaptureMode "name" "signJwt" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SignJwtRequest :>
                       Post '[JSON] SignJwtResponse

-- | Signs a JWT using a service account\'s system-managed private key.
--
-- /See:/ 'projectsServiceAccountsSignJwt' smart constructor.
data ProjectsServiceAccountsSignJwt =
  ProjectsServiceAccountsSignJwt'
    { _psasjXgafv          :: !(Maybe Xgafv)
    , _psasjUploadProtocol :: !(Maybe Text)
    , _psasjAccessToken    :: !(Maybe Text)
    , _psasjUploadType     :: !(Maybe Text)
    , _psasjPayload        :: !SignJwtRequest
    , _psasjName           :: !Text
    , _psasjCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsSignJwt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psasjXgafv'
--
-- * 'psasjUploadProtocol'
--
-- * 'psasjAccessToken'
--
-- * 'psasjUploadType'
--
-- * 'psasjPayload'
--
-- * 'psasjName'
--
-- * 'psasjCallback'
projectsServiceAccountsSignJwt
    :: SignJwtRequest -- ^ 'psasjPayload'
    -> Text -- ^ 'psasjName'
    -> ProjectsServiceAccountsSignJwt
projectsServiceAccountsSignJwt pPsasjPayload_ pPsasjName_ =
  ProjectsServiceAccountsSignJwt'
    { _psasjXgafv = Nothing
    , _psasjUploadProtocol = Nothing
    , _psasjAccessToken = Nothing
    , _psasjUploadType = Nothing
    , _psasjPayload = pPsasjPayload_
    , _psasjName = pPsasjName_
    , _psasjCallback = Nothing
    }


-- | V1 error format.
psasjXgafv :: Lens' ProjectsServiceAccountsSignJwt (Maybe Xgafv)
psasjXgafv
  = lens _psasjXgafv (\ s a -> s{_psasjXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psasjUploadProtocol :: Lens' ProjectsServiceAccountsSignJwt (Maybe Text)
psasjUploadProtocol
  = lens _psasjUploadProtocol
      (\ s a -> s{_psasjUploadProtocol = a})

-- | OAuth access token.
psasjAccessToken :: Lens' ProjectsServiceAccountsSignJwt (Maybe Text)
psasjAccessToken
  = lens _psasjAccessToken
      (\ s a -> s{_psasjAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psasjUploadType :: Lens' ProjectsServiceAccountsSignJwt (Maybe Text)
psasjUploadType
  = lens _psasjUploadType
      (\ s a -> s{_psasjUploadType = a})

-- | Multipart request metadata.
psasjPayload :: Lens' ProjectsServiceAccountsSignJwt SignJwtRequest
psasjPayload
  = lens _psasjPayload (\ s a -> s{_psasjPayload = a})

-- | The resource name of the service account for which the credentials are
-- requested, in the following format:
-- \`projects\/-\/serviceAccounts\/{ACCOUNT_EMAIL_OR_UNIQUEID}\`.
psasjName :: Lens' ProjectsServiceAccountsSignJwt Text
psasjName
  = lens _psasjName (\ s a -> s{_psasjName = a})

-- | JSONP
psasjCallback :: Lens' ProjectsServiceAccountsSignJwt (Maybe Text)
psasjCallback
  = lens _psasjCallback
      (\ s a -> s{_psasjCallback = a})

instance GoogleRequest ProjectsServiceAccountsSignJwt
         where
        type Rs ProjectsServiceAccountsSignJwt =
             SignJwtResponse
        type Scopes ProjectsServiceAccountsSignJwt =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsSignJwt'{..}
          = go _psasjName _psasjXgafv _psasjUploadProtocol
              _psasjAccessToken
              _psasjUploadType
              _psasjCallback
              (Just AltJSON)
              _psasjPayload
              iAMCredentialsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsSignJwtResource)
                      mempty

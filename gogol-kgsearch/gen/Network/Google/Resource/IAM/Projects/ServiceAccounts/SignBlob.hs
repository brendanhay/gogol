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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.SignBlob
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Signs a blob using a service account.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference> for @iam.projects.serviceAccounts.signBlob@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.SignBlob
    (
    -- * REST Resource
      ProjectsServiceAccountsSignBlobResource

    -- * Creating a Request
    , projectsServiceAccountsSignBlob
    , ProjectsServiceAccountsSignBlob

    -- * Request Lenses
    , psasbXgafv
    , psasbUploadProtocol
    , psasbPp
    , psasbAccessToken
    , psasbUploadType
    , psasbPayload
    , psasbBearerToken
    , psasbName
    , psasbCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.signBlob@ method which the
-- 'ProjectsServiceAccountsSignBlob' request conforms to.
type ProjectsServiceAccountsSignBlobResource =
     "v1" :>
       CaptureMode "name" "signBlob" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SignBlobRequest :>
                           Post '[JSON] SignBlobResponse

-- | Signs a blob using a service account.
--
-- /See:/ 'projectsServiceAccountsSignBlob' smart constructor.
data ProjectsServiceAccountsSignBlob = ProjectsServiceAccountsSignBlob'
    { _psasbXgafv          :: !(Maybe Text)
    , _psasbUploadProtocol :: !(Maybe Text)
    , _psasbPp             :: !Bool
    , _psasbAccessToken    :: !(Maybe Text)
    , _psasbUploadType     :: !(Maybe Text)
    , _psasbPayload        :: !SignBlobRequest
    , _psasbBearerToken    :: !(Maybe Text)
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
-- * 'psasbPp'
--
-- * 'psasbAccessToken'
--
-- * 'psasbUploadType'
--
-- * 'psasbPayload'
--
-- * 'psasbBearerToken'
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
    , _psasbPp = True
    , _psasbAccessToken = Nothing
    , _psasbUploadType = Nothing
    , _psasbPayload = pPsasbPayload_
    , _psasbBearerToken = Nothing
    , _psasbName = pPsasbName_
    , _psasbCallback = Nothing
    }

-- | V1 error format.
psasbXgafv :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbXgafv
  = lens _psasbXgafv (\ s a -> s{_psasbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psasbUploadProtocol :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbUploadProtocol
  = lens _psasbUploadProtocol
      (\ s a -> s{_psasbUploadProtocol = a})

-- | Pretty-print response.
psasbPp :: Lens' ProjectsServiceAccountsSignBlob Bool
psasbPp = lens _psasbPp (\ s a -> s{_psasbPp = a})

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

-- | OAuth bearer token.
psasbBearerToken :: Lens' ProjectsServiceAccountsSignBlob (Maybe Text)
psasbBearerToken
  = lens _psasbBearerToken
      (\ s a -> s{_psasbBearerToken = a})

-- | The resource name of the service account in the format
-- \"projects\/{project}\/serviceAccounts\/{account}\". Using \'-\' as a
-- wildcard for the project, will infer the project from the account. The
-- account value can be the email address or the unique_id of the service
-- account.
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
              (Just _psasbPp)
              _psasbAccessToken
              _psasbUploadType
              _psasbBearerToken
              _psasbCallback
              (Just AltJSON)
              _psasbPayload
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsSignBlobResource)
                      mempty

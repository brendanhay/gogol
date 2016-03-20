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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a service account key and returns it.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference> for @iam.projects.serviceAccounts.keys.create@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Create
    (
    -- * REST Resource
      ProjectsServiceAccountsKeysCreateResource

    -- * Creating a Request
    , projectsServiceAccountsKeysCreate
    , ProjectsServiceAccountsKeysCreate

    -- * Request Lenses
    , psakcXgafv
    , psakcUploadProtocol
    , psakcPp
    , psakcAccessToken
    , psakcUploadType
    , psakcPayload
    , psakcBearerToken
    , psakcName
    , psakcCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.keys.create@ method which the
-- 'ProjectsServiceAccountsKeysCreate' request conforms to.
type ProjectsServiceAccountsKeysCreateResource =
     "v1" :>
       Capture "name" Text :>
         "keys" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CreateServiceAccountKeyRequest :>
                             Post '[JSON] ServiceAccountKey

-- | Creates a service account key and returns it.
--
-- /See:/ 'projectsServiceAccountsKeysCreate' smart constructor.
data ProjectsServiceAccountsKeysCreate = ProjectsServiceAccountsKeysCreate
    { _psakcXgafv          :: !(Maybe Text)
    , _psakcUploadProtocol :: !(Maybe Text)
    , _psakcPp             :: !Bool
    , _psakcAccessToken    :: !(Maybe Text)
    , _psakcUploadType     :: !(Maybe Text)
    , _psakcPayload        :: !CreateServiceAccountKeyRequest
    , _psakcBearerToken    :: !(Maybe Text)
    , _psakcName           :: !Text
    , _psakcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsKeysCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psakcXgafv'
--
-- * 'psakcUploadProtocol'
--
-- * 'psakcPp'
--
-- * 'psakcAccessToken'
--
-- * 'psakcUploadType'
--
-- * 'psakcPayload'
--
-- * 'psakcBearerToken'
--
-- * 'psakcName'
--
-- * 'psakcCallback'
projectsServiceAccountsKeysCreate
    :: CreateServiceAccountKeyRequest -- ^ 'psakcPayload'
    -> Text -- ^ 'psakcName'
    -> ProjectsServiceAccountsKeysCreate
projectsServiceAccountsKeysCreate pPsakcPayload_ pPsakcName_ =
    ProjectsServiceAccountsKeysCreate
    { _psakcXgafv = Nothing
    , _psakcUploadProtocol = Nothing
    , _psakcPp = True
    , _psakcAccessToken = Nothing
    , _psakcUploadType = Nothing
    , _psakcPayload = pPsakcPayload_
    , _psakcBearerToken = Nothing
    , _psakcName = pPsakcName_
    , _psakcCallback = Nothing
    }

-- | V1 error format.
psakcXgafv :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcXgafv
  = lens _psakcXgafv (\ s a -> s{_psakcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psakcUploadProtocol :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcUploadProtocol
  = lens _psakcUploadProtocol
      (\ s a -> s{_psakcUploadProtocol = a})

-- | Pretty-print response.
psakcPp :: Lens' ProjectsServiceAccountsKeysCreate Bool
psakcPp = lens _psakcPp (\ s a -> s{_psakcPp = a})

-- | OAuth access token.
psakcAccessToken :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcAccessToken
  = lens _psakcAccessToken
      (\ s a -> s{_psakcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psakcUploadType :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcUploadType
  = lens _psakcUploadType
      (\ s a -> s{_psakcUploadType = a})

-- | Multipart request metadata.
psakcPayload :: Lens' ProjectsServiceAccountsKeysCreate CreateServiceAccountKeyRequest
psakcPayload
  = lens _psakcPayload (\ s a -> s{_psakcPayload = a})

-- | OAuth bearer token.
psakcBearerToken :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcBearerToken
  = lens _psakcBearerToken
      (\ s a -> s{_psakcBearerToken = a})

-- | The resource name of the service account in the format
-- \"projects\/{project}\/serviceAccounts\/{account}\". Using \'-\' as a
-- wildcard for the project, will infer the project from the account. The
-- account value can be the email address or the unique_id of the service
-- account.
psakcName :: Lens' ProjectsServiceAccountsKeysCreate Text
psakcName
  = lens _psakcName (\ s a -> s{_psakcName = a})

-- | JSONP
psakcCallback :: Lens' ProjectsServiceAccountsKeysCreate (Maybe Text)
psakcCallback
  = lens _psakcCallback
      (\ s a -> s{_psakcCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsKeysCreate where
        type Rs ProjectsServiceAccountsKeysCreate =
             ServiceAccountKey
        requestClient ProjectsServiceAccountsKeysCreate{..}
          = go _psakcName _psakcXgafv _psakcUploadProtocol
              (Just _psakcPp)
              _psakcAccessToken
              _psakcUploadType
              _psakcBearerToken
              _psakcCallback
              (Just AltJSON)
              _psakcPayload
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsKeysCreateResource)
                      mempty

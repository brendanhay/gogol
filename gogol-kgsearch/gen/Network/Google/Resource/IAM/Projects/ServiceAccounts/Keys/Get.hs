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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the ServiceAccountKey by key id.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference> for @iam.projects.serviceAccounts.keys.get@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.Get
    (
    -- * REST Resource
      ProjectsServiceAccountsKeysGetResource

    -- * Creating a Request
    , projectsServiceAccountsKeysGet
    , ProjectsServiceAccountsKeysGet

    -- * Request Lenses
    , psakgXgafv
    , psakgUploadProtocol
    , psakgPp
    , psakgAccessToken
    , psakgUploadType
    , psakgBearerToken
    , psakgName
    , psakgCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.keys.get@ method which the
-- 'ProjectsServiceAccountsKeysGet' request conforms to.
type ProjectsServiceAccountsKeysGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ServiceAccountKey

-- | Gets the ServiceAccountKey by key id.
--
-- /See:/ 'projectsServiceAccountsKeysGet' smart constructor.
data ProjectsServiceAccountsKeysGet = ProjectsServiceAccountsKeysGet
    { _psakgXgafv          :: !(Maybe Text)
    , _psakgUploadProtocol :: !(Maybe Text)
    , _psakgPp             :: !Bool
    , _psakgAccessToken    :: !(Maybe Text)
    , _psakgUploadType     :: !(Maybe Text)
    , _psakgBearerToken    :: !(Maybe Text)
    , _psakgName           :: !Text
    , _psakgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsKeysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psakgXgafv'
--
-- * 'psakgUploadProtocol'
--
-- * 'psakgPp'
--
-- * 'psakgAccessToken'
--
-- * 'psakgUploadType'
--
-- * 'psakgBearerToken'
--
-- * 'psakgName'
--
-- * 'psakgCallback'
projectsServiceAccountsKeysGet
    :: Text -- ^ 'psakgName'
    -> ProjectsServiceAccountsKeysGet
projectsServiceAccountsKeysGet pPsakgName_ =
    ProjectsServiceAccountsKeysGet
    { _psakgXgafv = Nothing
    , _psakgUploadProtocol = Nothing
    , _psakgPp = True
    , _psakgAccessToken = Nothing
    , _psakgUploadType = Nothing
    , _psakgBearerToken = Nothing
    , _psakgName = pPsakgName_
    , _psakgCallback = Nothing
    }

-- | V1 error format.
psakgXgafv :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgXgafv
  = lens _psakgXgafv (\ s a -> s{_psakgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psakgUploadProtocol :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgUploadProtocol
  = lens _psakgUploadProtocol
      (\ s a -> s{_psakgUploadProtocol = a})

-- | Pretty-print response.
psakgPp :: Lens' ProjectsServiceAccountsKeysGet Bool
psakgPp = lens _psakgPp (\ s a -> s{_psakgPp = a})

-- | OAuth access token.
psakgAccessToken :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgAccessToken
  = lens _psakgAccessToken
      (\ s a -> s{_psakgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psakgUploadType :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgUploadType
  = lens _psakgUploadType
      (\ s a -> s{_psakgUploadType = a})

-- | OAuth bearer token.
psakgBearerToken :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgBearerToken
  = lens _psakgBearerToken
      (\ s a -> s{_psakgBearerToken = a})

-- | The resource name of the service account key in the format
-- \"projects\/{project}\/serviceAccounts\/{account}\/keys\/{key}\". Using
-- \'-\' as a wildcard for the project will infer the project from the
-- account. The account value can be the email address or the unique_id of
-- the service account.
psakgName :: Lens' ProjectsServiceAccountsKeysGet Text
psakgName
  = lens _psakgName (\ s a -> s{_psakgName = a})

-- | JSONP
psakgCallback :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgCallback
  = lens _psakgCallback
      (\ s a -> s{_psakgCallback = a})

instance GoogleRequest ProjectsServiceAccountsKeysGet
         where
        type Rs ProjectsServiceAccountsKeysGet =
             ServiceAccountKey
        requestClient ProjectsServiceAccountsKeysGet{..}
          = go _psakgName _psakgXgafv _psakgUploadProtocol
              (Just _psakgPp)
              _psakgAccessToken
              _psakgUploadType
              _psakgBearerToken
              _psakgCallback
              (Just AltJSON)
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsKeysGetResource)
                      mempty

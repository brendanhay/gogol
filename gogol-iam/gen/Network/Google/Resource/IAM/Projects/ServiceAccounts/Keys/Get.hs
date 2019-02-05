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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the ServiceAccountKey by key id.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.get@.
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
    , psakgAccessToken
    , psakgUploadType
    , psakgName
    , psakgPublicKeyType
    , psakgCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.keys.get@ method which the
-- 'ProjectsServiceAccountsKeysGet' request conforms to.
type ProjectsServiceAccountsKeysGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "publicKeyType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ServiceAccountKey

-- | Gets the ServiceAccountKey by key id.
--
-- /See:/ 'projectsServiceAccountsKeysGet' smart constructor.
data ProjectsServiceAccountsKeysGet = ProjectsServiceAccountsKeysGet'
    { _psakgXgafv          :: !(Maybe Xgafv)
    , _psakgUploadProtocol :: !(Maybe Text)
    , _psakgAccessToken    :: !(Maybe Text)
    , _psakgUploadType     :: !(Maybe Text)
    , _psakgName           :: !Text
    , _psakgPublicKeyType  :: !(Maybe Text)
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
-- * 'psakgAccessToken'
--
-- * 'psakgUploadType'
--
-- * 'psakgName'
--
-- * 'psakgPublicKeyType'
--
-- * 'psakgCallback'
projectsServiceAccountsKeysGet
    :: Text -- ^ 'psakgName'
    -> ProjectsServiceAccountsKeysGet
projectsServiceAccountsKeysGet pPsakgName_ =
    ProjectsServiceAccountsKeysGet'
    { _psakgXgafv = Nothing
    , _psakgUploadProtocol = Nothing
    , _psakgAccessToken = Nothing
    , _psakgUploadType = Nothing
    , _psakgName = pPsakgName_
    , _psakgPublicKeyType = Nothing
    , _psakgCallback = Nothing
    }

-- | V1 error format.
psakgXgafv :: Lens' ProjectsServiceAccountsKeysGet (Maybe Xgafv)
psakgXgafv
  = lens _psakgXgafv (\ s a -> s{_psakgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psakgUploadProtocol :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgUploadProtocol
  = lens _psakgUploadProtocol
      (\ s a -> s{_psakgUploadProtocol = a})

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

-- | The resource name of the service account key in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\/keys\/{key}\`.
-- Using \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project
-- from the account. The \`ACCOUNT\` value can be the \`email\` address or
-- the \`unique_id\` of the service account.
psakgName :: Lens' ProjectsServiceAccountsKeysGet Text
psakgName
  = lens _psakgName (\ s a -> s{_psakgName = a})

-- | The output format of the public key requested. X509_PEM is the default
-- output format.
psakgPublicKeyType :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgPublicKeyType
  = lens _psakgPublicKeyType
      (\ s a -> s{_psakgPublicKeyType = a})

-- | JSONP
psakgCallback :: Lens' ProjectsServiceAccountsKeysGet (Maybe Text)
psakgCallback
  = lens _psakgCallback
      (\ s a -> s{_psakgCallback = a})

instance GoogleRequest ProjectsServiceAccountsKeysGet
         where
        type Rs ProjectsServiceAccountsKeysGet =
             ServiceAccountKey
        type Scopes ProjectsServiceAccountsKeysGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsKeysGet'{..}
          = go _psakgName _psakgXgafv _psakgUploadProtocol
              _psakgAccessToken
              _psakgUploadType
              _psakgPublicKeyType
              _psakgCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsKeysGetResource)
                      mempty

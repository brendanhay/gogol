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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a ServiceAccount.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.get@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Get
    (
    -- * REST Resource
      ProjectsServiceAccountsGetResource

    -- * Creating a Request
    , projectsServiceAccountsGet
    , ProjectsServiceAccountsGet

    -- * Request Lenses
    , psagXgafv
    , psagUploadProtocol
    , psagAccessToken
    , psagUploadType
    , psagName
    , psagCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.get@ method which the
-- 'ProjectsServiceAccountsGet' request conforms to.
type ProjectsServiceAccountsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ServiceAccount

-- | Gets a ServiceAccount.
--
-- /See:/ 'projectsServiceAccountsGet' smart constructor.
data ProjectsServiceAccountsGet =
  ProjectsServiceAccountsGet'
    { _psagXgafv :: !(Maybe Xgafv)
    , _psagUploadProtocol :: !(Maybe Text)
    , _psagAccessToken :: !(Maybe Text)
    , _psagUploadType :: !(Maybe Text)
    , _psagName :: !Text
    , _psagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psagXgafv'
--
-- * 'psagUploadProtocol'
--
-- * 'psagAccessToken'
--
-- * 'psagUploadType'
--
-- * 'psagName'
--
-- * 'psagCallback'
projectsServiceAccountsGet
    :: Text -- ^ 'psagName'
    -> ProjectsServiceAccountsGet
projectsServiceAccountsGet pPsagName_ =
  ProjectsServiceAccountsGet'
    { _psagXgafv = Nothing
    , _psagUploadProtocol = Nothing
    , _psagAccessToken = Nothing
    , _psagUploadType = Nothing
    , _psagName = pPsagName_
    , _psagCallback = Nothing
    }


-- | V1 error format.
psagXgafv :: Lens' ProjectsServiceAccountsGet (Maybe Xgafv)
psagXgafv
  = lens _psagXgafv (\ s a -> s{_psagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psagUploadProtocol :: Lens' ProjectsServiceAccountsGet (Maybe Text)
psagUploadProtocol
  = lens _psagUploadProtocol
      (\ s a -> s{_psagUploadProtocol = a})

-- | OAuth access token.
psagAccessToken :: Lens' ProjectsServiceAccountsGet (Maybe Text)
psagAccessToken
  = lens _psagAccessToken
      (\ s a -> s{_psagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psagUploadType :: Lens' ProjectsServiceAccountsGet (Maybe Text)
psagUploadType
  = lens _psagUploadType
      (\ s a -> s{_psagUploadType = a})

-- | Required. The resource name of the service account in the following
-- format: \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the account. The \`ACCOUNT\` value can be the \`email\` address or the
-- \`unique_id\` of the service account.
psagName :: Lens' ProjectsServiceAccountsGet Text
psagName = lens _psagName (\ s a -> s{_psagName = a})

-- | JSONP
psagCallback :: Lens' ProjectsServiceAccountsGet (Maybe Text)
psagCallback
  = lens _psagCallback (\ s a -> s{_psagCallback = a})

instance GoogleRequest ProjectsServiceAccountsGet
         where
        type Rs ProjectsServiceAccountsGet = ServiceAccount
        type Scopes ProjectsServiceAccountsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsGet'{..}
          = go _psagName _psagXgafv _psagUploadProtocol
              _psagAccessToken
              _psagUploadType
              _psagCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServiceAccountsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a ServiceAccount. **Warning:** After you delete a service
-- account, you might not be able to undelete it. If you know that you need
-- to re-enable the service account in the future, use
-- DisableServiceAccount instead. If you delete a service account, IAM
-- permanently removes the service account 30 days later. Google Cloud
-- cannot recover the service account after it is permanently removed, even
-- if you file a support request. To help avoid unplanned outages, we
-- recommend that you disable the service account before you delete it. Use
-- DisableServiceAccount to disable the service account, then wait at least
-- 24 hours and watch for unintended consequences. If there are no
-- unintended consequences, you can delete the service account.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.delete@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Delete
    (
    -- * REST Resource
      ProjectsServiceAccountsDeleteResource

    -- * Creating a Request
    , projectsServiceAccountsDelete
    , ProjectsServiceAccountsDelete

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pName
    , pCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.delete@ method which the
-- 'ProjectsServiceAccountsDelete' request conforms to.
type ProjectsServiceAccountsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a ServiceAccount. **Warning:** After you delete a service
-- account, you might not be able to undelete it. If you know that you need
-- to re-enable the service account in the future, use
-- DisableServiceAccount instead. If you delete a service account, IAM
-- permanently removes the service account 30 days later. Google Cloud
-- cannot recover the service account after it is permanently removed, even
-- if you file a support request. To help avoid unplanned outages, we
-- recommend that you disable the service account before you delete it. Use
-- DisableServiceAccount to disable the service account, then wait at least
-- 24 hours and watch for unintended consequences. If there are no
-- unintended consequences, you can delete the service account.
--
-- /See:/ 'projectsServiceAccountsDelete' smart constructor.
data ProjectsServiceAccountsDelete =
  ProjectsServiceAccountsDelete'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pName :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pName'
--
-- * 'pCallback'
projectsServiceAccountsDelete
    :: Text -- ^ 'pName'
    -> ProjectsServiceAccountsDelete
projectsServiceAccountsDelete pPName_ =
  ProjectsServiceAccountsDelete'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsServiceAccountsDelete (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Required. The resource name of the service account in the following
-- format: \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the account. The \`ACCOUNT\` value can be the \`email\` address or the
-- \`unique_id\` of the service account.
pName :: Lens' ProjectsServiceAccountsDelete Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsServiceAccountsDelete
         where
        type Rs ProjectsServiceAccountsDelete = Empty
        type Scopes ProjectsServiceAccountsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsDelete'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsDeleteResource)
                      mempty

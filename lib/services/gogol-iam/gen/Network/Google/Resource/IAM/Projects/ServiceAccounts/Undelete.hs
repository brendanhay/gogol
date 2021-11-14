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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a deleted ServiceAccount. **Important:** It is not always
-- possible to restore a deleted service account. Use this method only as a
-- last resort. After you delete a service account, IAM permanently removes
-- the service account 30 days later. There is no way to restore a deleted
-- service account that has been permanently removed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.undelete@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Undelete
    (
    -- * REST Resource
      ProjectsServiceAccountsUndeleteResource

    -- * Creating a Request
    , projectsServiceAccountsUndelete
    , ProjectsServiceAccountsUndelete

    -- * Request Lenses
    , psauXgafv
    , psauUploadProtocol
    , psauAccessToken
    , psauUploadType
    , psauPayload
    , psauName
    , psauCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.undelete@ method which the
-- 'ProjectsServiceAccountsUndelete' request conforms to.
type ProjectsServiceAccountsUndeleteResource =
     "v1" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteServiceAccountRequest :>
                       Post '[JSON] UndeleteServiceAccountResponse

-- | Restores a deleted ServiceAccount. **Important:** It is not always
-- possible to restore a deleted service account. Use this method only as a
-- last resort. After you delete a service account, IAM permanently removes
-- the service account 30 days later. There is no way to restore a deleted
-- service account that has been permanently removed.
--
-- /See:/ 'projectsServiceAccountsUndelete' smart constructor.
data ProjectsServiceAccountsUndelete =
  ProjectsServiceAccountsUndelete'
    { _psauXgafv :: !(Maybe Xgafv)
    , _psauUploadProtocol :: !(Maybe Text)
    , _psauAccessToken :: !(Maybe Text)
    , _psauUploadType :: !(Maybe Text)
    , _psauPayload :: !UndeleteServiceAccountRequest
    , _psauName :: !Text
    , _psauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psauXgafv'
--
-- * 'psauUploadProtocol'
--
-- * 'psauAccessToken'
--
-- * 'psauUploadType'
--
-- * 'psauPayload'
--
-- * 'psauName'
--
-- * 'psauCallback'
projectsServiceAccountsUndelete
    :: UndeleteServiceAccountRequest -- ^ 'psauPayload'
    -> Text -- ^ 'psauName'
    -> ProjectsServiceAccountsUndelete
projectsServiceAccountsUndelete pPsauPayload_ pPsauName_ =
  ProjectsServiceAccountsUndelete'
    { _psauXgafv = Nothing
    , _psauUploadProtocol = Nothing
    , _psauAccessToken = Nothing
    , _psauUploadType = Nothing
    , _psauPayload = pPsauPayload_
    , _psauName = pPsauName_
    , _psauCallback = Nothing
    }


-- | V1 error format.
psauXgafv :: Lens' ProjectsServiceAccountsUndelete (Maybe Xgafv)
psauXgafv
  = lens _psauXgafv (\ s a -> s{_psauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psauUploadProtocol :: Lens' ProjectsServiceAccountsUndelete (Maybe Text)
psauUploadProtocol
  = lens _psauUploadProtocol
      (\ s a -> s{_psauUploadProtocol = a})

-- | OAuth access token.
psauAccessToken :: Lens' ProjectsServiceAccountsUndelete (Maybe Text)
psauAccessToken
  = lens _psauAccessToken
      (\ s a -> s{_psauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psauUploadType :: Lens' ProjectsServiceAccountsUndelete (Maybe Text)
psauUploadType
  = lens _psauUploadType
      (\ s a -> s{_psauUploadType = a})

-- | Multipart request metadata.
psauPayload :: Lens' ProjectsServiceAccountsUndelete UndeleteServiceAccountRequest
psauPayload
  = lens _psauPayload (\ s a -> s{_psauPayload = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT_UNIQUE_ID}\`. Using
-- \`-\` as a wildcard for the \`PROJECT_ID\` will infer the project from
-- the account.
psauName :: Lens' ProjectsServiceAccountsUndelete Text
psauName = lens _psauName (\ s a -> s{_psauName = a})

-- | JSONP
psauCallback :: Lens' ProjectsServiceAccountsUndelete (Maybe Text)
psauCallback
  = lens _psauCallback (\ s a -> s{_psauCallback = a})

instance GoogleRequest
           ProjectsServiceAccountsUndelete
         where
        type Rs ProjectsServiceAccountsUndelete =
             UndeleteServiceAccountResponse
        type Scopes ProjectsServiceAccountsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsUndelete'{..}
          = go _psauName _psauXgafv _psauUploadProtocol
              _psauAccessToken
              _psauUploadType
              _psauCallback
              (Just AltJSON)
              _psauPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsUndeleteResource)
                      mempty

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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a ServiceAccount.
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
    , psadXgafv
    , psadUploadProtocol
    , psadAccessToken
    , psadUploadType
    , psadName
    , psadCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

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

-- | Deletes a ServiceAccount.
--
-- /See:/ 'projectsServiceAccountsDelete' smart constructor.
data ProjectsServiceAccountsDelete = ProjectsServiceAccountsDelete'
    { _psadXgafv          :: !(Maybe Xgafv)
    , _psadUploadProtocol :: !(Maybe Text)
    , _psadAccessToken    :: !(Maybe Text)
    , _psadUploadType     :: !(Maybe Text)
    , _psadName           :: !Text
    , _psadCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psadXgafv'
--
-- * 'psadUploadProtocol'
--
-- * 'psadAccessToken'
--
-- * 'psadUploadType'
--
-- * 'psadName'
--
-- * 'psadCallback'
projectsServiceAccountsDelete
    :: Text -- ^ 'psadName'
    -> ProjectsServiceAccountsDelete
projectsServiceAccountsDelete pPsadName_ =
    ProjectsServiceAccountsDelete'
    { _psadXgafv = Nothing
    , _psadUploadProtocol = Nothing
    , _psadAccessToken = Nothing
    , _psadUploadType = Nothing
    , _psadName = pPsadName_
    , _psadCallback = Nothing
    }

-- | V1 error format.
psadXgafv :: Lens' ProjectsServiceAccountsDelete (Maybe Xgafv)
psadXgafv
  = lens _psadXgafv (\ s a -> s{_psadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psadUploadProtocol :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadUploadProtocol
  = lens _psadUploadProtocol
      (\ s a -> s{_psadUploadProtocol = a})

-- | OAuth access token.
psadAccessToken :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadAccessToken
  = lens _psadAccessToken
      (\ s a -> s{_psadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psadUploadType :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadUploadType
  = lens _psadUploadType
      (\ s a -> s{_psadUploadType = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}\`. Using \`-\` as a
-- wildcard for the \`PROJECT_ID\` will infer the project from the account.
-- The \`ACCOUNT\` value can be the \`email\` address or the \`unique_id\`
-- of the service account.
psadName :: Lens' ProjectsServiceAccountsDelete Text
psadName = lens _psadName (\ s a -> s{_psadName = a})

-- | JSONP
psadCallback :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadCallback
  = lens _psadCallback (\ s a -> s{_psadCallback = a})

instance GoogleRequest ProjectsServiceAccountsDelete
         where
        type Rs ProjectsServiceAccountsDelete = Empty
        type Scopes ProjectsServiceAccountsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsDelete'{..}
          = go _psadName _psadXgafv _psadUploadProtocol
              _psadAccessToken
              _psadUploadType
              _psadCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsDeleteResource)
                      mempty

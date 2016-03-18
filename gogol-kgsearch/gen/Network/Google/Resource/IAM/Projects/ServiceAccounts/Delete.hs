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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a service acount.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management API Reference> for @iam.projects.serviceAccounts.delete@.
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
    , psadPp
    , psadAccessToken
    , psadUploadType
    , psadBearerToken
    , psadName
    , psadCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.delete@ method which the
-- 'ProjectsServiceAccountsDelete' request conforms to.
type ProjectsServiceAccountsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a service acount.
--
-- /See:/ 'projectsServiceAccountsDelete' smart constructor.
data ProjectsServiceAccountsDelete = ProjectsServiceAccountsDelete
    { _psadXgafv          :: !(Maybe Text)
    , _psadUploadProtocol :: !(Maybe Text)
    , _psadPp             :: !Bool
    , _psadAccessToken    :: !(Maybe Text)
    , _psadUploadType     :: !(Maybe Text)
    , _psadBearerToken    :: !(Maybe Text)
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
-- * 'psadPp'
--
-- * 'psadAccessToken'
--
-- * 'psadUploadType'
--
-- * 'psadBearerToken'
--
-- * 'psadName'
--
-- * 'psadCallback'
projectsServiceAccountsDelete
    :: Text -- ^ 'psadName'
    -> ProjectsServiceAccountsDelete
projectsServiceAccountsDelete pPsadName_ =
    ProjectsServiceAccountsDelete
    { _psadXgafv = Nothing
    , _psadUploadProtocol = Nothing
    , _psadPp = True
    , _psadAccessToken = Nothing
    , _psadUploadType = Nothing
    , _psadBearerToken = Nothing
    , _psadName = pPsadName_
    , _psadCallback = Nothing
    }

-- | V1 error format.
psadXgafv :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadXgafv
  = lens _psadXgafv (\ s a -> s{_psadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psadUploadProtocol :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadUploadProtocol
  = lens _psadUploadProtocol
      (\ s a -> s{_psadUploadProtocol = a})

-- | Pretty-print response.
psadPp :: Lens' ProjectsServiceAccountsDelete Bool
psadPp = lens _psadPp (\ s a -> s{_psadPp = a})

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

-- | OAuth bearer token.
psadBearerToken :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadBearerToken
  = lens _psadBearerToken
      (\ s a -> s{_psadBearerToken = a})

-- | The resource name of the service account in the format
-- \"projects\/{project}\/serviceAccounts\/{account}\". Using \'-\' as a
-- wildcard for the project, will infer the project from the account. The
-- account value can be the email address or the unique_id of the service
-- account.
psadName :: Lens' ProjectsServiceAccountsDelete Text
psadName = lens _psadName (\ s a -> s{_psadName = a})

-- | JSONP
psadCallback :: Lens' ProjectsServiceAccountsDelete (Maybe Text)
psadCallback
  = lens _psadCallback (\ s a -> s{_psadCallback = a})

instance GoogleRequest ProjectsServiceAccountsDelete
         where
        type Rs ProjectsServiceAccountsDelete = Empty
        requestClient ProjectsServiceAccountsDelete{..}
          = go _psadName _psadXgafv _psadUploadProtocol
              (Just _psadPp)
              _psadAccessToken
              _psadUploadType
              _psadBearerToken
              _psadCallback
              (Just AltJSON)
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsDeleteResource)
                      mempty

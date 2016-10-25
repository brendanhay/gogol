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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ServiceAccountKeys.
--
-- /See:/ <https://cloud.google.com/iam/ Google Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.keys.list@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.Keys.List
    (
    -- * REST Resource
      ProjectsServiceAccountsKeysListResource

    -- * Creating a Request
    , projectsServiceAccountsKeysList
    , ProjectsServiceAccountsKeysList

    -- * Request Lenses
    , psaklKeyTypes
    , psaklXgafv
    , psaklUploadProtocol
    , psaklPp
    , psaklAccessToken
    , psaklUploadType
    , psaklBearerToken
    , psaklName
    , psaklCallback
    ) where

import           Network.Google.KnowledgeGraphSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.keys.list@ method which the
-- 'ProjectsServiceAccountsKeysList' request conforms to.
type ProjectsServiceAccountsKeysListResource =
     "v1" :>
       Capture "name" Text :>
         "keys" :>
           QueryParams "keyTypes" Text :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListServiceAccountKeysResponse

-- | Lists ServiceAccountKeys.
--
-- /See:/ 'projectsServiceAccountsKeysList' smart constructor.
data ProjectsServiceAccountsKeysList = ProjectsServiceAccountsKeysList'
    { _psaklKeyTypes       :: !(Maybe [Text])
    , _psaklXgafv          :: !(Maybe Text)
    , _psaklUploadProtocol :: !(Maybe Text)
    , _psaklPp             :: !Bool
    , _psaklAccessToken    :: !(Maybe Text)
    , _psaklUploadType     :: !(Maybe Text)
    , _psaklBearerToken    :: !(Maybe Text)
    , _psaklName           :: !Text
    , _psaklCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsServiceAccountsKeysList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psaklKeyTypes'
--
-- * 'psaklXgafv'
--
-- * 'psaklUploadProtocol'
--
-- * 'psaklPp'
--
-- * 'psaklAccessToken'
--
-- * 'psaklUploadType'
--
-- * 'psaklBearerToken'
--
-- * 'psaklName'
--
-- * 'psaklCallback'
projectsServiceAccountsKeysList
    :: Text -- ^ 'psaklName'
    -> ProjectsServiceAccountsKeysList
projectsServiceAccountsKeysList pPsaklName_ =
    ProjectsServiceAccountsKeysList'
    { _psaklKeyTypes = Nothing
    , _psaklXgafv = Nothing
    , _psaklUploadProtocol = Nothing
    , _psaklPp = True
    , _psaklAccessToken = Nothing
    , _psaklUploadType = Nothing
    , _psaklBearerToken = Nothing
    , _psaklName = pPsaklName_
    , _psaklCallback = Nothing
    }

-- | Filters the types of keys the user wants to include in the list
-- response. Duplicate key types are not allowed. If no key type is
-- provided, all keys are returned.
psaklKeyTypes :: Lens' ProjectsServiceAccountsKeysList [Text]
psaklKeyTypes
  = lens _psaklKeyTypes
      (\ s a -> s{_psaklKeyTypes = a})
      . _Default
      . _Coerce

-- | V1 error format.
psaklXgafv :: Lens' ProjectsServiceAccountsKeysList (Maybe Text)
psaklXgafv
  = lens _psaklXgafv (\ s a -> s{_psaklXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psaklUploadProtocol :: Lens' ProjectsServiceAccountsKeysList (Maybe Text)
psaklUploadProtocol
  = lens _psaklUploadProtocol
      (\ s a -> s{_psaklUploadProtocol = a})

-- | Pretty-print response.
psaklPp :: Lens' ProjectsServiceAccountsKeysList Bool
psaklPp = lens _psaklPp (\ s a -> s{_psaklPp = a})

-- | OAuth access token.
psaklAccessToken :: Lens' ProjectsServiceAccountsKeysList (Maybe Text)
psaklAccessToken
  = lens _psaklAccessToken
      (\ s a -> s{_psaklAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psaklUploadType :: Lens' ProjectsServiceAccountsKeysList (Maybe Text)
psaklUploadType
  = lens _psaklUploadType
      (\ s a -> s{_psaklUploadType = a})

-- | OAuth bearer token.
psaklBearerToken :: Lens' ProjectsServiceAccountsKeysList (Maybe Text)
psaklBearerToken
  = lens _psaklBearerToken
      (\ s a -> s{_psaklBearerToken = a})

-- | The resource name of the service account in the following format:
-- \`projects\/{project}\/serviceAccounts\/{account}\`. Using \`-\` as a
-- wildcard for the project, will infer the project from the account. The
-- \`account\` value can be the \`email\` address or the \`unique_id\` of
-- the service account.
psaklName :: Lens' ProjectsServiceAccountsKeysList Text
psaklName
  = lens _psaklName (\ s a -> s{_psaklName = a})

-- | JSONP
psaklCallback :: Lens' ProjectsServiceAccountsKeysList (Maybe Text)
psaklCallback
  = lens _psaklCallback
      (\ s a -> s{_psaklCallback = a})

instance GoogleRequest
         ProjectsServiceAccountsKeysList where
        type Rs ProjectsServiceAccountsKeysList =
             ListServiceAccountKeysResponse
        type Scopes ProjectsServiceAccountsKeysList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsKeysList'{..}
          = go _psaklName (_psaklKeyTypes ^. _Default)
              _psaklXgafv
              _psaklUploadProtocol
              (Just _psaklPp)
              _psaklAccessToken
              _psaklUploadType
              _psaklBearerToken
              _psaklCallback
              (Just AltJSON)
              knowledgeGraphSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsServiceAccountsKeysListResource)
                      mempty

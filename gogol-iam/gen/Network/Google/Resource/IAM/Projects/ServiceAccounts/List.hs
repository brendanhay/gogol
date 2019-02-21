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
-- Module      : Network.Google.Resource.IAM.Projects.ServiceAccounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ServiceAccounts for a project.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.serviceAccounts.list@.
module Network.Google.Resource.IAM.Projects.ServiceAccounts.List
    (
    -- * REST Resource
      ProjectsServiceAccountsListResource

    -- * Creating a Request
    , projectsServiceAccountsList
    , ProjectsServiceAccountsList

    -- * Request Lenses
    , psalXgafv
    , psalUploadProtocol
    , psalAccessToken
    , psalUploadType
    , psalName
    , psalPageToken
    , psalPageSize
    , psalCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.projects.serviceAccounts.list@ method which the
-- 'ProjectsServiceAccountsList' request conforms to.
type ProjectsServiceAccountsListResource =
     "v1" :>
       Capture "name" Text :>
         "serviceAccounts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListServiceAccountsResponse

-- | Lists ServiceAccounts for a project.
--
-- /See:/ 'projectsServiceAccountsList' smart constructor.
data ProjectsServiceAccountsList =
  ProjectsServiceAccountsList'
    { _psalXgafv          :: !(Maybe Xgafv)
    , _psalUploadProtocol :: !(Maybe Text)
    , _psalAccessToken    :: !(Maybe Text)
    , _psalUploadType     :: !(Maybe Text)
    , _psalName           :: !Text
    , _psalPageToken      :: !(Maybe Text)
    , _psalPageSize       :: !(Maybe (Textual Int32))
    , _psalCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsServiceAccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psalXgafv'
--
-- * 'psalUploadProtocol'
--
-- * 'psalAccessToken'
--
-- * 'psalUploadType'
--
-- * 'psalName'
--
-- * 'psalPageToken'
--
-- * 'psalPageSize'
--
-- * 'psalCallback'
projectsServiceAccountsList
    :: Text -- ^ 'psalName'
    -> ProjectsServiceAccountsList
projectsServiceAccountsList pPsalName_ =
  ProjectsServiceAccountsList'
    { _psalXgafv = Nothing
    , _psalUploadProtocol = Nothing
    , _psalAccessToken = Nothing
    , _psalUploadType = Nothing
    , _psalName = pPsalName_
    , _psalPageToken = Nothing
    , _psalPageSize = Nothing
    , _psalCallback = Nothing
    }


-- | V1 error format.
psalXgafv :: Lens' ProjectsServiceAccountsList (Maybe Xgafv)
psalXgafv
  = lens _psalXgafv (\ s a -> s{_psalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psalUploadProtocol :: Lens' ProjectsServiceAccountsList (Maybe Text)
psalUploadProtocol
  = lens _psalUploadProtocol
      (\ s a -> s{_psalUploadProtocol = a})

-- | OAuth access token.
psalAccessToken :: Lens' ProjectsServiceAccountsList (Maybe Text)
psalAccessToken
  = lens _psalAccessToken
      (\ s a -> s{_psalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psalUploadType :: Lens' ProjectsServiceAccountsList (Maybe Text)
psalUploadType
  = lens _psalUploadType
      (\ s a -> s{_psalUploadType = a})

-- | Required. The resource name of the project associated with the service
-- accounts, such as \`projects\/my-project-123\`.
psalName :: Lens' ProjectsServiceAccountsList Text
psalName = lens _psalName (\ s a -> s{_psalName = a})

-- | Optional pagination token returned in an earlier
-- ListServiceAccountsResponse.next_page_token.
psalPageToken :: Lens' ProjectsServiceAccountsList (Maybe Text)
psalPageToken
  = lens _psalPageToken
      (\ s a -> s{_psalPageToken = a})

-- | Optional limit on the number of service accounts to include in the
-- response. Further accounts can subsequently be obtained by including the
-- ListServiceAccountsResponse.next_page_token in a subsequent request.
psalPageSize :: Lens' ProjectsServiceAccountsList (Maybe Int32)
psalPageSize
  = lens _psalPageSize (\ s a -> s{_psalPageSize = a})
      . mapping _Coerce

-- | JSONP
psalCallback :: Lens' ProjectsServiceAccountsList (Maybe Text)
psalCallback
  = lens _psalCallback (\ s a -> s{_psalCallback = a})

instance GoogleRequest ProjectsServiceAccountsList
         where
        type Rs ProjectsServiceAccountsList =
             ListServiceAccountsResponse
        type Scopes ProjectsServiceAccountsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsServiceAccountsList'{..}
          = go _psalName _psalXgafv _psalUploadProtocol
              _psalAccessToken
              _psalUploadType
              _psalPageToken
              _psalPageSize
              _psalCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsServiceAccountsListResource)
                      mempty

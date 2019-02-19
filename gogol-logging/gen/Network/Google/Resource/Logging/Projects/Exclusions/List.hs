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
-- Module      : Network.Google.Resource.Logging.Projects.Exclusions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.exclusions.list@.
module Network.Google.Resource.Logging.Projects.Exclusions.List
    (
    -- * REST Resource
      ProjectsExclusionsListResource

    -- * Creating a Request
    , projectsExclusionsList
    , ProjectsExclusionsList

    -- * Request Lenses
    , pelParent
    , pelXgafv
    , pelUploadProtocol
    , pelAccessToken
    , pelUploadType
    , pelPageToken
    , pelPageSize
    , pelCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.exclusions.list@ method which the
-- 'ProjectsExclusionsList' request conforms to.
type ProjectsExclusionsListResource =
     "v2" :>
       Capture "parent" Text :>
         "exclusions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListExclusionsResponse

-- | Lists all the exclusions in a parent resource.
--
-- /See:/ 'projectsExclusionsList' smart constructor.
data ProjectsExclusionsList =
  ProjectsExclusionsList'
    { _pelParent         :: !Text
    , _pelXgafv          :: !(Maybe Xgafv)
    , _pelUploadProtocol :: !(Maybe Text)
    , _pelAccessToken    :: !(Maybe Text)
    , _pelUploadType     :: !(Maybe Text)
    , _pelPageToken      :: !(Maybe Text)
    , _pelPageSize       :: !(Maybe (Textual Int32))
    , _pelCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsExclusionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pelParent'
--
-- * 'pelXgafv'
--
-- * 'pelUploadProtocol'
--
-- * 'pelAccessToken'
--
-- * 'pelUploadType'
--
-- * 'pelPageToken'
--
-- * 'pelPageSize'
--
-- * 'pelCallback'
projectsExclusionsList
    :: Text -- ^ 'pelParent'
    -> ProjectsExclusionsList
projectsExclusionsList pPelParent_ =
  ProjectsExclusionsList'
    { _pelParent = pPelParent_
    , _pelXgafv = Nothing
    , _pelUploadProtocol = Nothing
    , _pelAccessToken = Nothing
    , _pelUploadType = Nothing
    , _pelPageToken = Nothing
    , _pelPageSize = Nothing
    , _pelCallback = Nothing
    }


-- | Required. The parent resource whose exclusions are to be listed.
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
pelParent :: Lens' ProjectsExclusionsList Text
pelParent
  = lens _pelParent (\ s a -> s{_pelParent = a})

-- | V1 error format.
pelXgafv :: Lens' ProjectsExclusionsList (Maybe Xgafv)
pelXgafv = lens _pelXgafv (\ s a -> s{_pelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pelUploadProtocol :: Lens' ProjectsExclusionsList (Maybe Text)
pelUploadProtocol
  = lens _pelUploadProtocol
      (\ s a -> s{_pelUploadProtocol = a})

-- | OAuth access token.
pelAccessToken :: Lens' ProjectsExclusionsList (Maybe Text)
pelAccessToken
  = lens _pelAccessToken
      (\ s a -> s{_pelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pelUploadType :: Lens' ProjectsExclusionsList (Maybe Text)
pelUploadType
  = lens _pelUploadType
      (\ s a -> s{_pelUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
pelPageToken :: Lens' ProjectsExclusionsList (Maybe Text)
pelPageToken
  = lens _pelPageToken (\ s a -> s{_pelPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
pelPageSize :: Lens' ProjectsExclusionsList (Maybe Int32)
pelPageSize
  = lens _pelPageSize (\ s a -> s{_pelPageSize = a}) .
      mapping _Coerce

-- | JSONP
pelCallback :: Lens' ProjectsExclusionsList (Maybe Text)
pelCallback
  = lens _pelCallback (\ s a -> s{_pelCallback = a})

instance GoogleRequest ProjectsExclusionsList where
        type Rs ProjectsExclusionsList =
             ListExclusionsResponse
        type Scopes ProjectsExclusionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsExclusionsList'{..}
          = go _pelParent _pelXgafv _pelUploadProtocol
              _pelAccessToken
              _pelUploadType
              _pelPageToken
              _pelPageSize
              _pelCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsExclusionsListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Logging.Projects.Locations.Buckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists buckets.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.locations.buckets.list@.
module Network.Google.Resource.Logging.Projects.Locations.Buckets.List
    (
    -- * REST Resource
      ProjectsLocationsBucketsListResource

    -- * Creating a Request
    , projectsLocationsBucketsList
    , ProjectsLocationsBucketsList

    -- * Request Lenses
    , plblParent
    , plblXgafv
    , plblUploadProtocol
    , plblAccessToken
    , plblUploadType
    , plblPageToken
    , plblPageSize
    , plblCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.locations.buckets.list@ method which the
-- 'ProjectsLocationsBucketsList' request conforms to.
type ProjectsLocationsBucketsListResource =
     "v2" :>
       Capture "parent" Text :>
         "buckets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBucketsResponse

-- | Lists buckets.
--
-- /See:/ 'projectsLocationsBucketsList' smart constructor.
data ProjectsLocationsBucketsList =
  ProjectsLocationsBucketsList'
    { _plblParent :: !Text
    , _plblXgafv :: !(Maybe Xgafv)
    , _plblUploadProtocol :: !(Maybe Text)
    , _plblAccessToken :: !(Maybe Text)
    , _plblUploadType :: !(Maybe Text)
    , _plblPageToken :: !(Maybe Text)
    , _plblPageSize :: !(Maybe (Textual Int32))
    , _plblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plblParent'
--
-- * 'plblXgafv'
--
-- * 'plblUploadProtocol'
--
-- * 'plblAccessToken'
--
-- * 'plblUploadType'
--
-- * 'plblPageToken'
--
-- * 'plblPageSize'
--
-- * 'plblCallback'
projectsLocationsBucketsList
    :: Text -- ^ 'plblParent'
    -> ProjectsLocationsBucketsList
projectsLocationsBucketsList pPlblParent_ =
  ProjectsLocationsBucketsList'
    { _plblParent = pPlblParent_
    , _plblXgafv = Nothing
    , _plblUploadProtocol = Nothing
    , _plblAccessToken = Nothing
    , _plblUploadType = Nothing
    , _plblPageToken = Nothing
    , _plblPageSize = Nothing
    , _plblCallback = Nothing
    }


-- | Required. The parent resource whose buckets are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\" Note: The locations
-- portion of the resource must be specified, but supplying the character -
-- in place of LOCATION_ID will return all buckets.
plblParent :: Lens' ProjectsLocationsBucketsList Text
plblParent
  = lens _plblParent (\ s a -> s{_plblParent = a})

-- | V1 error format.
plblXgafv :: Lens' ProjectsLocationsBucketsList (Maybe Xgafv)
plblXgafv
  = lens _plblXgafv (\ s a -> s{_plblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plblUploadProtocol :: Lens' ProjectsLocationsBucketsList (Maybe Text)
plblUploadProtocol
  = lens _plblUploadProtocol
      (\ s a -> s{_plblUploadProtocol = a})

-- | OAuth access token.
plblAccessToken :: Lens' ProjectsLocationsBucketsList (Maybe Text)
plblAccessToken
  = lens _plblAccessToken
      (\ s a -> s{_plblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plblUploadType :: Lens' ProjectsLocationsBucketsList (Maybe Text)
plblUploadType
  = lens _plblUploadType
      (\ s a -> s{_plblUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
plblPageToken :: Lens' ProjectsLocationsBucketsList (Maybe Text)
plblPageToken
  = lens _plblPageToken
      (\ s a -> s{_plblPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
plblPageSize :: Lens' ProjectsLocationsBucketsList (Maybe Int32)
plblPageSize
  = lens _plblPageSize (\ s a -> s{_plblPageSize = a})
      . mapping _Coerce

-- | JSONP
plblCallback :: Lens' ProjectsLocationsBucketsList (Maybe Text)
plblCallback
  = lens _plblCallback (\ s a -> s{_plblCallback = a})

instance GoogleRequest ProjectsLocationsBucketsList
         where
        type Rs ProjectsLocationsBucketsList =
             ListBucketsResponse
        type Scopes ProjectsLocationsBucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLocationsBucketsList'{..}
          = go _plblParent _plblXgafv _plblUploadProtocol
              _plblAccessToken
              _plblUploadType
              _plblPageToken
              _plblPageSize
              _plblCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsBucketsListResource)
                      mempty

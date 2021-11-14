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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ImportJobs.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.list@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.List
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsImportJobsListResource

    -- * Creating a Request
    , projectsLocationsKeyRingsImportJobsList
    , ProjectsLocationsKeyRingsImportJobsList

    -- * Request Lenses
    , plkrijlParent
    , plkrijlXgafv
    , plkrijlUploadProtocol
    , plkrijlOrderBy
    , plkrijlAccessToken
    , plkrijlUploadType
    , plkrijlFilter
    , plkrijlPageToken
    , plkrijlPageSize
    , plkrijlCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.list@ method which the
-- 'ProjectsLocationsKeyRingsImportJobsList' request conforms to.
type ProjectsLocationsKeyRingsImportJobsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "importJobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListImportJobsResponse

-- | Lists ImportJobs.
--
-- /See:/ 'projectsLocationsKeyRingsImportJobsList' smart constructor.
data ProjectsLocationsKeyRingsImportJobsList =
  ProjectsLocationsKeyRingsImportJobsList'
    { _plkrijlParent :: !Text
    , _plkrijlXgafv :: !(Maybe Xgafv)
    , _plkrijlUploadProtocol :: !(Maybe Text)
    , _plkrijlOrderBy :: !(Maybe Text)
    , _plkrijlAccessToken :: !(Maybe Text)
    , _plkrijlUploadType :: !(Maybe Text)
    , _plkrijlFilter :: !(Maybe Text)
    , _plkrijlPageToken :: !(Maybe Text)
    , _plkrijlPageSize :: !(Maybe (Textual Int32))
    , _plkrijlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsImportJobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrijlParent'
--
-- * 'plkrijlXgafv'
--
-- * 'plkrijlUploadProtocol'
--
-- * 'plkrijlOrderBy'
--
-- * 'plkrijlAccessToken'
--
-- * 'plkrijlUploadType'
--
-- * 'plkrijlFilter'
--
-- * 'plkrijlPageToken'
--
-- * 'plkrijlPageSize'
--
-- * 'plkrijlCallback'
projectsLocationsKeyRingsImportJobsList
    :: Text -- ^ 'plkrijlParent'
    -> ProjectsLocationsKeyRingsImportJobsList
projectsLocationsKeyRingsImportJobsList pPlkrijlParent_ =
  ProjectsLocationsKeyRingsImportJobsList'
    { _plkrijlParent = pPlkrijlParent_
    , _plkrijlXgafv = Nothing
    , _plkrijlUploadProtocol = Nothing
    , _plkrijlOrderBy = Nothing
    , _plkrijlAccessToken = Nothing
    , _plkrijlUploadType = Nothing
    , _plkrijlFilter = Nothing
    , _plkrijlPageToken = Nothing
    , _plkrijlPageSize = Nothing
    , _plkrijlCallback = Nothing
    }


-- | Required. The resource name of the KeyRing to list, in the format
-- \`projects\/*\/locations\/*\/keyRings\/*\`.
plkrijlParent :: Lens' ProjectsLocationsKeyRingsImportJobsList Text
plkrijlParent
  = lens _plkrijlParent
      (\ s a -> s{_plkrijlParent = a})

-- | V1 error format.
plkrijlXgafv :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Xgafv)
plkrijlXgafv
  = lens _plkrijlXgafv (\ s a -> s{_plkrijlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrijlUploadProtocol :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlUploadProtocol
  = lens _plkrijlUploadProtocol
      (\ s a -> s{_plkrijlUploadProtocol = a})

-- | Optional. Specify how the results should be sorted. If not specified,
-- the results will be sorted in the default order. For more information,
-- see [Sorting and filtering list
-- results](https:\/\/cloud.google.com\/kms\/docs\/sorting-and-filtering).
plkrijlOrderBy :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlOrderBy
  = lens _plkrijlOrderBy
      (\ s a -> s{_plkrijlOrderBy = a})

-- | OAuth access token.
plkrijlAccessToken :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlAccessToken
  = lens _plkrijlAccessToken
      (\ s a -> s{_plkrijlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrijlUploadType :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlUploadType
  = lens _plkrijlUploadType
      (\ s a -> s{_plkrijlUploadType = a})

-- | Optional. Only include resources that match the filter in the response.
-- For more information, see [Sorting and filtering list
-- results](https:\/\/cloud.google.com\/kms\/docs\/sorting-and-filtering).
plkrijlFilter :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlFilter
  = lens _plkrijlFilter
      (\ s a -> s{_plkrijlFilter = a})

-- | Optional. Optional pagination token, returned earlier via
-- ListImportJobsResponse.next_page_token.
plkrijlPageToken :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlPageToken
  = lens _plkrijlPageToken
      (\ s a -> s{_plkrijlPageToken = a})

-- | Optional. Optional limit on the number of ImportJobs to include in the
-- response. Further ImportJobs can subsequently be obtained by including
-- the ListImportJobsResponse.next_page_token in a subsequent request. If
-- unspecified, the server will pick an appropriate default.
plkrijlPageSize :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Int32)
plkrijlPageSize
  = lens _plkrijlPageSize
      (\ s a -> s{_plkrijlPageSize = a})
      . mapping _Coerce

-- | JSONP
plkrijlCallback :: Lens' ProjectsLocationsKeyRingsImportJobsList (Maybe Text)
plkrijlCallback
  = lens _plkrijlCallback
      (\ s a -> s{_plkrijlCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsImportJobsList
         where
        type Rs ProjectsLocationsKeyRingsImportJobsList =
             ListImportJobsResponse
        type Scopes ProjectsLocationsKeyRingsImportJobsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsImportJobsList'{..}
          = go _plkrijlParent _plkrijlXgafv
              _plkrijlUploadProtocol
              _plkrijlOrderBy
              _plkrijlAccessToken
              _plkrijlUploadType
              _plkrijlFilter
              _plkrijlPageToken
              _plkrijlPageSize
              _plkrijlCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsImportJobsListResource)
                      mempty

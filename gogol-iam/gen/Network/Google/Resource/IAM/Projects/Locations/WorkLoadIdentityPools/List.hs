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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all non-deleted WorkloadIdentityPools in a project. If
-- \`show_deleted\` is set to \`true\`, then deleted pools are also listed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.list@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.List
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsListResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsList
    , ProjectsLocationsWorkLoadIdentityPoolsList

    -- * Request Lenses
    , plwliplParent
    , plwliplXgafv
    , plwliplUploadProtocol
    , plwliplAccessToken
    , plwliplUploadType
    , plwliplShowDeleted
    , plwliplPageToken
    , plwliplPageSize
    , plwliplCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.list@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsList' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "workloadIdentityPools" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListWorkLoadIdentityPoolsResponse

-- | Lists all non-deleted WorkloadIdentityPools in a project. If
-- \`show_deleted\` is set to \`true\`, then deleted pools are also listed.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsList' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsList =
  ProjectsLocationsWorkLoadIdentityPoolsList'
    { _plwliplParent :: !Text
    , _plwliplXgafv :: !(Maybe Xgafv)
    , _plwliplUploadProtocol :: !(Maybe Text)
    , _plwliplAccessToken :: !(Maybe Text)
    , _plwliplUploadType :: !(Maybe Text)
    , _plwliplShowDeleted :: !(Maybe Bool)
    , _plwliplPageToken :: !(Maybe Text)
    , _plwliplPageSize :: !(Maybe (Textual Int32))
    , _plwliplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwliplParent'
--
-- * 'plwliplXgafv'
--
-- * 'plwliplUploadProtocol'
--
-- * 'plwliplAccessToken'
--
-- * 'plwliplUploadType'
--
-- * 'plwliplShowDeleted'
--
-- * 'plwliplPageToken'
--
-- * 'plwliplPageSize'
--
-- * 'plwliplCallback'
projectsLocationsWorkLoadIdentityPoolsList
    :: Text -- ^ 'plwliplParent'
    -> ProjectsLocationsWorkLoadIdentityPoolsList
projectsLocationsWorkLoadIdentityPoolsList pPlwliplParent_ =
  ProjectsLocationsWorkLoadIdentityPoolsList'
    { _plwliplParent = pPlwliplParent_
    , _plwliplXgafv = Nothing
    , _plwliplUploadProtocol = Nothing
    , _plwliplAccessToken = Nothing
    , _plwliplUploadType = Nothing
    , _plwliplShowDeleted = Nothing
    , _plwliplPageToken = Nothing
    , _plwliplPageSize = Nothing
    , _plwliplCallback = Nothing
    }


-- | Required. The parent resource to list pools for.
plwliplParent :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList Text
plwliplParent
  = lens _plwliplParent
      (\ s a -> s{_plwliplParent = a})

-- | V1 error format.
plwliplXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Xgafv)
plwliplXgafv
  = lens _plwliplXgafv (\ s a -> s{_plwliplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwliplUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Text)
plwliplUploadProtocol
  = lens _plwliplUploadProtocol
      (\ s a -> s{_plwliplUploadProtocol = a})

-- | OAuth access token.
plwliplAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Text)
plwliplAccessToken
  = lens _plwliplAccessToken
      (\ s a -> s{_plwliplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwliplUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Text)
plwliplUploadType
  = lens _plwliplUploadType
      (\ s a -> s{_plwliplUploadType = a})

-- | Whether to return soft-deleted pools.
plwliplShowDeleted :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Bool)
plwliplShowDeleted
  = lens _plwliplShowDeleted
      (\ s a -> s{_plwliplShowDeleted = a})

-- | A page token, received from a previous \`ListWorkloadIdentityPools\`
-- call. Provide this to retrieve the subsequent page.
plwliplPageToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Text)
plwliplPageToken
  = lens _plwliplPageToken
      (\ s a -> s{_plwliplPageToken = a})

-- | The maximum number of pools to return. If unspecified, at most 50 pools
-- are returned. The maximum value is 1000; values above are 1000 truncated
-- to 1000.
plwliplPageSize :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Int32)
plwliplPageSize
  = lens _plwliplPageSize
      (\ s a -> s{_plwliplPageSize = a})
      . mapping _Coerce

-- | JSONP
plwliplCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsList (Maybe Text)
plwliplCallback
  = lens _plwliplCallback
      (\ s a -> s{_plwliplCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsList
         where
        type Rs ProjectsLocationsWorkLoadIdentityPoolsList =
             ListWorkLoadIdentityPoolsResponse
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsList'{..}
          = go _plwliplParent _plwliplXgafv
              _plwliplUploadProtocol
              _plwliplAccessToken
              _plwliplUploadType
              _plwliplShowDeleted
              _plwliplPageToken
              _plwliplPageSize
              _plwliplCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsListResource)
                      mempty

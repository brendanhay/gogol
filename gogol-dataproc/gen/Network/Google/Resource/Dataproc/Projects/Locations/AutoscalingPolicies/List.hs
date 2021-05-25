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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists autoscaling policies in the project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.list@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.List
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesListResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesList
    , ProjectsLocationsAutoscalingPoliciesList

    -- * Request Lenses
    , plaplParent
    , plaplXgafv
    , plaplUploadProtocol
    , plaplAccessToken
    , plaplUploadType
    , plaplPageToken
    , plaplPageSize
    , plaplCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.list@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesList' request conforms to.
type ProjectsLocationsAutoscalingPoliciesListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "autoscalingPolicies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAutoscalingPoliciesResponse

-- | Lists autoscaling policies in the project.
--
-- /See:/ 'projectsLocationsAutoscalingPoliciesList' smart constructor.
data ProjectsLocationsAutoscalingPoliciesList =
  ProjectsLocationsAutoscalingPoliciesList'
    { _plaplParent :: !Text
    , _plaplXgafv :: !(Maybe Xgafv)
    , _plaplUploadProtocol :: !(Maybe Text)
    , _plaplAccessToken :: !(Maybe Text)
    , _plaplUploadType :: !(Maybe Text)
    , _plaplPageToken :: !(Maybe Text)
    , _plaplPageSize :: !(Maybe (Textual Int32))
    , _plaplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaplParent'
--
-- * 'plaplXgafv'
--
-- * 'plaplUploadProtocol'
--
-- * 'plaplAccessToken'
--
-- * 'plaplUploadType'
--
-- * 'plaplPageToken'
--
-- * 'plaplPageSize'
--
-- * 'plaplCallback'
projectsLocationsAutoscalingPoliciesList
    :: Text -- ^ 'plaplParent'
    -> ProjectsLocationsAutoscalingPoliciesList
projectsLocationsAutoscalingPoliciesList pPlaplParent_ =
  ProjectsLocationsAutoscalingPoliciesList'
    { _plaplParent = pPlaplParent_
    , _plaplXgafv = Nothing
    , _plaplUploadProtocol = Nothing
    , _plaplAccessToken = Nothing
    , _plaplUploadType = Nothing
    , _plaplPageToken = Nothing
    , _plaplPageSize = Nothing
    , _plaplCallback = Nothing
    }


-- | Required. The \"resource name\" of the region or location, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.list, the resource name of the
-- region has the following format:
-- projects\/{project_id}\/regions\/{region} For
-- projects.locations.autoscalingPolicies.list, the resource name of the
-- location has the following format:
-- projects\/{project_id}\/locations\/{location}
plaplParent :: Lens' ProjectsLocationsAutoscalingPoliciesList Text
plaplParent
  = lens _plaplParent (\ s a -> s{_plaplParent = a})

-- | V1 error format.
plaplXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Xgafv)
plaplXgafv
  = lens _plaplXgafv (\ s a -> s{_plaplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaplUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Text)
plaplUploadProtocol
  = lens _plaplUploadProtocol
      (\ s a -> s{_plaplUploadProtocol = a})

-- | OAuth access token.
plaplAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Text)
plaplAccessToken
  = lens _plaplAccessToken
      (\ s a -> s{_plaplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaplUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Text)
plaplUploadType
  = lens _plaplUploadType
      (\ s a -> s{_plaplUploadType = a})

-- | Optional. The page token, returned by a previous call, to request the
-- next page of results.
plaplPageToken :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Text)
plaplPageToken
  = lens _plaplPageToken
      (\ s a -> s{_plaplPageToken = a})

-- | Optional. The maximum number of results to return in each response. Must
-- be less than or equal to 1000. Defaults to 100.
plaplPageSize :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Int32)
plaplPageSize
  = lens _plaplPageSize
      (\ s a -> s{_plaplPageSize = a})
      . mapping _Coerce

-- | JSONP
plaplCallback :: Lens' ProjectsLocationsAutoscalingPoliciesList (Maybe Text)
plaplCallback
  = lens _plaplCallback
      (\ s a -> s{_plaplCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesList
         where
        type Rs ProjectsLocationsAutoscalingPoliciesList =
             ListAutoscalingPoliciesResponse
        type Scopes ProjectsLocationsAutoscalingPoliciesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesList'{..}
          = go _plaplParent _plaplXgafv _plaplUploadProtocol
              _plaplAccessToken
              _plaplUploadType
              _plaplPageToken
              _plaplPageSize
              _plaplCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesListResource)
                      mempty

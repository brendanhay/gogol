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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists autoscaling policies in the project.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.list@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.List
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesListResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesList
    , ProjectsRegionsAutoscalingPoliciesList

    -- * Request Lenses
    , praplParent
    , praplXgafv
    , praplUploadProtocol
    , praplAccessToken
    , praplUploadType
    , praplPageToken
    , praplPageSize
    , praplCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.list@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesList' request conforms to.
type ProjectsRegionsAutoscalingPoliciesListResource =
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
-- /See:/ 'projectsRegionsAutoscalingPoliciesList' smart constructor.
data ProjectsRegionsAutoscalingPoliciesList =
  ProjectsRegionsAutoscalingPoliciesList'
    { _praplParent :: !Text
    , _praplXgafv :: !(Maybe Xgafv)
    , _praplUploadProtocol :: !(Maybe Text)
    , _praplAccessToken :: !(Maybe Text)
    , _praplUploadType :: !(Maybe Text)
    , _praplPageToken :: !(Maybe Text)
    , _praplPageSize :: !(Maybe (Textual Int32))
    , _praplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'praplParent'
--
-- * 'praplXgafv'
--
-- * 'praplUploadProtocol'
--
-- * 'praplAccessToken'
--
-- * 'praplUploadType'
--
-- * 'praplPageToken'
--
-- * 'praplPageSize'
--
-- * 'praplCallback'
projectsRegionsAutoscalingPoliciesList
    :: Text -- ^ 'praplParent'
    -> ProjectsRegionsAutoscalingPoliciesList
projectsRegionsAutoscalingPoliciesList pPraplParent_ =
  ProjectsRegionsAutoscalingPoliciesList'
    { _praplParent = pPraplParent_
    , _praplXgafv = Nothing
    , _praplUploadProtocol = Nothing
    , _praplAccessToken = Nothing
    , _praplUploadType = Nothing
    , _praplPageToken = Nothing
    , _praplPageSize = Nothing
    , _praplCallback = Nothing
    }


-- | Required. The \"resource name\" of the region or location, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.list, the resource name of the
-- region has the following format:
-- projects\/{project_id}\/regions\/{region} For
-- projects.locations.autoscalingPolicies.list, the resource name of the
-- location has the following format:
-- projects\/{project_id}\/locations\/{location}
praplParent :: Lens' ProjectsRegionsAutoscalingPoliciesList Text
praplParent
  = lens _praplParent (\ s a -> s{_praplParent = a})

-- | V1 error format.
praplXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Xgafv)
praplXgafv
  = lens _praplXgafv (\ s a -> s{_praplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
praplUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Text)
praplUploadProtocol
  = lens _praplUploadProtocol
      (\ s a -> s{_praplUploadProtocol = a})

-- | OAuth access token.
praplAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Text)
praplAccessToken
  = lens _praplAccessToken
      (\ s a -> s{_praplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
praplUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Text)
praplUploadType
  = lens _praplUploadType
      (\ s a -> s{_praplUploadType = a})

-- | Optional. The page token, returned by a previous call, to request the
-- next page of results.
praplPageToken :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Text)
praplPageToken
  = lens _praplPageToken
      (\ s a -> s{_praplPageToken = a})

-- | Optional. The maximum number of results to return in each response. Must
-- be less than or equal to 1000. Defaults to 100.
praplPageSize :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Int32)
praplPageSize
  = lens _praplPageSize
      (\ s a -> s{_praplPageSize = a})
      . mapping _Coerce

-- | JSONP
praplCallback :: Lens' ProjectsRegionsAutoscalingPoliciesList (Maybe Text)
praplCallback
  = lens _praplCallback
      (\ s a -> s{_praplCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesList
         where
        type Rs ProjectsRegionsAutoscalingPoliciesList =
             ListAutoscalingPoliciesResponse
        type Scopes ProjectsRegionsAutoscalingPoliciesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesList'{..}
          = go _praplParent _praplXgafv _praplUploadProtocol
              _praplAccessToken
              _praplUploadType
              _praplPageToken
              _praplPageSize
              _praplCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsAutoscalingPoliciesListResource)
                      mempty

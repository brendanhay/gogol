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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves autoscaling policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.get@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Get
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesGetResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesGet
    , ProjectsLocationsAutoscalingPoliciesGet

    -- * Request Lenses
    , plapgXgafv
    , plapgUploadProtocol
    , plapgAccessToken
    , plapgUploadType
    , plapgName
    , plapgCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.get@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesGet' request conforms to.
type ProjectsLocationsAutoscalingPoliciesGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AutoscalingPolicy

-- | Retrieves autoscaling policy.
--
-- /See:/ 'projectsLocationsAutoscalingPoliciesGet' smart constructor.
data ProjectsLocationsAutoscalingPoliciesGet =
  ProjectsLocationsAutoscalingPoliciesGet'
    { _plapgXgafv :: !(Maybe Xgafv)
    , _plapgUploadProtocol :: !(Maybe Text)
    , _plapgAccessToken :: !(Maybe Text)
    , _plapgUploadType :: !(Maybe Text)
    , _plapgName :: !Text
    , _plapgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapgXgafv'
--
-- * 'plapgUploadProtocol'
--
-- * 'plapgAccessToken'
--
-- * 'plapgUploadType'
--
-- * 'plapgName'
--
-- * 'plapgCallback'
projectsLocationsAutoscalingPoliciesGet
    :: Text -- ^ 'plapgName'
    -> ProjectsLocationsAutoscalingPoliciesGet
projectsLocationsAutoscalingPoliciesGet pPlapgName_ =
  ProjectsLocationsAutoscalingPoliciesGet'
    { _plapgXgafv = Nothing
    , _plapgUploadProtocol = Nothing
    , _plapgAccessToken = Nothing
    , _plapgUploadType = Nothing
    , _plapgName = pPlapgName_
    , _plapgCallback = Nothing
    }


-- | V1 error format.
plapgXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesGet (Maybe Xgafv)
plapgXgafv
  = lens _plapgXgafv (\ s a -> s{_plapgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapgUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesGet (Maybe Text)
plapgUploadProtocol
  = lens _plapgUploadProtocol
      (\ s a -> s{_plapgUploadProtocol = a})

-- | OAuth access token.
plapgAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesGet (Maybe Text)
plapgAccessToken
  = lens _plapgAccessToken
      (\ s a -> s{_plapgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapgUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesGet (Maybe Text)
plapgUploadType
  = lens _plapgUploadType
      (\ s a -> s{_plapgUploadType = a})

-- | Required. The \"resource name\" of the autoscaling policy, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.get, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies.get, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
plapgName :: Lens' ProjectsLocationsAutoscalingPoliciesGet Text
plapgName
  = lens _plapgName (\ s a -> s{_plapgName = a})

-- | JSONP
plapgCallback :: Lens' ProjectsLocationsAutoscalingPoliciesGet (Maybe Text)
plapgCallback
  = lens _plapgCallback
      (\ s a -> s{_plapgCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesGet
         where
        type Rs ProjectsLocationsAutoscalingPoliciesGet =
             AutoscalingPolicy
        type Scopes ProjectsLocationsAutoscalingPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesGet'{..}
          = go _plapgName _plapgXgafv _plapgUploadProtocol
              _plapgAccessToken
              _plapgUploadType
              _plapgCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesGetResource)
                      mempty

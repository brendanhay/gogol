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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an autoscaling policy. It is an error to delete an autoscaling
-- policy that is in use by one or more clusters.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.delete@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Delete
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesDeleteResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesDelete
    , ProjectsLocationsAutoscalingPoliciesDelete

    -- * Request Lenses
    , plapdXgafv
    , plapdUploadProtocol
    , plapdAccessToken
    , plapdUploadType
    , plapdName
    , plapdCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.delete@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesDelete' request conforms to.
type ProjectsLocationsAutoscalingPoliciesDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an autoscaling policy. It is an error to delete an autoscaling
-- policy that is in use by one or more clusters.
--
-- /See:/ 'projectsLocationsAutoscalingPoliciesDelete' smart constructor.
data ProjectsLocationsAutoscalingPoliciesDelete =
  ProjectsLocationsAutoscalingPoliciesDelete'
    { _plapdXgafv :: !(Maybe Xgafv)
    , _plapdUploadProtocol :: !(Maybe Text)
    , _plapdAccessToken :: !(Maybe Text)
    , _plapdUploadType :: !(Maybe Text)
    , _plapdName :: !Text
    , _plapdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapdXgafv'
--
-- * 'plapdUploadProtocol'
--
-- * 'plapdAccessToken'
--
-- * 'plapdUploadType'
--
-- * 'plapdName'
--
-- * 'plapdCallback'
projectsLocationsAutoscalingPoliciesDelete
    :: Text -- ^ 'plapdName'
    -> ProjectsLocationsAutoscalingPoliciesDelete
projectsLocationsAutoscalingPoliciesDelete pPlapdName_ =
  ProjectsLocationsAutoscalingPoliciesDelete'
    { _plapdXgafv = Nothing
    , _plapdUploadProtocol = Nothing
    , _plapdAccessToken = Nothing
    , _plapdUploadType = Nothing
    , _plapdName = pPlapdName_
    , _plapdCallback = Nothing
    }


-- | V1 error format.
plapdXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesDelete (Maybe Xgafv)
plapdXgafv
  = lens _plapdXgafv (\ s a -> s{_plapdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapdUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesDelete (Maybe Text)
plapdUploadProtocol
  = lens _plapdUploadProtocol
      (\ s a -> s{_plapdUploadProtocol = a})

-- | OAuth access token.
plapdAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesDelete (Maybe Text)
plapdAccessToken
  = lens _plapdAccessToken
      (\ s a -> s{_plapdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapdUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesDelete (Maybe Text)
plapdUploadType
  = lens _plapdUploadType
      (\ s a -> s{_plapdUploadType = a})

-- | Required. The \"resource name\" of the autoscaling policy, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.delete, the resource name of the
-- policy has the following format:
-- projects\/{project_id}\/regions\/{region}\/autoscalingPolicies\/{policy_id}
-- For projects.locations.autoscalingPolicies.delete, the resource name of
-- the policy has the following format:
-- projects\/{project_id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
plapdName :: Lens' ProjectsLocationsAutoscalingPoliciesDelete Text
plapdName
  = lens _plapdName (\ s a -> s{_plapdName = a})

-- | JSONP
plapdCallback :: Lens' ProjectsLocationsAutoscalingPoliciesDelete (Maybe Text)
plapdCallback
  = lens _plapdCallback
      (\ s a -> s{_plapdCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesDelete
         where
        type Rs ProjectsLocationsAutoscalingPoliciesDelete =
             Empty
        type Scopes
               ProjectsLocationsAutoscalingPoliciesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesDelete'{..}
          = go _plapdName _plapdXgafv _plapdUploadProtocol
              _plapdAccessToken
              _plapdUploadType
              _plapdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesDeleteResource)
                      mempty

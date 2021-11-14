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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new autoscaling policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.create@.
module Network.Google.Resource.Dataproc.Projects.Locations.AutoscalingPolicies.Create
    (
    -- * REST Resource
      ProjectsLocationsAutoscalingPoliciesCreateResource

    -- * Creating a Request
    , projectsLocationsAutoscalingPoliciesCreate
    , ProjectsLocationsAutoscalingPoliciesCreate

    -- * Request Lenses
    , plapcParent
    , plapcXgafv
    , plapcUploadProtocol
    , plapcAccessToken
    , plapcUploadType
    , plapcPayload
    , plapcCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.create@ method which the
-- 'ProjectsLocationsAutoscalingPoliciesCreate' request conforms to.
type ProjectsLocationsAutoscalingPoliciesCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "autoscalingPolicies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AutoscalingPolicy :>
                         Post '[JSON] AutoscalingPolicy

-- | Creates new autoscaling policy.
--
-- /See:/ 'projectsLocationsAutoscalingPoliciesCreate' smart constructor.
data ProjectsLocationsAutoscalingPoliciesCreate =
  ProjectsLocationsAutoscalingPoliciesCreate'
    { _plapcParent :: !Text
    , _plapcXgafv :: !(Maybe Xgafv)
    , _plapcUploadProtocol :: !(Maybe Text)
    , _plapcAccessToken :: !(Maybe Text)
    , _plapcUploadType :: !(Maybe Text)
    , _plapcPayload :: !AutoscalingPolicy
    , _plapcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAutoscalingPoliciesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapcParent'
--
-- * 'plapcXgafv'
--
-- * 'plapcUploadProtocol'
--
-- * 'plapcAccessToken'
--
-- * 'plapcUploadType'
--
-- * 'plapcPayload'
--
-- * 'plapcCallback'
projectsLocationsAutoscalingPoliciesCreate
    :: Text -- ^ 'plapcParent'
    -> AutoscalingPolicy -- ^ 'plapcPayload'
    -> ProjectsLocationsAutoscalingPoliciesCreate
projectsLocationsAutoscalingPoliciesCreate pPlapcParent_ pPlapcPayload_ =
  ProjectsLocationsAutoscalingPoliciesCreate'
    { _plapcParent = pPlapcParent_
    , _plapcXgafv = Nothing
    , _plapcUploadProtocol = Nothing
    , _plapcAccessToken = Nothing
    , _plapcUploadType = Nothing
    , _plapcPayload = pPlapcPayload_
    , _plapcCallback = Nothing
    }


-- | Required. The \"resource name\" of the region or location, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.create, the resource name of the
-- region has the following format:
-- projects\/{project_id}\/regions\/{region} For
-- projects.locations.autoscalingPolicies.create, the resource name of the
-- location has the following format:
-- projects\/{project_id}\/locations\/{location}
plapcParent :: Lens' ProjectsLocationsAutoscalingPoliciesCreate Text
plapcParent
  = lens _plapcParent (\ s a -> s{_plapcParent = a})

-- | V1 error format.
plapcXgafv :: Lens' ProjectsLocationsAutoscalingPoliciesCreate (Maybe Xgafv)
plapcXgafv
  = lens _plapcXgafv (\ s a -> s{_plapcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapcUploadProtocol :: Lens' ProjectsLocationsAutoscalingPoliciesCreate (Maybe Text)
plapcUploadProtocol
  = lens _plapcUploadProtocol
      (\ s a -> s{_plapcUploadProtocol = a})

-- | OAuth access token.
plapcAccessToken :: Lens' ProjectsLocationsAutoscalingPoliciesCreate (Maybe Text)
plapcAccessToken
  = lens _plapcAccessToken
      (\ s a -> s{_plapcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapcUploadType :: Lens' ProjectsLocationsAutoscalingPoliciesCreate (Maybe Text)
plapcUploadType
  = lens _plapcUploadType
      (\ s a -> s{_plapcUploadType = a})

-- | Multipart request metadata.
plapcPayload :: Lens' ProjectsLocationsAutoscalingPoliciesCreate AutoscalingPolicy
plapcPayload
  = lens _plapcPayload (\ s a -> s{_plapcPayload = a})

-- | JSONP
plapcCallback :: Lens' ProjectsLocationsAutoscalingPoliciesCreate (Maybe Text)
plapcCallback
  = lens _plapcCallback
      (\ s a -> s{_plapcCallback = a})

instance GoogleRequest
           ProjectsLocationsAutoscalingPoliciesCreate
         where
        type Rs ProjectsLocationsAutoscalingPoliciesCreate =
             AutoscalingPolicy
        type Scopes
               ProjectsLocationsAutoscalingPoliciesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsAutoscalingPoliciesCreate'{..}
          = go _plapcParent _plapcXgafv _plapcUploadProtocol
              _plapcAccessToken
              _plapcUploadType
              _plapcCallback
              (Just AltJSON)
              _plapcPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAutoscalingPoliciesCreateResource)
                      mempty

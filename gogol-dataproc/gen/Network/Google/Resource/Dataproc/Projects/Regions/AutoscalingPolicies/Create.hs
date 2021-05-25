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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new autoscaling policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.create@.
module Network.Google.Resource.Dataproc.Projects.Regions.AutoscalingPolicies.Create
    (
    -- * REST Resource
      ProjectsRegionsAutoscalingPoliciesCreateResource

    -- * Creating a Request
    , projectsRegionsAutoscalingPoliciesCreate
    , ProjectsRegionsAutoscalingPoliciesCreate

    -- * Request Lenses
    , prapcParent
    , prapcXgafv
    , prapcUploadProtocol
    , prapcAccessToken
    , prapcUploadType
    , prapcPayload
    , prapcCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.create@ method which the
-- 'ProjectsRegionsAutoscalingPoliciesCreate' request conforms to.
type ProjectsRegionsAutoscalingPoliciesCreateResource
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
-- /See:/ 'projectsRegionsAutoscalingPoliciesCreate' smart constructor.
data ProjectsRegionsAutoscalingPoliciesCreate =
  ProjectsRegionsAutoscalingPoliciesCreate'
    { _prapcParent :: !Text
    , _prapcXgafv :: !(Maybe Xgafv)
    , _prapcUploadProtocol :: !(Maybe Text)
    , _prapcAccessToken :: !(Maybe Text)
    , _prapcUploadType :: !(Maybe Text)
    , _prapcPayload :: !AutoscalingPolicy
    , _prapcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsAutoscalingPoliciesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prapcParent'
--
-- * 'prapcXgafv'
--
-- * 'prapcUploadProtocol'
--
-- * 'prapcAccessToken'
--
-- * 'prapcUploadType'
--
-- * 'prapcPayload'
--
-- * 'prapcCallback'
projectsRegionsAutoscalingPoliciesCreate
    :: Text -- ^ 'prapcParent'
    -> AutoscalingPolicy -- ^ 'prapcPayload'
    -> ProjectsRegionsAutoscalingPoliciesCreate
projectsRegionsAutoscalingPoliciesCreate pPrapcParent_ pPrapcPayload_ =
  ProjectsRegionsAutoscalingPoliciesCreate'
    { _prapcParent = pPrapcParent_
    , _prapcXgafv = Nothing
    , _prapcUploadProtocol = Nothing
    , _prapcAccessToken = Nothing
    , _prapcUploadType = Nothing
    , _prapcPayload = pPrapcPayload_
    , _prapcCallback = Nothing
    }


-- | Required. The \"resource name\" of the region or location, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.autoscalingPolicies.create, the resource name of the
-- region has the following format:
-- projects\/{project_id}\/regions\/{region} For
-- projects.locations.autoscalingPolicies.create, the resource name of the
-- location has the following format:
-- projects\/{project_id}\/locations\/{location}
prapcParent :: Lens' ProjectsRegionsAutoscalingPoliciesCreate Text
prapcParent
  = lens _prapcParent (\ s a -> s{_prapcParent = a})

-- | V1 error format.
prapcXgafv :: Lens' ProjectsRegionsAutoscalingPoliciesCreate (Maybe Xgafv)
prapcXgafv
  = lens _prapcXgafv (\ s a -> s{_prapcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prapcUploadProtocol :: Lens' ProjectsRegionsAutoscalingPoliciesCreate (Maybe Text)
prapcUploadProtocol
  = lens _prapcUploadProtocol
      (\ s a -> s{_prapcUploadProtocol = a})

-- | OAuth access token.
prapcAccessToken :: Lens' ProjectsRegionsAutoscalingPoliciesCreate (Maybe Text)
prapcAccessToken
  = lens _prapcAccessToken
      (\ s a -> s{_prapcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prapcUploadType :: Lens' ProjectsRegionsAutoscalingPoliciesCreate (Maybe Text)
prapcUploadType
  = lens _prapcUploadType
      (\ s a -> s{_prapcUploadType = a})

-- | Multipart request metadata.
prapcPayload :: Lens' ProjectsRegionsAutoscalingPoliciesCreate AutoscalingPolicy
prapcPayload
  = lens _prapcPayload (\ s a -> s{_prapcPayload = a})

-- | JSONP
prapcCallback :: Lens' ProjectsRegionsAutoscalingPoliciesCreate (Maybe Text)
prapcCallback
  = lens _prapcCallback
      (\ s a -> s{_prapcCallback = a})

instance GoogleRequest
           ProjectsRegionsAutoscalingPoliciesCreate
         where
        type Rs ProjectsRegionsAutoscalingPoliciesCreate =
             AutoscalingPolicy
        type Scopes ProjectsRegionsAutoscalingPoliciesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsAutoscalingPoliciesCreate'{..}
          = go _prapcParent _prapcXgafv _prapcUploadProtocol
              _prapcAccessToken
              _prapcUploadType
              _prapcCallback
              (Just AltJSON)
              _prapcPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsAutoscalingPoliciesCreateResource)
                      mempty

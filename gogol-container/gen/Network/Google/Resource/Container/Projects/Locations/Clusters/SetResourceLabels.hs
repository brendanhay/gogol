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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetResourceLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets labels on a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setResourceLabels@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetResourceLabels
    (
    -- * REST Resource
      ProjectsLocationsClustersSetResourceLabelsResource

    -- * Creating a Request
    , projectsLocationsClustersSetResourceLabels
    , ProjectsLocationsClustersSetResourceLabels

    -- * Request Lenses
    , plcsrlXgafv
    , plcsrlUploadProtocol
    , plcsrlAccessToken
    , plcsrlUploadType
    , plcsrlPayload
    , plcsrlName
    , plcsrlCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setResourceLabels@ method which the
-- 'ProjectsLocationsClustersSetResourceLabels' request conforms to.
type ProjectsLocationsClustersSetResourceLabelsResource
     =
     "v1" :>
       CaptureMode "name" "setResourceLabels" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetLabelsRequest :>
                       Post '[JSON] Operation

-- | Sets labels on a cluster.
--
-- /See:/ 'projectsLocationsClustersSetResourceLabels' smart constructor.
data ProjectsLocationsClustersSetResourceLabels = ProjectsLocationsClustersSetResourceLabels'
    { _plcsrlXgafv          :: !(Maybe Xgafv)
    , _plcsrlUploadProtocol :: !(Maybe Text)
    , _plcsrlAccessToken    :: !(Maybe Text)
    , _plcsrlUploadType     :: !(Maybe Text)
    , _plcsrlPayload        :: !SetLabelsRequest
    , _plcsrlName           :: !Text
    , _plcsrlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsClustersSetResourceLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsrlXgafv'
--
-- * 'plcsrlUploadProtocol'
--
-- * 'plcsrlAccessToken'
--
-- * 'plcsrlUploadType'
--
-- * 'plcsrlPayload'
--
-- * 'plcsrlName'
--
-- * 'plcsrlCallback'
projectsLocationsClustersSetResourceLabels
    :: SetLabelsRequest -- ^ 'plcsrlPayload'
    -> Text -- ^ 'plcsrlName'
    -> ProjectsLocationsClustersSetResourceLabels
projectsLocationsClustersSetResourceLabels pPlcsrlPayload_ pPlcsrlName_ =
    ProjectsLocationsClustersSetResourceLabels'
    { _plcsrlXgafv = Nothing
    , _plcsrlUploadProtocol = Nothing
    , _plcsrlAccessToken = Nothing
    , _plcsrlUploadType = Nothing
    , _plcsrlPayload = pPlcsrlPayload_
    , _plcsrlName = pPlcsrlName_
    , _plcsrlCallback = Nothing
    }

-- | V1 error format.
plcsrlXgafv :: Lens' ProjectsLocationsClustersSetResourceLabels (Maybe Xgafv)
plcsrlXgafv
  = lens _plcsrlXgafv (\ s a -> s{_plcsrlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsrlUploadProtocol :: Lens' ProjectsLocationsClustersSetResourceLabels (Maybe Text)
plcsrlUploadProtocol
  = lens _plcsrlUploadProtocol
      (\ s a -> s{_plcsrlUploadProtocol = a})

-- | OAuth access token.
plcsrlAccessToken :: Lens' ProjectsLocationsClustersSetResourceLabels (Maybe Text)
plcsrlAccessToken
  = lens _plcsrlAccessToken
      (\ s a -> s{_plcsrlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsrlUploadType :: Lens' ProjectsLocationsClustersSetResourceLabels (Maybe Text)
plcsrlUploadType
  = lens _plcsrlUploadType
      (\ s a -> s{_plcsrlUploadType = a})

-- | Multipart request metadata.
plcsrlPayload :: Lens' ProjectsLocationsClustersSetResourceLabels SetLabelsRequest
plcsrlPayload
  = lens _plcsrlPayload
      (\ s a -> s{_plcsrlPayload = a})

-- | The name (project, location, cluster id) of the cluster to set labels.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcsrlName :: Lens' ProjectsLocationsClustersSetResourceLabels Text
plcsrlName
  = lens _plcsrlName (\ s a -> s{_plcsrlName = a})

-- | JSONP
plcsrlCallback :: Lens' ProjectsLocationsClustersSetResourceLabels (Maybe Text)
plcsrlCallback
  = lens _plcsrlCallback
      (\ s a -> s{_plcsrlCallback = a})

instance GoogleRequest
         ProjectsLocationsClustersSetResourceLabels where
        type Rs ProjectsLocationsClustersSetResourceLabels =
             Operation
        type Scopes
               ProjectsLocationsClustersSetResourceLabels
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetResourceLabels'{..}
          = go _plcsrlName _plcsrlXgafv _plcsrlUploadProtocol
              _plcsrlAccessToken
              _plcsrlUploadType
              _plcsrlCallback
              (Just AltJSON)
              _plcsrlPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsClustersSetResourceLabelsResource)
                      mempty

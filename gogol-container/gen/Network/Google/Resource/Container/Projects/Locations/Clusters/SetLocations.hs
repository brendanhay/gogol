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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetLocations
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the locations for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setLocations@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetLocations
    (
    -- * REST Resource
      ProjectsLocationsClustersSetLocationsResource

    -- * Creating a Request
    , projectsLocationsClustersSetLocations
    , ProjectsLocationsClustersSetLocations

    -- * Request Lenses
    , plcslsXgafv
    , plcslsUploadProtocol
    , plcslsAccessToken
    , plcslsUploadType
    , plcslsPayload
    , plcslsName
    , plcslsCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setLocations@ method which the
-- 'ProjectsLocationsClustersSetLocations' request conforms to.
type ProjectsLocationsClustersSetLocationsResource =
     "v1" :>
       CaptureMode "name" "setLocations" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetLocationsRequest :>
                       Post '[JSON] Operation

-- | Sets the locations for a specific cluster.
--
-- /See:/ 'projectsLocationsClustersSetLocations' smart constructor.
data ProjectsLocationsClustersSetLocations =
  ProjectsLocationsClustersSetLocations'
    { _plcslsXgafv          :: !(Maybe Xgafv)
    , _plcslsUploadProtocol :: !(Maybe Text)
    , _plcslsAccessToken    :: !(Maybe Text)
    , _plcslsUploadType     :: !(Maybe Text)
    , _plcslsPayload        :: !SetLocationsRequest
    , _plcslsName           :: !Text
    , _plcslsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersSetLocations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcslsXgafv'
--
-- * 'plcslsUploadProtocol'
--
-- * 'plcslsAccessToken'
--
-- * 'plcslsUploadType'
--
-- * 'plcslsPayload'
--
-- * 'plcslsName'
--
-- * 'plcslsCallback'
projectsLocationsClustersSetLocations
    :: SetLocationsRequest -- ^ 'plcslsPayload'
    -> Text -- ^ 'plcslsName'
    -> ProjectsLocationsClustersSetLocations
projectsLocationsClustersSetLocations pPlcslsPayload_ pPlcslsName_ =
  ProjectsLocationsClustersSetLocations'
    { _plcslsXgafv = Nothing
    , _plcslsUploadProtocol = Nothing
    , _plcslsAccessToken = Nothing
    , _plcslsUploadType = Nothing
    , _plcslsPayload = pPlcslsPayload_
    , _plcslsName = pPlcslsName_
    , _plcslsCallback = Nothing
    }


-- | V1 error format.
plcslsXgafv :: Lens' ProjectsLocationsClustersSetLocations (Maybe Xgafv)
plcslsXgafv
  = lens _plcslsXgafv (\ s a -> s{_plcslsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcslsUploadProtocol :: Lens' ProjectsLocationsClustersSetLocations (Maybe Text)
plcslsUploadProtocol
  = lens _plcslsUploadProtocol
      (\ s a -> s{_plcslsUploadProtocol = a})

-- | OAuth access token.
plcslsAccessToken :: Lens' ProjectsLocationsClustersSetLocations (Maybe Text)
plcslsAccessToken
  = lens _plcslsAccessToken
      (\ s a -> s{_plcslsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcslsUploadType :: Lens' ProjectsLocationsClustersSetLocations (Maybe Text)
plcslsUploadType
  = lens _plcslsUploadType
      (\ s a -> s{_plcslsUploadType = a})

-- | Multipart request metadata.
plcslsPayload :: Lens' ProjectsLocationsClustersSetLocations SetLocationsRequest
plcslsPayload
  = lens _plcslsPayload
      (\ s a -> s{_plcslsPayload = a})

-- | The name (project, location, cluster) of the cluster to set locations.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcslsName :: Lens' ProjectsLocationsClustersSetLocations Text
plcslsName
  = lens _plcslsName (\ s a -> s{_plcslsName = a})

-- | JSONP
plcslsCallback :: Lens' ProjectsLocationsClustersSetLocations (Maybe Text)
plcslsCallback
  = lens _plcslsCallback
      (\ s a -> s{_plcslsCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersSetLocations
         where
        type Rs ProjectsLocationsClustersSetLocations =
             Operation
        type Scopes ProjectsLocationsClustersSetLocations =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetLocations'{..}
          = go _plcslsName _plcslsXgafv _plcslsUploadProtocol
              _plcslsAccessToken
              _plcslsUploadType
              _plcslsCallback
              (Just AltJSON)
              _plcslsPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersSetLocationsResource)
                      mempty

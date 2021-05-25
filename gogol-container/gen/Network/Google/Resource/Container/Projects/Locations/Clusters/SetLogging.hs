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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetLogging
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the logging service for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setLogging@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetLogging
    (
    -- * REST Resource
      ProjectsLocationsClustersSetLoggingResource

    -- * Creating a Request
    , projectsLocationsClustersSetLogging
    , ProjectsLocationsClustersSetLogging

    -- * Request Lenses
    , plcslXgafv
    , plcslUploadProtocol
    , plcslAccessToken
    , plcslUploadType
    , plcslPayload
    , plcslName
    , plcslCallback
    ) where

import Network.Google.Container.Types
import Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setLogging@ method which the
-- 'ProjectsLocationsClustersSetLogging' request conforms to.
type ProjectsLocationsClustersSetLoggingResource =
     "v1" :>
       CaptureMode "name" "setLogging" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetLoggingServiceRequest :>
                       Post '[JSON] Operation

-- | Sets the logging service for a specific cluster.
--
-- /See:/ 'projectsLocationsClustersSetLogging' smart constructor.
data ProjectsLocationsClustersSetLogging =
  ProjectsLocationsClustersSetLogging'
    { _plcslXgafv :: !(Maybe Xgafv)
    , _plcslUploadProtocol :: !(Maybe Text)
    , _plcslAccessToken :: !(Maybe Text)
    , _plcslUploadType :: !(Maybe Text)
    , _plcslPayload :: !SetLoggingServiceRequest
    , _plcslName :: !Text
    , _plcslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersSetLogging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcslXgafv'
--
-- * 'plcslUploadProtocol'
--
-- * 'plcslAccessToken'
--
-- * 'plcslUploadType'
--
-- * 'plcslPayload'
--
-- * 'plcslName'
--
-- * 'plcslCallback'
projectsLocationsClustersSetLogging
    :: SetLoggingServiceRequest -- ^ 'plcslPayload'
    -> Text -- ^ 'plcslName'
    -> ProjectsLocationsClustersSetLogging
projectsLocationsClustersSetLogging pPlcslPayload_ pPlcslName_ =
  ProjectsLocationsClustersSetLogging'
    { _plcslXgafv = Nothing
    , _plcslUploadProtocol = Nothing
    , _plcslAccessToken = Nothing
    , _plcslUploadType = Nothing
    , _plcslPayload = pPlcslPayload_
    , _plcslName = pPlcslName_
    , _plcslCallback = Nothing
    }


-- | V1 error format.
plcslXgafv :: Lens' ProjectsLocationsClustersSetLogging (Maybe Xgafv)
plcslXgafv
  = lens _plcslXgafv (\ s a -> s{_plcslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcslUploadProtocol :: Lens' ProjectsLocationsClustersSetLogging (Maybe Text)
plcslUploadProtocol
  = lens _plcslUploadProtocol
      (\ s a -> s{_plcslUploadProtocol = a})

-- | OAuth access token.
plcslAccessToken :: Lens' ProjectsLocationsClustersSetLogging (Maybe Text)
plcslAccessToken
  = lens _plcslAccessToken
      (\ s a -> s{_plcslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcslUploadType :: Lens' ProjectsLocationsClustersSetLogging (Maybe Text)
plcslUploadType
  = lens _plcslUploadType
      (\ s a -> s{_plcslUploadType = a})

-- | Multipart request metadata.
plcslPayload :: Lens' ProjectsLocationsClustersSetLogging SetLoggingServiceRequest
plcslPayload
  = lens _plcslPayload (\ s a -> s{_plcslPayload = a})

-- | The name (project, location, cluster) of the cluster to set logging.
-- Specified in the format \`projects\/*\/locations\/*\/clusters\/*\`.
plcslName :: Lens' ProjectsLocationsClustersSetLogging Text
plcslName
  = lens _plcslName (\ s a -> s{_plcslName = a})

-- | JSONP
plcslCallback :: Lens' ProjectsLocationsClustersSetLogging (Maybe Text)
plcslCallback
  = lens _plcslCallback
      (\ s a -> s{_plcslCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersSetLogging
         where
        type Rs ProjectsLocationsClustersSetLogging =
             Operation
        type Scopes ProjectsLocationsClustersSetLogging =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetLogging'{..}
          = go _plcslName _plcslXgafv _plcslUploadProtocol
              _plcslAccessToken
              _plcslUploadType
              _plcslCallback
              (Just AltJSON)
              _plcslPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersSetLoggingResource)
                      mempty

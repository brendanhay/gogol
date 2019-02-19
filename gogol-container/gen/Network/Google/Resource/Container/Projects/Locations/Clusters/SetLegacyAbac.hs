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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetLegacyAbac
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setLegacyAbac@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetLegacyAbac
    (
    -- * REST Resource
      ProjectsLocationsClustersSetLegacyAbacResource

    -- * Creating a Request
    , projectsLocationsClustersSetLegacyAbac
    , ProjectsLocationsClustersSetLegacyAbac

    -- * Request Lenses
    , plcslaXgafv
    , plcslaUploadProtocol
    , plcslaAccessToken
    , plcslaUploadType
    , plcslaPayload
    , plcslaName
    , plcslaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setLegacyAbac@ method which the
-- 'ProjectsLocationsClustersSetLegacyAbac' request conforms to.
type ProjectsLocationsClustersSetLegacyAbacResource =
     "v1" :>
       CaptureMode "name" "setLegacyAbac" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetLegacyAbacRequest :>
                       Post '[JSON] Operation

-- | Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ 'projectsLocationsClustersSetLegacyAbac' smart constructor.
data ProjectsLocationsClustersSetLegacyAbac =
  ProjectsLocationsClustersSetLegacyAbac'
    { _plcslaXgafv          :: !(Maybe Xgafv)
    , _plcslaUploadProtocol :: !(Maybe Text)
    , _plcslaAccessToken    :: !(Maybe Text)
    , _plcslaUploadType     :: !(Maybe Text)
    , _plcslaPayload        :: !SetLegacyAbacRequest
    , _plcslaName           :: !Text
    , _plcslaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsClustersSetLegacyAbac' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcslaXgafv'
--
-- * 'plcslaUploadProtocol'
--
-- * 'plcslaAccessToken'
--
-- * 'plcslaUploadType'
--
-- * 'plcslaPayload'
--
-- * 'plcslaName'
--
-- * 'plcslaCallback'
projectsLocationsClustersSetLegacyAbac
    :: SetLegacyAbacRequest -- ^ 'plcslaPayload'
    -> Text -- ^ 'plcslaName'
    -> ProjectsLocationsClustersSetLegacyAbac
projectsLocationsClustersSetLegacyAbac pPlcslaPayload_ pPlcslaName_ =
  ProjectsLocationsClustersSetLegacyAbac'
    { _plcslaXgafv = Nothing
    , _plcslaUploadProtocol = Nothing
    , _plcslaAccessToken = Nothing
    , _plcslaUploadType = Nothing
    , _plcslaPayload = pPlcslaPayload_
    , _plcslaName = pPlcslaName_
    , _plcslaCallback = Nothing
    }


-- | V1 error format.
plcslaXgafv :: Lens' ProjectsLocationsClustersSetLegacyAbac (Maybe Xgafv)
plcslaXgafv
  = lens _plcslaXgafv (\ s a -> s{_plcslaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcslaUploadProtocol :: Lens' ProjectsLocationsClustersSetLegacyAbac (Maybe Text)
plcslaUploadProtocol
  = lens _plcslaUploadProtocol
      (\ s a -> s{_plcslaUploadProtocol = a})

-- | OAuth access token.
plcslaAccessToken :: Lens' ProjectsLocationsClustersSetLegacyAbac (Maybe Text)
plcslaAccessToken
  = lens _plcslaAccessToken
      (\ s a -> s{_plcslaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcslaUploadType :: Lens' ProjectsLocationsClustersSetLegacyAbac (Maybe Text)
plcslaUploadType
  = lens _plcslaUploadType
      (\ s a -> s{_plcslaUploadType = a})

-- | Multipart request metadata.
plcslaPayload :: Lens' ProjectsLocationsClustersSetLegacyAbac SetLegacyAbacRequest
plcslaPayload
  = lens _plcslaPayload
      (\ s a -> s{_plcslaPayload = a})

-- | The name (project, location, cluster id) of the cluster to set legacy
-- abac. Specified in the format
-- \'projects\/*\/locations\/*\/clusters\/*\'.
plcslaName :: Lens' ProjectsLocationsClustersSetLegacyAbac Text
plcslaName
  = lens _plcslaName (\ s a -> s{_plcslaName = a})

-- | JSONP
plcslaCallback :: Lens' ProjectsLocationsClustersSetLegacyAbac (Maybe Text)
plcslaCallback
  = lens _plcslaCallback
      (\ s a -> s{_plcslaCallback = a})

instance GoogleRequest
           ProjectsLocationsClustersSetLegacyAbac
         where
        type Rs ProjectsLocationsClustersSetLegacyAbac =
             Operation
        type Scopes ProjectsLocationsClustersSetLegacyAbac =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetLegacyAbac'{..}
          = go _plcslaName _plcslaXgafv _plcslaUploadProtocol
              _plcslaAccessToken
              _plcslaUploadType
              _plcslaCallback
              (Just AltJSON)
              _plcslaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersSetLegacyAbacResource)
                      mempty

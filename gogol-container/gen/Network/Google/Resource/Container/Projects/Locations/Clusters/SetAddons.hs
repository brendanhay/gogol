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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetAddons
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the addons for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setAddons@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetAddons
    (
    -- * REST Resource
      ProjectsLocationsClustersSetAddonsResource

    -- * Creating a Request
    , projectsLocationsClustersSetAddons
    , ProjectsLocationsClustersSetAddons

    -- * Request Lenses
    , plcsaXgafv
    , plcsaUploadProtocol
    , plcsaAccessToken
    , plcsaUploadType
    , plcsaPayload
    , plcsaName
    , plcsaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setAddons@ method which the
-- 'ProjectsLocationsClustersSetAddons' request conforms to.
type ProjectsLocationsClustersSetAddonsResource =
     "v1" :>
       CaptureMode "name" "setAddons" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetAddonsConfigRequest :>
                       Post '[JSON] Operation

-- | Sets the addons for a specific cluster.
--
-- /See:/ 'projectsLocationsClustersSetAddons' smart constructor.
data ProjectsLocationsClustersSetAddons = ProjectsLocationsClustersSetAddons'
    { _plcsaXgafv          :: !(Maybe Xgafv)
    , _plcsaUploadProtocol :: !(Maybe Text)
    , _plcsaAccessToken    :: !(Maybe Text)
    , _plcsaUploadType     :: !(Maybe Text)
    , _plcsaPayload        :: !SetAddonsConfigRequest
    , _plcsaName           :: !Text
    , _plcsaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsClustersSetAddons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsaXgafv'
--
-- * 'plcsaUploadProtocol'
--
-- * 'plcsaAccessToken'
--
-- * 'plcsaUploadType'
--
-- * 'plcsaPayload'
--
-- * 'plcsaName'
--
-- * 'plcsaCallback'
projectsLocationsClustersSetAddons
    :: SetAddonsConfigRequest -- ^ 'plcsaPayload'
    -> Text -- ^ 'plcsaName'
    -> ProjectsLocationsClustersSetAddons
projectsLocationsClustersSetAddons pPlcsaPayload_ pPlcsaName_ =
    ProjectsLocationsClustersSetAddons'
    { _plcsaXgafv = Nothing
    , _plcsaUploadProtocol = Nothing
    , _plcsaAccessToken = Nothing
    , _plcsaUploadType = Nothing
    , _plcsaPayload = pPlcsaPayload_
    , _plcsaName = pPlcsaName_
    , _plcsaCallback = Nothing
    }

-- | V1 error format.
plcsaXgafv :: Lens' ProjectsLocationsClustersSetAddons (Maybe Xgafv)
plcsaXgafv
  = lens _plcsaXgafv (\ s a -> s{_plcsaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsaUploadProtocol :: Lens' ProjectsLocationsClustersSetAddons (Maybe Text)
plcsaUploadProtocol
  = lens _plcsaUploadProtocol
      (\ s a -> s{_plcsaUploadProtocol = a})

-- | OAuth access token.
plcsaAccessToken :: Lens' ProjectsLocationsClustersSetAddons (Maybe Text)
plcsaAccessToken
  = lens _plcsaAccessToken
      (\ s a -> s{_plcsaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsaUploadType :: Lens' ProjectsLocationsClustersSetAddons (Maybe Text)
plcsaUploadType
  = lens _plcsaUploadType
      (\ s a -> s{_plcsaUploadType = a})

-- | Multipart request metadata.
plcsaPayload :: Lens' ProjectsLocationsClustersSetAddons SetAddonsConfigRequest
plcsaPayload
  = lens _plcsaPayload (\ s a -> s{_plcsaPayload = a})

-- | The name (project, location, cluster) of the cluster to set addons.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcsaName :: Lens' ProjectsLocationsClustersSetAddons Text
plcsaName
  = lens _plcsaName (\ s a -> s{_plcsaName = a})

-- | JSONP
plcsaCallback :: Lens' ProjectsLocationsClustersSetAddons (Maybe Text)
plcsaCallback
  = lens _plcsaCallback
      (\ s a -> s{_plcsaCallback = a})

instance GoogleRequest
         ProjectsLocationsClustersSetAddons where
        type Rs ProjectsLocationsClustersSetAddons =
             Operation
        type Scopes ProjectsLocationsClustersSetAddons =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsClustersSetAddons'{..}
          = go _plcsaName _plcsaXgafv _plcsaUploadProtocol
              _plcsaAccessToken
              _plcsaUploadType
              _plcsaCallback
              (Just AltJSON)
              _plcsaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersSetAddonsResource)
                      mempty

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
-- Module      : Network.Google.Resource.Container.Projects.Locations.Clusters.SetMasterAuth
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used to set master auth materials. Currently supports :- Changing the
-- admin password for a specific cluster. This can be either via password
-- generation or explicitly set the password.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setMasterAuth@.
module Network.Google.Resource.Container.Projects.Locations.Clusters.SetMasterAuth
    (
    -- * REST Resource
      ProjectsLocationsClustersSetMasterAuthResource

    -- * Creating a Request
    , projectsLocationsClustersSetMasterAuth
    , ProjectsLocationsClustersSetMasterAuth

    -- * Request Lenses
    , plcsmaXgafv
    , plcsmaUploadProtocol
    , plcsmaAccessToken
    , plcsmaUploadType
    , plcsmaPayload
    , plcsmaName
    , plcsmaCallback
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @container.projects.locations.clusters.setMasterAuth@ method which the
-- 'ProjectsLocationsClustersSetMasterAuth' request conforms to.
type ProjectsLocationsClustersSetMasterAuthResource =
     "v1" :>
       CaptureMode "name" "setMasterAuth" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetMasterAuthRequest :>
                       Post '[JSON] Operation

-- | Used to set master auth materials. Currently supports :- Changing the
-- admin password for a specific cluster. This can be either via password
-- generation or explicitly set the password.
--
-- /See:/ 'projectsLocationsClustersSetMasterAuth' smart constructor.
data ProjectsLocationsClustersSetMasterAuth = ProjectsLocationsClustersSetMasterAuth'
    { _plcsmaXgafv          :: !(Maybe Xgafv)
    , _plcsmaUploadProtocol :: !(Maybe Text)
    , _plcsmaAccessToken    :: !(Maybe Text)
    , _plcsmaUploadType     :: !(Maybe Text)
    , _plcsmaPayload        :: !SetMasterAuthRequest
    , _plcsmaName           :: !Text
    , _plcsmaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsClustersSetMasterAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcsmaXgafv'
--
-- * 'plcsmaUploadProtocol'
--
-- * 'plcsmaAccessToken'
--
-- * 'plcsmaUploadType'
--
-- * 'plcsmaPayload'
--
-- * 'plcsmaName'
--
-- * 'plcsmaCallback'
projectsLocationsClustersSetMasterAuth
    :: SetMasterAuthRequest -- ^ 'plcsmaPayload'
    -> Text -- ^ 'plcsmaName'
    -> ProjectsLocationsClustersSetMasterAuth
projectsLocationsClustersSetMasterAuth pPlcsmaPayload_ pPlcsmaName_ =
    ProjectsLocationsClustersSetMasterAuth'
    { _plcsmaXgafv = Nothing
    , _plcsmaUploadProtocol = Nothing
    , _plcsmaAccessToken = Nothing
    , _plcsmaUploadType = Nothing
    , _plcsmaPayload = pPlcsmaPayload_
    , _plcsmaName = pPlcsmaName_
    , _plcsmaCallback = Nothing
    }

-- | V1 error format.
plcsmaXgafv :: Lens' ProjectsLocationsClustersSetMasterAuth (Maybe Xgafv)
plcsmaXgafv
  = lens _plcsmaXgafv (\ s a -> s{_plcsmaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plcsmaUploadProtocol :: Lens' ProjectsLocationsClustersSetMasterAuth (Maybe Text)
plcsmaUploadProtocol
  = lens _plcsmaUploadProtocol
      (\ s a -> s{_plcsmaUploadProtocol = a})

-- | OAuth access token.
plcsmaAccessToken :: Lens' ProjectsLocationsClustersSetMasterAuth (Maybe Text)
plcsmaAccessToken
  = lens _plcsmaAccessToken
      (\ s a -> s{_plcsmaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plcsmaUploadType :: Lens' ProjectsLocationsClustersSetMasterAuth (Maybe Text)
plcsmaUploadType
  = lens _plcsmaUploadType
      (\ s a -> s{_plcsmaUploadType = a})

-- | Multipart request metadata.
plcsmaPayload :: Lens' ProjectsLocationsClustersSetMasterAuth SetMasterAuthRequest
plcsmaPayload
  = lens _plcsmaPayload
      (\ s a -> s{_plcsmaPayload = a})

-- | The name (project, location, cluster) of the cluster to set auth.
-- Specified in the format \'projects\/*\/locations\/*\/clusters\/*\'.
plcsmaName :: Lens' ProjectsLocationsClustersSetMasterAuth Text
plcsmaName
  = lens _plcsmaName (\ s a -> s{_plcsmaName = a})

-- | JSONP
plcsmaCallback :: Lens' ProjectsLocationsClustersSetMasterAuth (Maybe Text)
plcsmaCallback
  = lens _plcsmaCallback
      (\ s a -> s{_plcsmaCallback = a})

instance GoogleRequest
         ProjectsLocationsClustersSetMasterAuth where
        type Rs ProjectsLocationsClustersSetMasterAuth =
             Operation
        type Scopes ProjectsLocationsClustersSetMasterAuth =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsClustersSetMasterAuth'{..}
          = go _plcsmaName _plcsmaXgafv _plcsmaUploadProtocol
              _plcsmaAccessToken
              _plcsmaUploadType
              _plcsmaCallback
              (Just AltJSON)
              _plcsmaPayload
              containerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsClustersSetMasterAuthResource)
                      mempty

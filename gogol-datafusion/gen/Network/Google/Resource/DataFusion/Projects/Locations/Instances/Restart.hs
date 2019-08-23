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
-- Module      : Network.Google.Resource.DataFusion.Projects.Locations.Instances.Restart
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restart a single Data Fusion instance. At the end of an operation
-- instance is fully restarted.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.restart@.
module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Restart
    (
    -- * REST Resource
      ProjectsLocationsInstancesRestartResource

    -- * Creating a Request
    , projectsLocationsInstancesRestart
    , ProjectsLocationsInstancesRestart

    -- * Request Lenses
    , plirXgafv
    , plirUploadProtocol
    , plirAccessToken
    , plirUploadType
    , plirPayload
    , plirName
    , plirCallback
    ) where

import           Network.Google.DataFusion.Types
import           Network.Google.Prelude

-- | A resource alias for @datafusion.projects.locations.instances.restart@ method which the
-- 'ProjectsLocationsInstancesRestart' request conforms to.
type ProjectsLocationsInstancesRestartResource =
     "v1beta1" :>
       CaptureMode "name" "restart" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RestartInstanceRequest :>
                       Post '[JSON] Operation

-- | Restart a single Data Fusion instance. At the end of an operation
-- instance is fully restarted.
--
-- /See:/ 'projectsLocationsInstancesRestart' smart constructor.
data ProjectsLocationsInstancesRestart =
  ProjectsLocationsInstancesRestart'
    { _plirXgafv          :: !(Maybe Xgafv)
    , _plirUploadProtocol :: !(Maybe Text)
    , _plirAccessToken    :: !(Maybe Text)
    , _plirUploadType     :: !(Maybe Text)
    , _plirPayload        :: !RestartInstanceRequest
    , _plirName           :: !Text
    , _plirCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesRestart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plirXgafv'
--
-- * 'plirUploadProtocol'
--
-- * 'plirAccessToken'
--
-- * 'plirUploadType'
--
-- * 'plirPayload'
--
-- * 'plirName'
--
-- * 'plirCallback'
projectsLocationsInstancesRestart
    :: RestartInstanceRequest -- ^ 'plirPayload'
    -> Text -- ^ 'plirName'
    -> ProjectsLocationsInstancesRestart
projectsLocationsInstancesRestart pPlirPayload_ pPlirName_ =
  ProjectsLocationsInstancesRestart'
    { _plirXgafv = Nothing
    , _plirUploadProtocol = Nothing
    , _plirAccessToken = Nothing
    , _plirUploadType = Nothing
    , _plirPayload = pPlirPayload_
    , _plirName = pPlirName_
    , _plirCallback = Nothing
    }


-- | V1 error format.
plirXgafv :: Lens' ProjectsLocationsInstancesRestart (Maybe Xgafv)
plirXgafv
  = lens _plirXgafv (\ s a -> s{_plirXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plirUploadProtocol :: Lens' ProjectsLocationsInstancesRestart (Maybe Text)
plirUploadProtocol
  = lens _plirUploadProtocol
      (\ s a -> s{_plirUploadProtocol = a})

-- | OAuth access token.
plirAccessToken :: Lens' ProjectsLocationsInstancesRestart (Maybe Text)
plirAccessToken
  = lens _plirAccessToken
      (\ s a -> s{_plirAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plirUploadType :: Lens' ProjectsLocationsInstancesRestart (Maybe Text)
plirUploadType
  = lens _plirUploadType
      (\ s a -> s{_plirUploadType = a})

-- | Multipart request metadata.
plirPayload :: Lens' ProjectsLocationsInstancesRestart RestartInstanceRequest
plirPayload
  = lens _plirPayload (\ s a -> s{_plirPayload = a})

-- | Name of the Data Fusion instance which need to be restarted in the form
-- of projects\/{project}\/locations\/{location}\/instances\/{instance}
plirName :: Lens' ProjectsLocationsInstancesRestart Text
plirName = lens _plirName (\ s a -> s{_plirName = a})

-- | JSONP
plirCallback :: Lens' ProjectsLocationsInstancesRestart (Maybe Text)
plirCallback
  = lens _plirCallback (\ s a -> s{_plirCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesRestart
         where
        type Rs ProjectsLocationsInstancesRestart = Operation
        type Scopes ProjectsLocationsInstancesRestart =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesRestart'{..}
          = go _plirName _plirXgafv _plirUploadProtocol
              _plirAccessToken
              _plirUploadType
              _plirCallback
              (Just AltJSON)
              _plirPayload
              dataFusionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesRestartResource)
                      mempty

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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Export Redis instance data into a Redis RDB format file in Cloud
-- Storage. Redis will continue serving during this operation. The returned
-- operation is automatically deleted after a few hours, so there is no
-- need to call DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.export@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.Export
    (
    -- * REST Resource
      ProjectsLocationsInstancesExportResource

    -- * Creating a Request
    , projectsLocationsInstancesExport
    , ProjectsLocationsInstancesExport

    -- * Request Lenses
    , plieXgafv
    , plieUploadProtocol
    , plieAccessToken
    , plieUploadType
    , pliePayload
    , plieName
    , plieCallback
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.export@ method which the
-- 'ProjectsLocationsInstancesExport' request conforms to.
type ProjectsLocationsInstancesExportResource =
     "v1" :>
       CaptureMode "name" "export" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExportInstanceRequest :>
                       Post '[JSON] Operation

-- | Export Redis instance data into a Redis RDB format file in Cloud
-- Storage. Redis will continue serving during this operation. The returned
-- operation is automatically deleted after a few hours, so there is no
-- need to call DeleteOperation.
--
-- /See:/ 'projectsLocationsInstancesExport' smart constructor.
data ProjectsLocationsInstancesExport =
  ProjectsLocationsInstancesExport'
    { _plieXgafv :: !(Maybe Xgafv)
    , _plieUploadProtocol :: !(Maybe Text)
    , _plieAccessToken :: !(Maybe Text)
    , _plieUploadType :: !(Maybe Text)
    , _pliePayload :: !ExportInstanceRequest
    , _plieName :: !Text
    , _plieCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plieXgafv'
--
-- * 'plieUploadProtocol'
--
-- * 'plieAccessToken'
--
-- * 'plieUploadType'
--
-- * 'pliePayload'
--
-- * 'plieName'
--
-- * 'plieCallback'
projectsLocationsInstancesExport
    :: ExportInstanceRequest -- ^ 'pliePayload'
    -> Text -- ^ 'plieName'
    -> ProjectsLocationsInstancesExport
projectsLocationsInstancesExport pPliePayload_ pPlieName_ =
  ProjectsLocationsInstancesExport'
    { _plieXgafv = Nothing
    , _plieUploadProtocol = Nothing
    , _plieAccessToken = Nothing
    , _plieUploadType = Nothing
    , _pliePayload = pPliePayload_
    , _plieName = pPlieName_
    , _plieCallback = Nothing
    }


-- | V1 error format.
plieXgafv :: Lens' ProjectsLocationsInstancesExport (Maybe Xgafv)
plieXgafv
  = lens _plieXgafv (\ s a -> s{_plieXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plieUploadProtocol :: Lens' ProjectsLocationsInstancesExport (Maybe Text)
plieUploadProtocol
  = lens _plieUploadProtocol
      (\ s a -> s{_plieUploadProtocol = a})

-- | OAuth access token.
plieAccessToken :: Lens' ProjectsLocationsInstancesExport (Maybe Text)
plieAccessToken
  = lens _plieAccessToken
      (\ s a -> s{_plieAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plieUploadType :: Lens' ProjectsLocationsInstancesExport (Maybe Text)
plieUploadType
  = lens _plieUploadType
      (\ s a -> s{_plieUploadType = a})

-- | Multipart request metadata.
pliePayload :: Lens' ProjectsLocationsInstancesExport ExportInstanceRequest
pliePayload
  = lens _pliePayload (\ s a -> s{_pliePayload = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region.
plieName :: Lens' ProjectsLocationsInstancesExport Text
plieName = lens _plieName (\ s a -> s{_plieName = a})

-- | JSONP
plieCallback :: Lens' ProjectsLocationsInstancesExport (Maybe Text)
plieCallback
  = lens _plieCallback (\ s a -> s{_plieCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesExport
         where
        type Rs ProjectsLocationsInstancesExport = Operation
        type Scopes ProjectsLocationsInstancesExport =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesExport'{..}
          = go _plieName _plieXgafv _plieUploadProtocol
              _plieAccessToken
              _plieUploadType
              _plieCallback
              (Just AltJSON)
              _pliePayload
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesExportResource)
                      mempty

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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.Import
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Import a Redis RDB snapshot file from Cloud Storage into a Redis
-- instance. Redis may stop serving during this operation. Instance state
-- will be IMPORTING for entire operation. When complete, the instance will
-- contain only data from the imported file. The returned operation is
-- automatically deleted after a few hours, so there is no need to call
-- DeleteOperation.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.import@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.Import
    (
    -- * REST Resource
      ProjectsLocationsInstancesImportResource

    -- * Creating a Request
    , projectsLocationsInstancesImport
    , ProjectsLocationsInstancesImport

    -- * Request Lenses
    , pliiXgafv
    , pliiUploadProtocol
    , pliiAccessToken
    , pliiUploadType
    , pliiPayload
    , pliiName
    , pliiCallback
    ) where

import Network.Google.Prelude
import Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.import@ method which the
-- 'ProjectsLocationsInstancesImport' request conforms to.
type ProjectsLocationsInstancesImportResource =
     "v1" :>
       CaptureMode "name" "import" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ImportInstanceRequest :>
                       Post '[JSON] Operation

-- | Import a Redis RDB snapshot file from Cloud Storage into a Redis
-- instance. Redis may stop serving during this operation. Instance state
-- will be IMPORTING for entire operation. When complete, the instance will
-- contain only data from the imported file. The returned operation is
-- automatically deleted after a few hours, so there is no need to call
-- DeleteOperation.
--
-- /See:/ 'projectsLocationsInstancesImport' smart constructor.
data ProjectsLocationsInstancesImport =
  ProjectsLocationsInstancesImport'
    { _pliiXgafv :: !(Maybe Xgafv)
    , _pliiUploadProtocol :: !(Maybe Text)
    , _pliiAccessToken :: !(Maybe Text)
    , _pliiUploadType :: !(Maybe Text)
    , _pliiPayload :: !ImportInstanceRequest
    , _pliiName :: !Text
    , _pliiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliiXgafv'
--
-- * 'pliiUploadProtocol'
--
-- * 'pliiAccessToken'
--
-- * 'pliiUploadType'
--
-- * 'pliiPayload'
--
-- * 'pliiName'
--
-- * 'pliiCallback'
projectsLocationsInstancesImport
    :: ImportInstanceRequest -- ^ 'pliiPayload'
    -> Text -- ^ 'pliiName'
    -> ProjectsLocationsInstancesImport
projectsLocationsInstancesImport pPliiPayload_ pPliiName_ =
  ProjectsLocationsInstancesImport'
    { _pliiXgafv = Nothing
    , _pliiUploadProtocol = Nothing
    , _pliiAccessToken = Nothing
    , _pliiUploadType = Nothing
    , _pliiPayload = pPliiPayload_
    , _pliiName = pPliiName_
    , _pliiCallback = Nothing
    }


-- | V1 error format.
pliiXgafv :: Lens' ProjectsLocationsInstancesImport (Maybe Xgafv)
pliiXgafv
  = lens _pliiXgafv (\ s a -> s{_pliiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliiUploadProtocol :: Lens' ProjectsLocationsInstancesImport (Maybe Text)
pliiUploadProtocol
  = lens _pliiUploadProtocol
      (\ s a -> s{_pliiUploadProtocol = a})

-- | OAuth access token.
pliiAccessToken :: Lens' ProjectsLocationsInstancesImport (Maybe Text)
pliiAccessToken
  = lens _pliiAccessToken
      (\ s a -> s{_pliiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliiUploadType :: Lens' ProjectsLocationsInstancesImport (Maybe Text)
pliiUploadType
  = lens _pliiUploadType
      (\ s a -> s{_pliiUploadType = a})

-- | Multipart request metadata.
pliiPayload :: Lens' ProjectsLocationsInstancesImport ImportInstanceRequest
pliiPayload
  = lens _pliiPayload (\ s a -> s{_pliiPayload = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region.
pliiName :: Lens' ProjectsLocationsInstancesImport Text
pliiName = lens _pliiName (\ s a -> s{_pliiName = a})

-- | JSONP
pliiCallback :: Lens' ProjectsLocationsInstancesImport (Maybe Text)
pliiCallback
  = lens _pliiCallback (\ s a -> s{_pliiCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesImport
         where
        type Rs ProjectsLocationsInstancesImport = Operation
        type Scopes ProjectsLocationsInstancesImport =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesImport'{..}
          = go _pliiName _pliiXgafv _pliiUploadProtocol
              _pliiAccessToken
              _pliiUploadType
              _pliiCallback
              (Just AltJSON)
              _pliiPayload
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesImportResource)
                      mempty

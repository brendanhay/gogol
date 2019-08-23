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
-- Module      : Network.Google.Resource.Redis.Projects.Locations.Instances.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specific Redis instance. Instance stops serving and data is
-- deleted.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference> for @redis.projects.locations.instances.delete@.
module Network.Google.Resource.Redis.Projects.Locations.Instances.Delete
    (
    -- * REST Resource
      ProjectsLocationsInstancesDeleteResource

    -- * Creating a Request
    , projectsLocationsInstancesDelete
    , ProjectsLocationsInstancesDelete

    -- * Request Lenses
    , plidXgafv
    , plidUploadProtocol
    , plidAccessToken
    , plidUploadType
    , plidName
    , plidCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Redis.Types

-- | A resource alias for @redis.projects.locations.instances.delete@ method which the
-- 'ProjectsLocationsInstancesDelete' request conforms to.
type ProjectsLocationsInstancesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a specific Redis instance. Instance stops serving and data is
-- deleted.
--
-- /See:/ 'projectsLocationsInstancesDelete' smart constructor.
data ProjectsLocationsInstancesDelete =
  ProjectsLocationsInstancesDelete'
    { _plidXgafv          :: !(Maybe Xgafv)
    , _plidUploadProtocol :: !(Maybe Text)
    , _plidAccessToken    :: !(Maybe Text)
    , _plidUploadType     :: !(Maybe Text)
    , _plidName           :: !Text
    , _plidCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInstancesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plidXgafv'
--
-- * 'plidUploadProtocol'
--
-- * 'plidAccessToken'
--
-- * 'plidUploadType'
--
-- * 'plidName'
--
-- * 'plidCallback'
projectsLocationsInstancesDelete
    :: Text -- ^ 'plidName'
    -> ProjectsLocationsInstancesDelete
projectsLocationsInstancesDelete pPlidName_ =
  ProjectsLocationsInstancesDelete'
    { _plidXgafv = Nothing
    , _plidUploadProtocol = Nothing
    , _plidAccessToken = Nothing
    , _plidUploadType = Nothing
    , _plidName = pPlidName_
    , _plidCallback = Nothing
    }


-- | V1 error format.
plidXgafv :: Lens' ProjectsLocationsInstancesDelete (Maybe Xgafv)
plidXgafv
  = lens _plidXgafv (\ s a -> s{_plidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plidUploadProtocol :: Lens' ProjectsLocationsInstancesDelete (Maybe Text)
plidUploadProtocol
  = lens _plidUploadProtocol
      (\ s a -> s{_plidUploadProtocol = a})

-- | OAuth access token.
plidAccessToken :: Lens' ProjectsLocationsInstancesDelete (Maybe Text)
plidAccessToken
  = lens _plidAccessToken
      (\ s a -> s{_plidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plidUploadType :: Lens' ProjectsLocationsInstancesDelete (Maybe Text)
plidUploadType
  = lens _plidUploadType
      (\ s a -> s{_plidUploadType = a})

-- | Required. Redis instance resource name using the form:
-- \`projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}\`
-- where \`location_id\` refers to a GCP region
plidName :: Lens' ProjectsLocationsInstancesDelete Text
plidName = lens _plidName (\ s a -> s{_plidName = a})

-- | JSONP
plidCallback :: Lens' ProjectsLocationsInstancesDelete (Maybe Text)
plidCallback
  = lens _plidCallback (\ s a -> s{_plidCallback = a})

instance GoogleRequest
           ProjectsLocationsInstancesDelete
         where
        type Rs ProjectsLocationsInstancesDelete = Operation
        type Scopes ProjectsLocationsInstancesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsInstancesDelete'{..}
          = go _plidName _plidXgafv _plidUploadProtocol
              _plidAccessToken
              _plidUploadType
              _plidCallback
              (Just AltJSON)
              redisService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInstancesDeleteResource)
                      mempty

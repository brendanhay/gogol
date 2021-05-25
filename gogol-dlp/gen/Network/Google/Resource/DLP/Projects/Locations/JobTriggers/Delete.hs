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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.delete@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Delete
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersDeleteResource

    -- * Creating a Request
    , projectsLocationsJobTriggersDelete
    , ProjectsLocationsJobTriggersDelete

    -- * Request Lenses
    , pljtdXgafv
    , pljtdUploadProtocol
    , pljtdAccessToken
    , pljtdUploadType
    , pljtdName
    , pljtdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.delete@ method which the
-- 'ProjectsLocationsJobTriggersDelete' request conforms to.
type ProjectsLocationsJobTriggersDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsLocationsJobTriggersDelete' smart constructor.
data ProjectsLocationsJobTriggersDelete =
  ProjectsLocationsJobTriggersDelete'
    { _pljtdXgafv :: !(Maybe Xgafv)
    , _pljtdUploadProtocol :: !(Maybe Text)
    , _pljtdAccessToken :: !(Maybe Text)
    , _pljtdUploadType :: !(Maybe Text)
    , _pljtdName :: !Text
    , _pljtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljtdXgafv'
--
-- * 'pljtdUploadProtocol'
--
-- * 'pljtdAccessToken'
--
-- * 'pljtdUploadType'
--
-- * 'pljtdName'
--
-- * 'pljtdCallback'
projectsLocationsJobTriggersDelete
    :: Text -- ^ 'pljtdName'
    -> ProjectsLocationsJobTriggersDelete
projectsLocationsJobTriggersDelete pPljtdName_ =
  ProjectsLocationsJobTriggersDelete'
    { _pljtdXgafv = Nothing
    , _pljtdUploadProtocol = Nothing
    , _pljtdAccessToken = Nothing
    , _pljtdUploadType = Nothing
    , _pljtdName = pPljtdName_
    , _pljtdCallback = Nothing
    }


-- | V1 error format.
pljtdXgafv :: Lens' ProjectsLocationsJobTriggersDelete (Maybe Xgafv)
pljtdXgafv
  = lens _pljtdXgafv (\ s a -> s{_pljtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljtdUploadProtocol :: Lens' ProjectsLocationsJobTriggersDelete (Maybe Text)
pljtdUploadProtocol
  = lens _pljtdUploadProtocol
      (\ s a -> s{_pljtdUploadProtocol = a})

-- | OAuth access token.
pljtdAccessToken :: Lens' ProjectsLocationsJobTriggersDelete (Maybe Text)
pljtdAccessToken
  = lens _pljtdAccessToken
      (\ s a -> s{_pljtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljtdUploadType :: Lens' ProjectsLocationsJobTriggersDelete (Maybe Text)
pljtdUploadType
  = lens _pljtdUploadType
      (\ s a -> s{_pljtdUploadType = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pljtdName :: Lens' ProjectsLocationsJobTriggersDelete Text
pljtdName
  = lens _pljtdName (\ s a -> s{_pljtdName = a})

-- | JSONP
pljtdCallback :: Lens' ProjectsLocationsJobTriggersDelete (Maybe Text)
pljtdCallback
  = lens _pljtdCallback
      (\ s a -> s{_pljtdCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersDelete
         where
        type Rs ProjectsLocationsJobTriggersDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsJobTriggersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobTriggersDelete'{..}
          = go _pljtdName _pljtdXgafv _pljtdUploadProtocol
              _pljtdAccessToken
              _pljtdUploadType
              _pljtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobTriggersDeleteResource)
                      mempty

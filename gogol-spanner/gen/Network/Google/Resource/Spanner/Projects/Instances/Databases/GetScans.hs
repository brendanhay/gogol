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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.Databases.GetScans
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request a specific scan with Database-specific data for Cloud Key
-- Visualizer.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.databases.getScans@.
module Network.Google.Resource.Spanner.Projects.Instances.Databases.GetScans
    (
    -- * REST Resource
      ProjectsInstancesDatabasesGetScansResource

    -- * Creating a Request
    , projectsInstancesDatabasesGetScans
    , ProjectsInstancesDatabasesGetScans

    -- * Request Lenses
    , pidgsXgafv
    , pidgsUploadProtocol
    , pidgsStartTime
    , pidgsAccessToken
    , pidgsUploadType
    , pidgsName
    , pidgsEndTime
    , pidgsView
    , pidgsCallback
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.databases.getScans@ method which the
-- 'ProjectsInstancesDatabasesGetScans' request conforms to.
type ProjectsInstancesDatabasesGetScansResource =
     "v1" :>
       Capture "name" Text :>
         "scans" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "startTime" DateTime' :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "endTime" DateTime' :>
                       QueryParam "view"
                         ProjectsInstancesDatabasesGetScansView
                         :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Scan

-- | Request a specific scan with Database-specific data for Cloud Key
-- Visualizer.
--
-- /See:/ 'projectsInstancesDatabasesGetScans' smart constructor.
data ProjectsInstancesDatabasesGetScans =
  ProjectsInstancesDatabasesGetScans'
    { _pidgsXgafv :: !(Maybe Xgafv)
    , _pidgsUploadProtocol :: !(Maybe Text)
    , _pidgsStartTime :: !(Maybe DateTime')
    , _pidgsAccessToken :: !(Maybe Text)
    , _pidgsUploadType :: !(Maybe Text)
    , _pidgsName :: !Text
    , _pidgsEndTime :: !(Maybe DateTime')
    , _pidgsView :: !(Maybe ProjectsInstancesDatabasesGetScansView)
    , _pidgsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesDatabasesGetScans' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pidgsXgafv'
--
-- * 'pidgsUploadProtocol'
--
-- * 'pidgsStartTime'
--
-- * 'pidgsAccessToken'
--
-- * 'pidgsUploadType'
--
-- * 'pidgsName'
--
-- * 'pidgsEndTime'
--
-- * 'pidgsView'
--
-- * 'pidgsCallback'
projectsInstancesDatabasesGetScans
    :: Text -- ^ 'pidgsName'
    -> ProjectsInstancesDatabasesGetScans
projectsInstancesDatabasesGetScans pPidgsName_ =
  ProjectsInstancesDatabasesGetScans'
    { _pidgsXgafv = Nothing
    , _pidgsUploadProtocol = Nothing
    , _pidgsStartTime = Nothing
    , _pidgsAccessToken = Nothing
    , _pidgsUploadType = Nothing
    , _pidgsName = pPidgsName_
    , _pidgsEndTime = Nothing
    , _pidgsView = Nothing
    , _pidgsCallback = Nothing
    }


-- | V1 error format.
pidgsXgafv :: Lens' ProjectsInstancesDatabasesGetScans (Maybe Xgafv)
pidgsXgafv
  = lens _pidgsXgafv (\ s a -> s{_pidgsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pidgsUploadProtocol :: Lens' ProjectsInstancesDatabasesGetScans (Maybe Text)
pidgsUploadProtocol
  = lens _pidgsUploadProtocol
      (\ s a -> s{_pidgsUploadProtocol = a})

-- | These fields restrict the Database-specific information returned in the
-- \`Scan.data\` field. If a \`View\` is provided that does not include the
-- \`Scan.data\` field, these are ignored. This range of time must be
-- entirely contained within the defined time range of the targeted scan.
-- The lower bound for the time range to retrieve Scan data for.
pidgsStartTime :: Lens' ProjectsInstancesDatabasesGetScans (Maybe UTCTime)
pidgsStartTime
  = lens _pidgsStartTime
      (\ s a -> s{_pidgsStartTime = a})
      . mapping _DateTime

-- | OAuth access token.
pidgsAccessToken :: Lens' ProjectsInstancesDatabasesGetScans (Maybe Text)
pidgsAccessToken
  = lens _pidgsAccessToken
      (\ s a -> s{_pidgsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pidgsUploadType :: Lens' ProjectsInstancesDatabasesGetScans (Maybe Text)
pidgsUploadType
  = lens _pidgsUploadType
      (\ s a -> s{_pidgsUploadType = a})

-- | Required. The unique name of the scan containing the requested
-- information, specific to the Database service implementing this
-- interface.
pidgsName :: Lens' ProjectsInstancesDatabasesGetScans Text
pidgsName
  = lens _pidgsName (\ s a -> s{_pidgsName = a})

-- | The upper bound for the time range to retrieve Scan data for.
pidgsEndTime :: Lens' ProjectsInstancesDatabasesGetScans (Maybe UTCTime)
pidgsEndTime
  = lens _pidgsEndTime (\ s a -> s{_pidgsEndTime = a})
      . mapping _DateTime

-- | Specifies which parts of the Scan should be returned in the response.
-- Note, if left unspecified, the FULL view is assumed.
pidgsView :: Lens' ProjectsInstancesDatabasesGetScans (Maybe ProjectsInstancesDatabasesGetScansView)
pidgsView
  = lens _pidgsView (\ s a -> s{_pidgsView = a})

-- | JSONP
pidgsCallback :: Lens' ProjectsInstancesDatabasesGetScans (Maybe Text)
pidgsCallback
  = lens _pidgsCallback
      (\ s a -> s{_pidgsCallback = a})

instance GoogleRequest
           ProjectsInstancesDatabasesGetScans
         where
        type Rs ProjectsInstancesDatabasesGetScans = Scan
        type Scopes ProjectsInstancesDatabasesGetScans =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.data"]
        requestClient ProjectsInstancesDatabasesGetScans'{..}
          = go _pidgsName _pidgsXgafv _pidgsUploadProtocol
              _pidgsStartTime
              _pidgsAccessToken
              _pidgsUploadType
              _pidgsEndTime
              _pidgsView
              _pidgsCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesDatabasesGetScansResource)
                      mempty

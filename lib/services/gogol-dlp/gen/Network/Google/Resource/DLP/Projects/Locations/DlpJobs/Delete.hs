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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running DlpJob. This method indicates that the client is
-- no longer interested in the DlpJob result. The job will be cancelled if
-- possible. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage
-- and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.delete@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Delete
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsDeleteResource

    -- * Creating a Request
    , projectsLocationsDlpJobsDelete
    , ProjectsLocationsDlpJobsDelete

    -- * Request Lenses
    , pldjdXgafv
    , pldjdUploadProtocol
    , pldjdAccessToken
    , pldjdUploadType
    , pldjdName
    , pldjdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.delete@ method which the
-- 'ProjectsLocationsDlpJobsDelete' request conforms to.
type ProjectsLocationsDlpJobsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a long-running DlpJob. This method indicates that the client is
-- no longer interested in the DlpJob result. The job will be cancelled if
-- possible. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage
-- and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to
-- learn more.
--
-- /See:/ 'projectsLocationsDlpJobsDelete' smart constructor.
data ProjectsLocationsDlpJobsDelete =
  ProjectsLocationsDlpJobsDelete'
    { _pldjdXgafv :: !(Maybe Xgafv)
    , _pldjdUploadProtocol :: !(Maybe Text)
    , _pldjdAccessToken :: !(Maybe Text)
    , _pldjdUploadType :: !(Maybe Text)
    , _pldjdName :: !Text
    , _pldjdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldjdXgafv'
--
-- * 'pldjdUploadProtocol'
--
-- * 'pldjdAccessToken'
--
-- * 'pldjdUploadType'
--
-- * 'pldjdName'
--
-- * 'pldjdCallback'
projectsLocationsDlpJobsDelete
    :: Text -- ^ 'pldjdName'
    -> ProjectsLocationsDlpJobsDelete
projectsLocationsDlpJobsDelete pPldjdName_ =
  ProjectsLocationsDlpJobsDelete'
    { _pldjdXgafv = Nothing
    , _pldjdUploadProtocol = Nothing
    , _pldjdAccessToken = Nothing
    , _pldjdUploadType = Nothing
    , _pldjdName = pPldjdName_
    , _pldjdCallback = Nothing
    }


-- | V1 error format.
pldjdXgafv :: Lens' ProjectsLocationsDlpJobsDelete (Maybe Xgafv)
pldjdXgafv
  = lens _pldjdXgafv (\ s a -> s{_pldjdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldjdUploadProtocol :: Lens' ProjectsLocationsDlpJobsDelete (Maybe Text)
pldjdUploadProtocol
  = lens _pldjdUploadProtocol
      (\ s a -> s{_pldjdUploadProtocol = a})

-- | OAuth access token.
pldjdAccessToken :: Lens' ProjectsLocationsDlpJobsDelete (Maybe Text)
pldjdAccessToken
  = lens _pldjdAccessToken
      (\ s a -> s{_pldjdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldjdUploadType :: Lens' ProjectsLocationsDlpJobsDelete (Maybe Text)
pldjdUploadType
  = lens _pldjdUploadType
      (\ s a -> s{_pldjdUploadType = a})

-- | Required. The name of the DlpJob resource to be deleted.
pldjdName :: Lens' ProjectsLocationsDlpJobsDelete Text
pldjdName
  = lens _pldjdName (\ s a -> s{_pldjdName = a})

-- | JSONP
pldjdCallback :: Lens' ProjectsLocationsDlpJobsDelete (Maybe Text)
pldjdCallback
  = lens _pldjdCallback
      (\ s a -> s{_pldjdCallback = a})

instance GoogleRequest ProjectsLocationsDlpJobsDelete
         where
        type Rs ProjectsLocationsDlpJobsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsDlpJobsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDlpJobsDelete'{..}
          = go _pldjdName _pldjdXgafv _pldjdUploadProtocol
              _pldjdAccessToken
              _pldjdUploadType
              _pldjdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDlpJobsDeleteResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudErrorReporting.Projects.DeleteEvents
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all error events of a given project.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.deleteEvents@.
module Network.Google.Resource.CloudErrorReporting.Projects.DeleteEvents
    (
    -- * REST Resource
      ProjectsDeleteEventsResource

    -- * Creating a Request
    , projectsDeleteEvents
    , ProjectsDeleteEvents

    -- * Request Lenses
    , pdeXgafv
    , pdeUploadProtocol
    , pdeAccessToken
    , pdeUploadType
    , pdeProjectName
    , pdeCallback
    ) where

import Network.Google.CloudErrorReporting.Types
import Network.Google.Prelude

-- | A resource alias for @clouderrorreporting.projects.deleteEvents@ method which the
-- 'ProjectsDeleteEvents' request conforms to.
type ProjectsDeleteEventsResource =
     "v1beta1" :>
       Capture "projectName" Text :>
         "events" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Delete '[JSON] DeleteEventsResponse

-- | Deletes all error events of a given project.
--
-- /See:/ 'projectsDeleteEvents' smart constructor.
data ProjectsDeleteEvents =
  ProjectsDeleteEvents'
    { _pdeXgafv :: !(Maybe Xgafv)
    , _pdeUploadProtocol :: !(Maybe Text)
    , _pdeAccessToken :: !(Maybe Text)
    , _pdeUploadType :: !(Maybe Text)
    , _pdeProjectName :: !Text
    , _pdeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeleteEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdeXgafv'
--
-- * 'pdeUploadProtocol'
--
-- * 'pdeAccessToken'
--
-- * 'pdeUploadType'
--
-- * 'pdeProjectName'
--
-- * 'pdeCallback'
projectsDeleteEvents
    :: Text -- ^ 'pdeProjectName'
    -> ProjectsDeleteEvents
projectsDeleteEvents pPdeProjectName_ =
  ProjectsDeleteEvents'
    { _pdeXgafv = Nothing
    , _pdeUploadProtocol = Nothing
    , _pdeAccessToken = Nothing
    , _pdeUploadType = Nothing
    , _pdeProjectName = pPdeProjectName_
    , _pdeCallback = Nothing
    }


-- | V1 error format.
pdeXgafv :: Lens' ProjectsDeleteEvents (Maybe Xgafv)
pdeXgafv = lens _pdeXgafv (\ s a -> s{_pdeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdeUploadProtocol :: Lens' ProjectsDeleteEvents (Maybe Text)
pdeUploadProtocol
  = lens _pdeUploadProtocol
      (\ s a -> s{_pdeUploadProtocol = a})

-- | OAuth access token.
pdeAccessToken :: Lens' ProjectsDeleteEvents (Maybe Text)
pdeAccessToken
  = lens _pdeAccessToken
      (\ s a -> s{_pdeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdeUploadType :: Lens' ProjectsDeleteEvents (Maybe Text)
pdeUploadType
  = lens _pdeUploadType
      (\ s a -> s{_pdeUploadType = a})

-- | Required. The resource name of the Google Cloud Platform project.
-- Written as \`projects\/{projectID}\`, where \`{projectID}\` is the
-- [Google Cloud Platform project
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158840). Example:
-- \`projects\/my-project-123\`.
pdeProjectName :: Lens' ProjectsDeleteEvents Text
pdeProjectName
  = lens _pdeProjectName
      (\ s a -> s{_pdeProjectName = a})

-- | JSONP
pdeCallback :: Lens' ProjectsDeleteEvents (Maybe Text)
pdeCallback
  = lens _pdeCallback (\ s a -> s{_pdeCallback = a})

instance GoogleRequest ProjectsDeleteEvents where
        type Rs ProjectsDeleteEvents = DeleteEventsResponse
        type Scopes ProjectsDeleteEvents =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDeleteEvents'{..}
          = go _pdeProjectName _pdeXgafv _pdeUploadProtocol
              _pdeAccessToken
              _pdeUploadType
              _pdeCallback
              (Just AltJSON)
              cloudErrorReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeleteEventsResource)
                      mempty

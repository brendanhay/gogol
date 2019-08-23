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
-- Module      : Network.Google.Resource.Jobs.Projects.ClientEvents.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report events issued when end user interacts with customer\'s
-- application that uses Cloud Talent Solution. You may inspect the created
-- events in [self service
-- tools](https:\/\/console.cloud.google.com\/talent-solution\/overview).
-- [Learn
-- more](https:\/\/cloud.google.com\/talent-solution\/docs\/management-tools)
-- about self service tools.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.clientEvents.create@.
module Network.Google.Resource.Jobs.Projects.ClientEvents.Create
    (
    -- * REST Resource
      ProjectsClientEventsCreateResource

    -- * Creating a Request
    , projectsClientEventsCreate
    , ProjectsClientEventsCreate

    -- * Request Lenses
    , pcecParent
    , pcecXgafv
    , pcecUploadProtocol
    , pcecAccessToken
    , pcecUploadType
    , pcecPayload
    , pcecCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.clientEvents.create@ method which the
-- 'ProjectsClientEventsCreate' request conforms to.
type ProjectsClientEventsCreateResource =
     "v3p1beta1" :>
       Capture "parent" Text :>
         "clientEvents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateClientEventRequest :>
                         Post '[JSON] ClientEvent

-- | Report events issued when end user interacts with customer\'s
-- application that uses Cloud Talent Solution. You may inspect the created
-- events in [self service
-- tools](https:\/\/console.cloud.google.com\/talent-solution\/overview).
-- [Learn
-- more](https:\/\/cloud.google.com\/talent-solution\/docs\/management-tools)
-- about self service tools.
--
-- /See:/ 'projectsClientEventsCreate' smart constructor.
data ProjectsClientEventsCreate =
  ProjectsClientEventsCreate'
    { _pcecParent         :: !Text
    , _pcecXgafv          :: !(Maybe Xgafv)
    , _pcecUploadProtocol :: !(Maybe Text)
    , _pcecAccessToken    :: !(Maybe Text)
    , _pcecUploadType     :: !(Maybe Text)
    , _pcecPayload        :: !CreateClientEventRequest
    , _pcecCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsClientEventsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcecParent'
--
-- * 'pcecXgafv'
--
-- * 'pcecUploadProtocol'
--
-- * 'pcecAccessToken'
--
-- * 'pcecUploadType'
--
-- * 'pcecPayload'
--
-- * 'pcecCallback'
projectsClientEventsCreate
    :: Text -- ^ 'pcecParent'
    -> CreateClientEventRequest -- ^ 'pcecPayload'
    -> ProjectsClientEventsCreate
projectsClientEventsCreate pPcecParent_ pPcecPayload_ =
  ProjectsClientEventsCreate'
    { _pcecParent = pPcecParent_
    , _pcecXgafv = Nothing
    , _pcecUploadProtocol = Nothing
    , _pcecAccessToken = Nothing
    , _pcecUploadType = Nothing
    , _pcecPayload = pPcecPayload_
    , _pcecCallback = Nothing
    }


-- | Parent project name.
pcecParent :: Lens' ProjectsClientEventsCreate Text
pcecParent
  = lens _pcecParent (\ s a -> s{_pcecParent = a})

-- | V1 error format.
pcecXgafv :: Lens' ProjectsClientEventsCreate (Maybe Xgafv)
pcecXgafv
  = lens _pcecXgafv (\ s a -> s{_pcecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcecUploadProtocol :: Lens' ProjectsClientEventsCreate (Maybe Text)
pcecUploadProtocol
  = lens _pcecUploadProtocol
      (\ s a -> s{_pcecUploadProtocol = a})

-- | OAuth access token.
pcecAccessToken :: Lens' ProjectsClientEventsCreate (Maybe Text)
pcecAccessToken
  = lens _pcecAccessToken
      (\ s a -> s{_pcecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcecUploadType :: Lens' ProjectsClientEventsCreate (Maybe Text)
pcecUploadType
  = lens _pcecUploadType
      (\ s a -> s{_pcecUploadType = a})

-- | Multipart request metadata.
pcecPayload :: Lens' ProjectsClientEventsCreate CreateClientEventRequest
pcecPayload
  = lens _pcecPayload (\ s a -> s{_pcecPayload = a})

-- | JSONP
pcecCallback :: Lens' ProjectsClientEventsCreate (Maybe Text)
pcecCallback
  = lens _pcecCallback (\ s a -> s{_pcecCallback = a})

instance GoogleRequest ProjectsClientEventsCreate
         where
        type Rs ProjectsClientEventsCreate = ClientEvent
        type Scopes ProjectsClientEventsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsClientEventsCreate'{..}
          = go _pcecParent _pcecXgafv _pcecUploadProtocol
              _pcecAccessToken
              _pcecUploadType
              _pcecCallback
              (Just AltJSON)
              _pcecPayload
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsClientEventsCreateResource)
                      mempty

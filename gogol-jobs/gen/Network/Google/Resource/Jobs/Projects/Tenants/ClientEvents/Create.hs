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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.ClientEvents.Create
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
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.clientEvents.create@.
module Network.Google.Resource.Jobs.Projects.Tenants.ClientEvents.Create
    (
    -- * REST Resource
      ProjectsTenantsClientEventsCreateResource

    -- * Creating a Request
    , projectsTenantsClientEventsCreate
    , ProjectsTenantsClientEventsCreate

    -- * Request Lenses
    , ptcecParent
    , ptcecXgafv
    , ptcecUploadProtocol
    , ptcecAccessToken
    , ptcecUploadType
    , ptcecPayload
    , ptcecCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.clientEvents.create@ method which the
-- 'ProjectsTenantsClientEventsCreate' request conforms to.
type ProjectsTenantsClientEventsCreateResource =
     "v4" :>
       Capture "parent" Text :>
         "clientEvents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ClientEvent :>
                         Post '[JSON] ClientEvent

-- | Report events issued when end user interacts with customer\'s
-- application that uses Cloud Talent Solution. You may inspect the created
-- events in [self service
-- tools](https:\/\/console.cloud.google.com\/talent-solution\/overview).
-- [Learn
-- more](https:\/\/cloud.google.com\/talent-solution\/docs\/management-tools)
-- about self service tools.
--
-- /See:/ 'projectsTenantsClientEventsCreate' smart constructor.
data ProjectsTenantsClientEventsCreate =
  ProjectsTenantsClientEventsCreate'
    { _ptcecParent :: !Text
    , _ptcecXgafv :: !(Maybe Xgafv)
    , _ptcecUploadProtocol :: !(Maybe Text)
    , _ptcecAccessToken :: !(Maybe Text)
    , _ptcecUploadType :: !(Maybe Text)
    , _ptcecPayload :: !ClientEvent
    , _ptcecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsClientEventsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcecParent'
--
-- * 'ptcecXgafv'
--
-- * 'ptcecUploadProtocol'
--
-- * 'ptcecAccessToken'
--
-- * 'ptcecUploadType'
--
-- * 'ptcecPayload'
--
-- * 'ptcecCallback'
projectsTenantsClientEventsCreate
    :: Text -- ^ 'ptcecParent'
    -> ClientEvent -- ^ 'ptcecPayload'
    -> ProjectsTenantsClientEventsCreate
projectsTenantsClientEventsCreate pPtcecParent_ pPtcecPayload_ =
  ProjectsTenantsClientEventsCreate'
    { _ptcecParent = pPtcecParent_
    , _ptcecXgafv = Nothing
    , _ptcecUploadProtocol = Nothing
    , _ptcecAccessToken = Nothing
    , _ptcecUploadType = Nothing
    , _ptcecPayload = pPtcecPayload_
    , _ptcecCallback = Nothing
    }


-- | Required. Resource name of the tenant under which the event is created.
-- The format is \"projects\/{project_id}\/tenants\/{tenant_id}\", for
-- example, \"projects\/foo\/tenants\/bar\".
ptcecParent :: Lens' ProjectsTenantsClientEventsCreate Text
ptcecParent
  = lens _ptcecParent (\ s a -> s{_ptcecParent = a})

-- | V1 error format.
ptcecXgafv :: Lens' ProjectsTenantsClientEventsCreate (Maybe Xgafv)
ptcecXgafv
  = lens _ptcecXgafv (\ s a -> s{_ptcecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcecUploadProtocol :: Lens' ProjectsTenantsClientEventsCreate (Maybe Text)
ptcecUploadProtocol
  = lens _ptcecUploadProtocol
      (\ s a -> s{_ptcecUploadProtocol = a})

-- | OAuth access token.
ptcecAccessToken :: Lens' ProjectsTenantsClientEventsCreate (Maybe Text)
ptcecAccessToken
  = lens _ptcecAccessToken
      (\ s a -> s{_ptcecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcecUploadType :: Lens' ProjectsTenantsClientEventsCreate (Maybe Text)
ptcecUploadType
  = lens _ptcecUploadType
      (\ s a -> s{_ptcecUploadType = a})

-- | Multipart request metadata.
ptcecPayload :: Lens' ProjectsTenantsClientEventsCreate ClientEvent
ptcecPayload
  = lens _ptcecPayload (\ s a -> s{_ptcecPayload = a})

-- | JSONP
ptcecCallback :: Lens' ProjectsTenantsClientEventsCreate (Maybe Text)
ptcecCallback
  = lens _ptcecCallback
      (\ s a -> s{_ptcecCallback = a})

instance GoogleRequest
           ProjectsTenantsClientEventsCreate
         where
        type Rs ProjectsTenantsClientEventsCreate =
             ClientEvent
        type Scopes ProjectsTenantsClientEventsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsClientEventsCreate'{..}
          = go _ptcecParent _ptcecXgafv _ptcecUploadProtocol
              _ptcecAccessToken
              _ptcecUploadType
              _ptcecCallback
              (Just AltJSON)
              _ptcecPayload
              jobsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTenantsClientEventsCreateResource)
                      mempty

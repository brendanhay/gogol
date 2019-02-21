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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Templates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Cloud Dataflow job from a template.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.templates.create@.
module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Create
    (
    -- * REST Resource
      ProjectsLocationsTemplatesCreateResource

    -- * Creating a Request
    , projectsLocationsTemplatesCreate
    , ProjectsLocationsTemplatesCreate

    -- * Request Lenses
    , pltcXgafv
    , pltcUploadProtocol
    , pltcLocation
    , pltcAccessToken
    , pltcUploadType
    , pltcPayload
    , pltcProjectId
    , pltcCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.templates.create@ method which the
-- 'ProjectsLocationsTemplatesCreate' request conforms to.
type ProjectsLocationsTemplatesCreateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "templates" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CreateJobFromTemplateRequest :>
                               Post '[JSON] Job

-- | Creates a Cloud Dataflow job from a template.
--
-- /See:/ 'projectsLocationsTemplatesCreate' smart constructor.
data ProjectsLocationsTemplatesCreate =
  ProjectsLocationsTemplatesCreate'
    { _pltcXgafv          :: !(Maybe Xgafv)
    , _pltcUploadProtocol :: !(Maybe Text)
    , _pltcLocation       :: !Text
    , _pltcAccessToken    :: !(Maybe Text)
    , _pltcUploadType     :: !(Maybe Text)
    , _pltcPayload        :: !CreateJobFromTemplateRequest
    , _pltcProjectId      :: !Text
    , _pltcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcXgafv'
--
-- * 'pltcUploadProtocol'
--
-- * 'pltcLocation'
--
-- * 'pltcAccessToken'
--
-- * 'pltcUploadType'
--
-- * 'pltcPayload'
--
-- * 'pltcProjectId'
--
-- * 'pltcCallback'
projectsLocationsTemplatesCreate
    :: Text -- ^ 'pltcLocation'
    -> CreateJobFromTemplateRequest -- ^ 'pltcPayload'
    -> Text -- ^ 'pltcProjectId'
    -> ProjectsLocationsTemplatesCreate
projectsLocationsTemplatesCreate pPltcLocation_ pPltcPayload_ pPltcProjectId_ =
  ProjectsLocationsTemplatesCreate'
    { _pltcXgafv = Nothing
    , _pltcUploadProtocol = Nothing
    , _pltcLocation = pPltcLocation_
    , _pltcAccessToken = Nothing
    , _pltcUploadType = Nothing
    , _pltcPayload = pPltcPayload_
    , _pltcProjectId = pPltcProjectId_
    , _pltcCallback = Nothing
    }


-- | V1 error format.
pltcXgafv :: Lens' ProjectsLocationsTemplatesCreate (Maybe Xgafv)
pltcXgafv
  = lens _pltcXgafv (\ s a -> s{_pltcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcUploadProtocol :: Lens' ProjectsLocationsTemplatesCreate (Maybe Text)
pltcUploadProtocol
  = lens _pltcUploadProtocol
      (\ s a -> s{_pltcUploadProtocol = a})

-- | The location to which to direct the request.
pltcLocation :: Lens' ProjectsLocationsTemplatesCreate Text
pltcLocation
  = lens _pltcLocation (\ s a -> s{_pltcLocation = a})

-- | OAuth access token.
pltcAccessToken :: Lens' ProjectsLocationsTemplatesCreate (Maybe Text)
pltcAccessToken
  = lens _pltcAccessToken
      (\ s a -> s{_pltcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcUploadType :: Lens' ProjectsLocationsTemplatesCreate (Maybe Text)
pltcUploadType
  = lens _pltcUploadType
      (\ s a -> s{_pltcUploadType = a})

-- | Multipart request metadata.
pltcPayload :: Lens' ProjectsLocationsTemplatesCreate CreateJobFromTemplateRequest
pltcPayload
  = lens _pltcPayload (\ s a -> s{_pltcPayload = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
pltcProjectId :: Lens' ProjectsLocationsTemplatesCreate Text
pltcProjectId
  = lens _pltcProjectId
      (\ s a -> s{_pltcProjectId = a})

-- | JSONP
pltcCallback :: Lens' ProjectsLocationsTemplatesCreate (Maybe Text)
pltcCallback
  = lens _pltcCallback (\ s a -> s{_pltcCallback = a})

instance GoogleRequest
           ProjectsLocationsTemplatesCreate
         where
        type Rs ProjectsLocationsTemplatesCreate = Job
        type Scopes ProjectsLocationsTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsTemplatesCreate'{..}
          = go _pltcProjectId _pltcLocation _pltcXgafv
              _pltcUploadProtocol
              _pltcAccessToken
              _pltcUploadType
              _pltcCallback
              (Just AltJSON)
              _pltcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTemplatesCreateResource)
                      mempty

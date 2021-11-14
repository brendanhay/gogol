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
-- Module      : Network.Google.Resource.Dataflow.Projects.Locations.Templates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the template associated with a template.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.templates.get@.
module Network.Google.Resource.Dataflow.Projects.Locations.Templates.Get
    (
    -- * REST Resource
      ProjectsLocationsTemplatesGetResource

    -- * Creating a Request
    , projectsLocationsTemplatesGet
    , ProjectsLocationsTemplatesGet

    -- * Request Lenses
    , pltgXgafv
    , pltgUploadProtocol
    , pltgLocation
    , pltgAccessToken
    , pltgUploadType
    , pltgGcsPath
    , pltgView
    , pltgProjectId
    , pltgCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.locations.templates.get@ method which the
-- 'ProjectsLocationsTemplatesGet' request conforms to.
type ProjectsLocationsTemplatesGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "locations" :>
             Capture "location" Text :>
               "templates:get" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "gcsPath" Text :>
                           QueryParam "view" ProjectsLocationsTemplatesGetView
                             :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] GetTemplateResponse

-- | Get the template associated with a template.
--
-- /See:/ 'projectsLocationsTemplatesGet' smart constructor.
data ProjectsLocationsTemplatesGet =
  ProjectsLocationsTemplatesGet'
    { _pltgXgafv :: !(Maybe Xgafv)
    , _pltgUploadProtocol :: !(Maybe Text)
    , _pltgLocation :: !Text
    , _pltgAccessToken :: !(Maybe Text)
    , _pltgUploadType :: !(Maybe Text)
    , _pltgGcsPath :: !(Maybe Text)
    , _pltgView :: !(Maybe ProjectsLocationsTemplatesGetView)
    , _pltgProjectId :: !Text
    , _pltgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltgXgafv'
--
-- * 'pltgUploadProtocol'
--
-- * 'pltgLocation'
--
-- * 'pltgAccessToken'
--
-- * 'pltgUploadType'
--
-- * 'pltgGcsPath'
--
-- * 'pltgView'
--
-- * 'pltgProjectId'
--
-- * 'pltgCallback'
projectsLocationsTemplatesGet
    :: Text -- ^ 'pltgLocation'
    -> Text -- ^ 'pltgProjectId'
    -> ProjectsLocationsTemplatesGet
projectsLocationsTemplatesGet pPltgLocation_ pPltgProjectId_ =
  ProjectsLocationsTemplatesGet'
    { _pltgXgafv = Nothing
    , _pltgUploadProtocol = Nothing
    , _pltgLocation = pPltgLocation_
    , _pltgAccessToken = Nothing
    , _pltgUploadType = Nothing
    , _pltgGcsPath = Nothing
    , _pltgView = Nothing
    , _pltgProjectId = pPltgProjectId_
    , _pltgCallback = Nothing
    }


-- | V1 error format.
pltgXgafv :: Lens' ProjectsLocationsTemplatesGet (Maybe Xgafv)
pltgXgafv
  = lens _pltgXgafv (\ s a -> s{_pltgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltgUploadProtocol :: Lens' ProjectsLocationsTemplatesGet (Maybe Text)
pltgUploadProtocol
  = lens _pltgUploadProtocol
      (\ s a -> s{_pltgUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- to which to direct the request.
pltgLocation :: Lens' ProjectsLocationsTemplatesGet Text
pltgLocation
  = lens _pltgLocation (\ s a -> s{_pltgLocation = a})

-- | OAuth access token.
pltgAccessToken :: Lens' ProjectsLocationsTemplatesGet (Maybe Text)
pltgAccessToken
  = lens _pltgAccessToken
      (\ s a -> s{_pltgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltgUploadType :: Lens' ProjectsLocationsTemplatesGet (Maybe Text)
pltgUploadType
  = lens _pltgUploadType
      (\ s a -> s{_pltgUploadType = a})

-- | Required. A Cloud Storage path to the template from which to create the
-- job. Must be valid Cloud Storage URL, beginning with \'gs:\/\/\'.
pltgGcsPath :: Lens' ProjectsLocationsTemplatesGet (Maybe Text)
pltgGcsPath
  = lens _pltgGcsPath (\ s a -> s{_pltgGcsPath = a})

-- | The view to retrieve. Defaults to METADATA_ONLY.
pltgView :: Lens' ProjectsLocationsTemplatesGet (Maybe ProjectsLocationsTemplatesGetView)
pltgView = lens _pltgView (\ s a -> s{_pltgView = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
pltgProjectId :: Lens' ProjectsLocationsTemplatesGet Text
pltgProjectId
  = lens _pltgProjectId
      (\ s a -> s{_pltgProjectId = a})

-- | JSONP
pltgCallback :: Lens' ProjectsLocationsTemplatesGet (Maybe Text)
pltgCallback
  = lens _pltgCallback (\ s a -> s{_pltgCallback = a})

instance GoogleRequest ProjectsLocationsTemplatesGet
         where
        type Rs ProjectsLocationsTemplatesGet =
             GetTemplateResponse
        type Scopes ProjectsLocationsTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsLocationsTemplatesGet'{..}
          = go _pltgProjectId _pltgLocation _pltgXgafv
              _pltgUploadProtocol
              _pltgAccessToken
              _pltgUploadType
              _pltgGcsPath
              _pltgView
              _pltgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTemplatesGetResource)
                      mempty

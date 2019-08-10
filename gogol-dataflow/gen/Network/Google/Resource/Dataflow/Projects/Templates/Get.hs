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
-- Module      : Network.Google.Resource.Dataflow.Projects.Templates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the template associated with a template.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.templates.get@.
module Network.Google.Resource.Dataflow.Projects.Templates.Get
    (
    -- * REST Resource
      ProjectsTemplatesGetResource

    -- * Creating a Request
    , projectsTemplatesGet
    , ProjectsTemplatesGet

    -- * Request Lenses
    , ptgXgafv
    , ptgUploadProtocol
    , ptgLocation
    , ptgAccessToken
    , ptgUploadType
    , ptgGcsPath
    , ptgView
    , ptgProjectId
    , ptgCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.templates.get@ method which the
-- 'ProjectsTemplatesGet' request conforms to.
type ProjectsTemplatesGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "templates:get" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "location" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "gcsPath" Text :>
                         QueryParam "view" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] GetTemplateResponse

-- | Get the template associated with a template.
--
-- /See:/ 'projectsTemplatesGet' smart constructor.
data ProjectsTemplatesGet =
  ProjectsTemplatesGet'
    { _ptgXgafv          :: !(Maybe Xgafv)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgLocation       :: !(Maybe Text)
    , _ptgAccessToken    :: !(Maybe Text)
    , _ptgUploadType     :: !(Maybe Text)
    , _ptgGcsPath        :: !(Maybe Text)
    , _ptgView           :: !(Maybe Text)
    , _ptgProjectId      :: !Text
    , _ptgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgXgafv'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgLocation'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgGcsPath'
--
-- * 'ptgView'
--
-- * 'ptgProjectId'
--
-- * 'ptgCallback'
projectsTemplatesGet
    :: Text -- ^ 'ptgProjectId'
    -> ProjectsTemplatesGet
projectsTemplatesGet pPtgProjectId_ =
  ProjectsTemplatesGet'
    { _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgLocation = Nothing
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgGcsPath = Nothing
    , _ptgView = Nothing
    , _ptgProjectId = pPtgProjectId_
    , _ptgCallback = Nothing
    }


-- | V1 error format.
ptgXgafv :: Lens' ProjectsTemplatesGet (Maybe Xgafv)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | The [regional endpoint]
-- (https:\/\/cloud.google.com\/dataflow\/docs\/concepts\/regional-endpoints)
-- to which to direct the request.
ptgLocation :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgLocation
  = lens _ptgLocation (\ s a -> s{_ptgLocation = a})

-- | OAuth access token.
ptgAccessToken :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | Required. A Cloud Storage path to the template from which to create the
-- job. Must be valid Cloud Storage URL, beginning with \'gs:\/\/\'.
ptgGcsPath :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgGcsPath
  = lens _ptgGcsPath (\ s a -> s{_ptgGcsPath = a})

-- | The view to retrieve. Defaults to METADATA_ONLY.
ptgView :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgView = lens _ptgView (\ s a -> s{_ptgView = a})

-- | Required. The ID of the Cloud Platform project that the job belongs to.
ptgProjectId :: Lens' ProjectsTemplatesGet Text
ptgProjectId
  = lens _ptgProjectId (\ s a -> s{_ptgProjectId = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTemplatesGet (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest ProjectsTemplatesGet where
        type Rs ProjectsTemplatesGet = GetTemplateResponse
        type Scopes ProjectsTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsTemplatesGet'{..}
          = go _ptgProjectId _ptgXgafv _ptgUploadProtocol
              _ptgLocation
              _ptgAccessToken
              _ptgUploadType
              _ptgGcsPath
              _ptgView
              _ptgCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTemplatesGetResource)
                      mempty

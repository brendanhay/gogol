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
-- Module      : Network.Google.Resource.Dataflow.Projects.Templates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a dataflow job from a template.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @dataflow.projects.templates.create@.
module Network.Google.Resource.Dataflow.Projects.Templates.Create
    (
    -- * REST Resource
      ProjectsTemplatesCreateResource

    -- * Creating a Request
    , projectsTemplatesCreate
    , ProjectsTemplatesCreate

    -- * Request Lenses
    , ptcXgafv
    , ptcUploadProtocol
    , ptcPp
    , ptcAccessToken
    , ptcUploadType
    , ptcPayload
    , ptcBearerToken
    , ptcProjectId
    , ptcCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @dataflow.projects.templates.create@ method which the
-- 'ProjectsTemplatesCreate' request conforms to.
type ProjectsTemplatesCreateResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "templates" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CreateJobFromTemplateRequest :>
                               Post '[JSON] Job

-- | Creates a dataflow job from a template.
--
-- /See:/ 'projectsTemplatesCreate' smart constructor.
data ProjectsTemplatesCreate = ProjectsTemplatesCreate'
    { _ptcXgafv          :: !(Maybe Text)
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcPp             :: !Bool
    , _ptcAccessToken    :: !(Maybe Text)
    , _ptcUploadType     :: !(Maybe Text)
    , _ptcPayload        :: !CreateJobFromTemplateRequest
    , _ptcBearerToken    :: !(Maybe Text)
    , _ptcProjectId      :: !Text
    , _ptcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcXgafv'
--
-- * 'ptcUploadProtocol'
--
-- * 'ptcPp'
--
-- * 'ptcAccessToken'
--
-- * 'ptcUploadType'
--
-- * 'ptcPayload'
--
-- * 'ptcBearerToken'
--
-- * 'ptcProjectId'
--
-- * 'ptcCallback'
projectsTemplatesCreate
    :: CreateJobFromTemplateRequest -- ^ 'ptcPayload'
    -> Text -- ^ 'ptcProjectId'
    -> ProjectsTemplatesCreate
projectsTemplatesCreate pPtcPayload_ pPtcProjectId_ =
    ProjectsTemplatesCreate'
    { _ptcXgafv = Nothing
    , _ptcUploadProtocol = Nothing
    , _ptcPp = True
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcPayload = pPtcPayload_
    , _ptcBearerToken = Nothing
    , _ptcProjectId = pPtcProjectId_
    , _ptcCallback = Nothing
    }

-- | V1 error format.
ptcXgafv :: Lens' ProjectsTemplatesCreate (Maybe Text)
ptcXgafv = lens _ptcXgafv (\ s a -> s{_ptcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcUploadProtocol :: Lens' ProjectsTemplatesCreate (Maybe Text)
ptcUploadProtocol
  = lens _ptcUploadProtocol
      (\ s a -> s{_ptcUploadProtocol = a})

-- | Pretty-print response.
ptcPp :: Lens' ProjectsTemplatesCreate Bool
ptcPp = lens _ptcPp (\ s a -> s{_ptcPp = a})

-- | OAuth access token.
ptcAccessToken :: Lens' ProjectsTemplatesCreate (Maybe Text)
ptcAccessToken
  = lens _ptcAccessToken
      (\ s a -> s{_ptcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcUploadType :: Lens' ProjectsTemplatesCreate (Maybe Text)
ptcUploadType
  = lens _ptcUploadType
      (\ s a -> s{_ptcUploadType = a})

-- | Multipart request metadata.
ptcPayload :: Lens' ProjectsTemplatesCreate CreateJobFromTemplateRequest
ptcPayload
  = lens _ptcPayload (\ s a -> s{_ptcPayload = a})

-- | OAuth bearer token.
ptcBearerToken :: Lens' ProjectsTemplatesCreate (Maybe Text)
ptcBearerToken
  = lens _ptcBearerToken
      (\ s a -> s{_ptcBearerToken = a})

-- | The project which owns the job.
ptcProjectId :: Lens' ProjectsTemplatesCreate Text
ptcProjectId
  = lens _ptcProjectId (\ s a -> s{_ptcProjectId = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTemplatesCreate (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

instance GoogleRequest ProjectsTemplatesCreate where
        type Rs ProjectsTemplatesCreate = Job
        type Scopes ProjectsTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsTemplatesCreate'{..}
          = go _ptcProjectId _ptcXgafv _ptcUploadProtocol
              (Just _ptcPp)
              _ptcAccessToken
              _ptcUploadType
              _ptcBearerToken
              _ptcCallback
              (Just AltJSON)
              _ptcPayload
              dataflowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTemplatesCreateResource)
                      mempty

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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new \`BuildTrigger\`. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.create@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.Create
    (
    -- * REST Resource
      ProjectsTriggersCreateResource

    -- * Creating a Request
    , projectsTriggersCreate
    , ProjectsTriggersCreate

    -- * Request Lenses
    , ptcParent
    , ptcXgafv
    , ptcUploadProtocol
    , ptcAccessToken
    , ptcUploadType
    , ptcPayload
    , ptcProjectId
    , ptcCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.create@ method which the
-- 'ProjectsTriggersCreate' request conforms to.
type ProjectsTriggersCreateResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             QueryParam "parent" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BuildTrigger :>
                             Post '[JSON] BuildTrigger

-- | Creates a new \`BuildTrigger\`. This API is experimental.
--
-- /See:/ 'projectsTriggersCreate' smart constructor.
data ProjectsTriggersCreate =
  ProjectsTriggersCreate'
    { _ptcParent :: !(Maybe Text)
    , _ptcXgafv :: !(Maybe Xgafv)
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcAccessToken :: !(Maybe Text)
    , _ptcUploadType :: !(Maybe Text)
    , _ptcPayload :: !BuildTrigger
    , _ptcProjectId :: !Text
    , _ptcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcParent'
--
-- * 'ptcXgafv'
--
-- * 'ptcUploadProtocol'
--
-- * 'ptcAccessToken'
--
-- * 'ptcUploadType'
--
-- * 'ptcPayload'
--
-- * 'ptcProjectId'
--
-- * 'ptcCallback'
projectsTriggersCreate
    :: BuildTrigger -- ^ 'ptcPayload'
    -> Text -- ^ 'ptcProjectId'
    -> ProjectsTriggersCreate
projectsTriggersCreate pPtcPayload_ pPtcProjectId_ =
  ProjectsTriggersCreate'
    { _ptcParent = Nothing
    , _ptcXgafv = Nothing
    , _ptcUploadProtocol = Nothing
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcPayload = pPtcPayload_
    , _ptcProjectId = pPtcProjectId_
    , _ptcCallback = Nothing
    }


-- | The parent resource where this trigger will be created. Format:
-- \`projects\/{project}\/locations\/{location}\`
ptcParent :: Lens' ProjectsTriggersCreate (Maybe Text)
ptcParent
  = lens _ptcParent (\ s a -> s{_ptcParent = a})

-- | V1 error format.
ptcXgafv :: Lens' ProjectsTriggersCreate (Maybe Xgafv)
ptcXgafv = lens _ptcXgafv (\ s a -> s{_ptcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcUploadProtocol :: Lens' ProjectsTriggersCreate (Maybe Text)
ptcUploadProtocol
  = lens _ptcUploadProtocol
      (\ s a -> s{_ptcUploadProtocol = a})

-- | OAuth access token.
ptcAccessToken :: Lens' ProjectsTriggersCreate (Maybe Text)
ptcAccessToken
  = lens _ptcAccessToken
      (\ s a -> s{_ptcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcUploadType :: Lens' ProjectsTriggersCreate (Maybe Text)
ptcUploadType
  = lens _ptcUploadType
      (\ s a -> s{_ptcUploadType = a})

-- | Multipart request metadata.
ptcPayload :: Lens' ProjectsTriggersCreate BuildTrigger
ptcPayload
  = lens _ptcPayload (\ s a -> s{_ptcPayload = a})

-- | Required. ID of the project for which to configure automatic builds.
ptcProjectId :: Lens' ProjectsTriggersCreate Text
ptcProjectId
  = lens _ptcProjectId (\ s a -> s{_ptcProjectId = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTriggersCreate (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

instance GoogleRequest ProjectsTriggersCreate where
        type Rs ProjectsTriggersCreate = BuildTrigger
        type Scopes ProjectsTriggersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTriggersCreate'{..}
          = go _ptcProjectId _ptcParent _ptcXgafv
              _ptcUploadProtocol
              _ptcAccessToken
              _ptcUploadType
              _ptcCallback
              (Just AltJSON)
              _ptcPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersCreateResource)
                      mempty

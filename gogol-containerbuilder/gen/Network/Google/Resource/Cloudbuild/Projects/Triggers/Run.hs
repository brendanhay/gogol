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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.Run
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a \`BuildTrigger\` at a particular source revision.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.run@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.Run
    (
    -- * REST Resource
      ProjectsTriggersRunResource

    -- * Creating a Request
    , projectsTriggersRun
    , ProjectsTriggersRun

    -- * Request Lenses
    , ptrXgafv
    , ptrUploadProtocol
    , ptrTriggerId
    , ptrAccessToken
    , ptrUploadType
    , ptrPayload
    , ptrProjectId
    , ptrCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.run@ method which the
-- 'ProjectsTriggersRun' request conforms to.
type ProjectsTriggersRunResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             CaptureMode "triggerId" "run" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RepoSource :> Post '[JSON] Operation

-- | Runs a \`BuildTrigger\` at a particular source revision.
--
-- /See:/ 'projectsTriggersRun' smart constructor.
data ProjectsTriggersRun =
  ProjectsTriggersRun'
    { _ptrXgafv          :: !(Maybe Xgafv)
    , _ptrUploadProtocol :: !(Maybe Text)
    , _ptrTriggerId      :: !Text
    , _ptrAccessToken    :: !(Maybe Text)
    , _ptrUploadType     :: !(Maybe Text)
    , _ptrPayload        :: !RepoSource
    , _ptrProjectId      :: !Text
    , _ptrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTriggersRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptrXgafv'
--
-- * 'ptrUploadProtocol'
--
-- * 'ptrTriggerId'
--
-- * 'ptrAccessToken'
--
-- * 'ptrUploadType'
--
-- * 'ptrPayload'
--
-- * 'ptrProjectId'
--
-- * 'ptrCallback'
projectsTriggersRun
    :: Text -- ^ 'ptrTriggerId'
    -> RepoSource -- ^ 'ptrPayload'
    -> Text -- ^ 'ptrProjectId'
    -> ProjectsTriggersRun
projectsTriggersRun pPtrTriggerId_ pPtrPayload_ pPtrProjectId_ =
  ProjectsTriggersRun'
    { _ptrXgafv = Nothing
    , _ptrUploadProtocol = Nothing
    , _ptrTriggerId = pPtrTriggerId_
    , _ptrAccessToken = Nothing
    , _ptrUploadType = Nothing
    , _ptrPayload = pPtrPayload_
    , _ptrProjectId = pPtrProjectId_
    , _ptrCallback = Nothing
    }


-- | V1 error format.
ptrXgafv :: Lens' ProjectsTriggersRun (Maybe Xgafv)
ptrXgafv = lens _ptrXgafv (\ s a -> s{_ptrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptrUploadProtocol :: Lens' ProjectsTriggersRun (Maybe Text)
ptrUploadProtocol
  = lens _ptrUploadProtocol
      (\ s a -> s{_ptrUploadProtocol = a})

-- | ID of the trigger.
ptrTriggerId :: Lens' ProjectsTriggersRun Text
ptrTriggerId
  = lens _ptrTriggerId (\ s a -> s{_ptrTriggerId = a})

-- | OAuth access token.
ptrAccessToken :: Lens' ProjectsTriggersRun (Maybe Text)
ptrAccessToken
  = lens _ptrAccessToken
      (\ s a -> s{_ptrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptrUploadType :: Lens' ProjectsTriggersRun (Maybe Text)
ptrUploadType
  = lens _ptrUploadType
      (\ s a -> s{_ptrUploadType = a})

-- | Multipart request metadata.
ptrPayload :: Lens' ProjectsTriggersRun RepoSource
ptrPayload
  = lens _ptrPayload (\ s a -> s{_ptrPayload = a})

-- | ID of the project.
ptrProjectId :: Lens' ProjectsTriggersRun Text
ptrProjectId
  = lens _ptrProjectId (\ s a -> s{_ptrProjectId = a})

-- | JSONP
ptrCallback :: Lens' ProjectsTriggersRun (Maybe Text)
ptrCallback
  = lens _ptrCallback (\ s a -> s{_ptrCallback = a})

instance GoogleRequest ProjectsTriggersRun where
        type Rs ProjectsTriggersRun = Operation
        type Scopes ProjectsTriggersRun =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTriggersRun'{..}
          = go _ptrProjectId _ptrTriggerId _ptrXgafv
              _ptrUploadProtocol
              _ptrAccessToken
              _ptrUploadType
              _ptrCallback
              (Just AltJSON)
              _ptrPayload
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersRunResource)
                      mempty

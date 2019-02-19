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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a \`BuildTrigger\`. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.get@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.Get
    (
    -- * REST Resource
      ProjectsTriggersGetResource

    -- * Creating a Request
    , projectsTriggersGet
    , ProjectsTriggersGet

    -- * Request Lenses
    , ptgXgafv
    , ptgUploadProtocol
    , ptgTriggerId
    , ptgAccessToken
    , ptgUploadType
    , ptgProjectId
    , ptgCallback
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.get@ method which the
-- 'ProjectsTriggersGet' request conforms to.
type ProjectsTriggersGetResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             Capture "triggerId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] BuildTrigger

-- | Returns information about a \`BuildTrigger\`. This API is experimental.
--
-- /See:/ 'projectsTriggersGet' smart constructor.
data ProjectsTriggersGet =
  ProjectsTriggersGet'
    { _ptgXgafv          :: !(Maybe Xgafv)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgTriggerId      :: !Text
    , _ptgAccessToken    :: !(Maybe Text)
    , _ptgUploadType     :: !(Maybe Text)
    , _ptgProjectId      :: !Text
    , _ptgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgXgafv'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgTriggerId'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgProjectId'
--
-- * 'ptgCallback'
projectsTriggersGet
    :: Text -- ^ 'ptgTriggerId'
    -> Text -- ^ 'ptgProjectId'
    -> ProjectsTriggersGet
projectsTriggersGet pPtgTriggerId_ pPtgProjectId_ =
  ProjectsTriggersGet'
    { _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgTriggerId = pPtgTriggerId_
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgProjectId = pPtgProjectId_
    , _ptgCallback = Nothing
    }

-- | V1 error format.
ptgXgafv :: Lens' ProjectsTriggersGet (Maybe Xgafv)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' ProjectsTriggersGet (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | ID of the \`BuildTrigger\` to get.
ptgTriggerId :: Lens' ProjectsTriggersGet Text
ptgTriggerId
  = lens _ptgTriggerId (\ s a -> s{_ptgTriggerId = a})

-- | OAuth access token.
ptgAccessToken :: Lens' ProjectsTriggersGet (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' ProjectsTriggersGet (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | ID of the project that owns the trigger.
ptgProjectId :: Lens' ProjectsTriggersGet Text
ptgProjectId
  = lens _ptgProjectId (\ s a -> s{_ptgProjectId = a})

-- | JSONP
ptgCallback :: Lens' ProjectsTriggersGet (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest ProjectsTriggersGet where
        type Rs ProjectsTriggersGet = BuildTrigger
        type Scopes ProjectsTriggersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTriggersGet'{..}
          = go _ptgProjectId _ptgTriggerId _ptgXgafv
              _ptgUploadProtocol
              _ptgAccessToken
              _ptgUploadType
              _ptgCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersGetResource)
                      mempty

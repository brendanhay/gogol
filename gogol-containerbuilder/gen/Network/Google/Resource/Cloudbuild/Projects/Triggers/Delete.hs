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
-- Module      : Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a \`BuildTrigger\` by its project ID and trigger ID. This API is
-- experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.delete@.
module Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete
    (
    -- * REST Resource
      ProjectsTriggersDeleteResource

    -- * Creating a Request
    , projectsTriggersDelete
    , ProjectsTriggersDelete

    -- * Request Lenses
    , ptdXgafv
    , ptdUploadProtocol
    , ptdTriggerId
    , ptdAccessToken
    , ptdUploadType
    , ptdName
    , ptdProjectId
    , ptdCallback
    ) where

import Network.Google.ContainerBuilder.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbuild.projects.triggers.delete@ method which the
-- 'ProjectsTriggersDelete' request conforms to.
type ProjectsTriggersDeleteResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "triggers" :>
             Capture "triggerId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "name" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a \`BuildTrigger\` by its project ID and trigger ID. This API is
-- experimental.
--
-- /See:/ 'projectsTriggersDelete' smart constructor.
data ProjectsTriggersDelete =
  ProjectsTriggersDelete'
    { _ptdXgafv :: !(Maybe Xgafv)
    , _ptdUploadProtocol :: !(Maybe Text)
    , _ptdTriggerId :: !Text
    , _ptdAccessToken :: !(Maybe Text)
    , _ptdUploadType :: !(Maybe Text)
    , _ptdName :: !(Maybe Text)
    , _ptdProjectId :: !Text
    , _ptdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptdXgafv'
--
-- * 'ptdUploadProtocol'
--
-- * 'ptdTriggerId'
--
-- * 'ptdAccessToken'
--
-- * 'ptdUploadType'
--
-- * 'ptdName'
--
-- * 'ptdProjectId'
--
-- * 'ptdCallback'
projectsTriggersDelete
    :: Text -- ^ 'ptdTriggerId'
    -> Text -- ^ 'ptdProjectId'
    -> ProjectsTriggersDelete
projectsTriggersDelete pPtdTriggerId_ pPtdProjectId_ =
  ProjectsTriggersDelete'
    { _ptdXgafv = Nothing
    , _ptdUploadProtocol = Nothing
    , _ptdTriggerId = pPtdTriggerId_
    , _ptdAccessToken = Nothing
    , _ptdUploadType = Nothing
    , _ptdName = Nothing
    , _ptdProjectId = pPtdProjectId_
    , _ptdCallback = Nothing
    }


-- | V1 error format.
ptdXgafv :: Lens' ProjectsTriggersDelete (Maybe Xgafv)
ptdXgafv = lens _ptdXgafv (\ s a -> s{_ptdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptdUploadProtocol :: Lens' ProjectsTriggersDelete (Maybe Text)
ptdUploadProtocol
  = lens _ptdUploadProtocol
      (\ s a -> s{_ptdUploadProtocol = a})

-- | Required. ID of the \`BuildTrigger\` to delete.
ptdTriggerId :: Lens' ProjectsTriggersDelete Text
ptdTriggerId
  = lens _ptdTriggerId (\ s a -> s{_ptdTriggerId = a})

-- | OAuth access token.
ptdAccessToken :: Lens' ProjectsTriggersDelete (Maybe Text)
ptdAccessToken
  = lens _ptdAccessToken
      (\ s a -> s{_ptdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptdUploadType :: Lens' ProjectsTriggersDelete (Maybe Text)
ptdUploadType
  = lens _ptdUploadType
      (\ s a -> s{_ptdUploadType = a})

-- | The name of the \`Trigger\` to delete. Format:
-- \`projects\/{project}\/locations\/{location}\/triggers\/{trigger}\`
ptdName :: Lens' ProjectsTriggersDelete (Maybe Text)
ptdName = lens _ptdName (\ s a -> s{_ptdName = a})

-- | Required. ID of the project that owns the trigger.
ptdProjectId :: Lens' ProjectsTriggersDelete Text
ptdProjectId
  = lens _ptdProjectId (\ s a -> s{_ptdProjectId = a})

-- | JSONP
ptdCallback :: Lens' ProjectsTriggersDelete (Maybe Text)
ptdCallback
  = lens _ptdCallback (\ s a -> s{_ptdCallback = a})

instance GoogleRequest ProjectsTriggersDelete where
        type Rs ProjectsTriggersDelete = Empty
        type Scopes ProjectsTriggersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTriggersDelete'{..}
          = go _ptdProjectId _ptdTriggerId _ptdXgafv
              _ptdUploadProtocol
              _ptdAccessToken
              _ptdUploadType
              _ptdName
              _ptdCallback
              (Just AltJSON)
              containerBuilderService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTriggersDeleteResource)
                      mempty

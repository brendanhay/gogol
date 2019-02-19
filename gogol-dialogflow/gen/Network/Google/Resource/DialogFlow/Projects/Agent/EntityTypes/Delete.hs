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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.entityTypes.delete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.EntityTypes.Delete
    (
    -- * REST Resource
      ProjectsAgentEntityTypesDeleteResource

    -- * Creating a Request
    , projectsAgentEntityTypesDelete
    , ProjectsAgentEntityTypesDelete

    -- * Request Lenses
    , paetdXgafv
    , paetdUploadProtocol
    , paetdAccessToken
    , paetdUploadType
    , paetdName
    , paetdCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.entityTypes.delete@ method which the
-- 'ProjectsAgentEntityTypesDelete' request conforms to.
type ProjectsAgentEntityTypesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified entity type.
--
-- /See:/ 'projectsAgentEntityTypesDelete' smart constructor.
data ProjectsAgentEntityTypesDelete =
  ProjectsAgentEntityTypesDelete'
    { _paetdXgafv          :: !(Maybe Xgafv)
    , _paetdUploadProtocol :: !(Maybe Text)
    , _paetdAccessToken    :: !(Maybe Text)
    , _paetdUploadType     :: !(Maybe Text)
    , _paetdName           :: !Text
    , _paetdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentEntityTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paetdXgafv'
--
-- * 'paetdUploadProtocol'
--
-- * 'paetdAccessToken'
--
-- * 'paetdUploadType'
--
-- * 'paetdName'
--
-- * 'paetdCallback'
projectsAgentEntityTypesDelete
    :: Text -- ^ 'paetdName'
    -> ProjectsAgentEntityTypesDelete
projectsAgentEntityTypesDelete pPaetdName_ =
  ProjectsAgentEntityTypesDelete'
    { _paetdXgafv = Nothing
    , _paetdUploadProtocol = Nothing
    , _paetdAccessToken = Nothing
    , _paetdUploadType = Nothing
    , _paetdName = pPaetdName_
    , _paetdCallback = Nothing
    }

-- | V1 error format.
paetdXgafv :: Lens' ProjectsAgentEntityTypesDelete (Maybe Xgafv)
paetdXgafv
  = lens _paetdXgafv (\ s a -> s{_paetdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paetdUploadProtocol :: Lens' ProjectsAgentEntityTypesDelete (Maybe Text)
paetdUploadProtocol
  = lens _paetdUploadProtocol
      (\ s a -> s{_paetdUploadProtocol = a})

-- | OAuth access token.
paetdAccessToken :: Lens' ProjectsAgentEntityTypesDelete (Maybe Text)
paetdAccessToken
  = lens _paetdAccessToken
      (\ s a -> s{_paetdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paetdUploadType :: Lens' ProjectsAgentEntityTypesDelete (Maybe Text)
paetdUploadType
  = lens _paetdUploadType
      (\ s a -> s{_paetdUploadType = a})

-- | Required. The name of the entity type to delete. Format:
-- \`projects\/\/agent\/entityTypes\/\`.
paetdName :: Lens' ProjectsAgentEntityTypesDelete Text
paetdName
  = lens _paetdName (\ s a -> s{_paetdName = a})

-- | JSONP
paetdCallback :: Lens' ProjectsAgentEntityTypesDelete (Maybe Text)
paetdCallback
  = lens _paetdCallback
      (\ s a -> s{_paetdCallback = a})

instance GoogleRequest ProjectsAgentEntityTypesDelete
         where
        type Rs ProjectsAgentEntityTypesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsAgentEntityTypesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentEntityTypesDelete'{..}
          = go _paetdName _paetdXgafv _paetdUploadProtocol
              _paetdAccessToken
              _paetdUploadType
              _paetdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentEntityTypesDeleteResource)
                      mempty

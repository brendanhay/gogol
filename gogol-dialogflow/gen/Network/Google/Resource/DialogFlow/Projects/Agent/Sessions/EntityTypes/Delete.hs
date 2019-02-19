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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.entityTypes.delete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Delete
    (
    -- * REST Resource
      ProjectsAgentSessionsEntityTypesDeleteResource

    -- * Creating a Request
    , projectsAgentSessionsEntityTypesDelete
    , ProjectsAgentSessionsEntityTypesDelete

    -- * Request Lenses
    , paSetdXgafv
    , paSetdUploadProtocol
    , paSetdAccessToken
    , paSetdUploadType
    , paSetdName
    , paSetdCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.entityTypes.delete@ method which the
-- 'ProjectsAgentSessionsEntityTypesDelete' request conforms to.
type ProjectsAgentSessionsEntityTypesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified session entity type.
--
-- /See:/ 'projectsAgentSessionsEntityTypesDelete' smart constructor.
data ProjectsAgentSessionsEntityTypesDelete =
  ProjectsAgentSessionsEntityTypesDelete'
    { _paSetdXgafv          :: !(Maybe Xgafv)
    , _paSetdUploadProtocol :: !(Maybe Text)
    , _paSetdAccessToken    :: !(Maybe Text)
    , _paSetdUploadType     :: !(Maybe Text)
    , _paSetdName           :: !Text
    , _paSetdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentSessionsEntityTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paSetdXgafv'
--
-- * 'paSetdUploadProtocol'
--
-- * 'paSetdAccessToken'
--
-- * 'paSetdUploadType'
--
-- * 'paSetdName'
--
-- * 'paSetdCallback'
projectsAgentSessionsEntityTypesDelete
    :: Text -- ^ 'paSetdName'
    -> ProjectsAgentSessionsEntityTypesDelete
projectsAgentSessionsEntityTypesDelete pPaSetdName_ =
  ProjectsAgentSessionsEntityTypesDelete'
    { _paSetdXgafv = Nothing
    , _paSetdUploadProtocol = Nothing
    , _paSetdAccessToken = Nothing
    , _paSetdUploadType = Nothing
    , _paSetdName = pPaSetdName_
    , _paSetdCallback = Nothing
    }


-- | V1 error format.
paSetdXgafv :: Lens' ProjectsAgentSessionsEntityTypesDelete (Maybe Xgafv)
paSetdXgafv
  = lens _paSetdXgafv (\ s a -> s{_paSetdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paSetdUploadProtocol :: Lens' ProjectsAgentSessionsEntityTypesDelete (Maybe Text)
paSetdUploadProtocol
  = lens _paSetdUploadProtocol
      (\ s a -> s{_paSetdUploadProtocol = a})

-- | OAuth access token.
paSetdAccessToken :: Lens' ProjectsAgentSessionsEntityTypesDelete (Maybe Text)
paSetdAccessToken
  = lens _paSetdAccessToken
      (\ s a -> s{_paSetdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paSetdUploadType :: Lens' ProjectsAgentSessionsEntityTypesDelete (Maybe Text)
paSetdUploadType
  = lens _paSetdUploadType
      (\ s a -> s{_paSetdUploadType = a})

-- | Required. The name of the entity type to delete. Format:
-- \`projects\/\/agent\/sessions\/\/entityTypes\/\`.
paSetdName :: Lens' ProjectsAgentSessionsEntityTypesDelete Text
paSetdName
  = lens _paSetdName (\ s a -> s{_paSetdName = a})

-- | JSONP
paSetdCallback :: Lens' ProjectsAgentSessionsEntityTypesDelete (Maybe Text)
paSetdCallback
  = lens _paSetdCallback
      (\ s a -> s{_paSetdCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsEntityTypesDelete
         where
        type Rs ProjectsAgentSessionsEntityTypesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsAgentSessionsEntityTypesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsEntityTypesDelete'{..}
          = go _paSetdName _paSetdXgafv _paSetdUploadProtocol
              _paSetdAccessToken
              _paSetdUploadType
              _paSetdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsEntityTypesDeleteResource)
                      mempty

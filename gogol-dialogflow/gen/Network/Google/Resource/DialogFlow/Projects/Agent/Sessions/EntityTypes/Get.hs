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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified session entity type.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.sessions.entityTypes.get@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Sessions.EntityTypes.Get
    (
    -- * REST Resource
      ProjectsAgentSessionsEntityTypesGetResource

    -- * Creating a Request
    , projectsAgentSessionsEntityTypesGet
    , ProjectsAgentSessionsEntityTypesGet

    -- * Request Lenses
    , paSetgXgafv
    , paSetgUploadProtocol
    , paSetgAccessToken
    , paSetgUploadType
    , paSetgName
    , paSetgCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.sessions.entityTypes.get@ method which the
-- 'ProjectsAgentSessionsEntityTypesGet' request conforms to.
type ProjectsAgentSessionsEntityTypesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowV2SessionEntityType

-- | Retrieves the specified session entity type.
--
-- /See:/ 'projectsAgentSessionsEntityTypesGet' smart constructor.
data ProjectsAgentSessionsEntityTypesGet =
  ProjectsAgentSessionsEntityTypesGet'
    { _paSetgXgafv          :: !(Maybe Xgafv)
    , _paSetgUploadProtocol :: !(Maybe Text)
    , _paSetgAccessToken    :: !(Maybe Text)
    , _paSetgUploadType     :: !(Maybe Text)
    , _paSetgName           :: !Text
    , _paSetgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsAgentSessionsEntityTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paSetgXgafv'
--
-- * 'paSetgUploadProtocol'
--
-- * 'paSetgAccessToken'
--
-- * 'paSetgUploadType'
--
-- * 'paSetgName'
--
-- * 'paSetgCallback'
projectsAgentSessionsEntityTypesGet
    :: Text -- ^ 'paSetgName'
    -> ProjectsAgentSessionsEntityTypesGet
projectsAgentSessionsEntityTypesGet pPaSetgName_ =
  ProjectsAgentSessionsEntityTypesGet'
    { _paSetgXgafv = Nothing
    , _paSetgUploadProtocol = Nothing
    , _paSetgAccessToken = Nothing
    , _paSetgUploadType = Nothing
    , _paSetgName = pPaSetgName_
    , _paSetgCallback = Nothing
    }

-- | V1 error format.
paSetgXgafv :: Lens' ProjectsAgentSessionsEntityTypesGet (Maybe Xgafv)
paSetgXgafv
  = lens _paSetgXgafv (\ s a -> s{_paSetgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paSetgUploadProtocol :: Lens' ProjectsAgentSessionsEntityTypesGet (Maybe Text)
paSetgUploadProtocol
  = lens _paSetgUploadProtocol
      (\ s a -> s{_paSetgUploadProtocol = a})

-- | OAuth access token.
paSetgAccessToken :: Lens' ProjectsAgentSessionsEntityTypesGet (Maybe Text)
paSetgAccessToken
  = lens _paSetgAccessToken
      (\ s a -> s{_paSetgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paSetgUploadType :: Lens' ProjectsAgentSessionsEntityTypesGet (Maybe Text)
paSetgUploadType
  = lens _paSetgUploadType
      (\ s a -> s{_paSetgUploadType = a})

-- | Required. The name of the session entity type. Format:
-- \`projects\/\/agent\/sessions\/\/entityTypes\/\`.
paSetgName :: Lens' ProjectsAgentSessionsEntityTypesGet Text
paSetgName
  = lens _paSetgName (\ s a -> s{_paSetgName = a})

-- | JSONP
paSetgCallback :: Lens' ProjectsAgentSessionsEntityTypesGet (Maybe Text)
paSetgCallback
  = lens _paSetgCallback
      (\ s a -> s{_paSetgCallback = a})

instance GoogleRequest
           ProjectsAgentSessionsEntityTypesGet
         where
        type Rs ProjectsAgentSessionsEntityTypesGet =
             GoogleCloudDialogflowV2SessionEntityType
        type Scopes ProjectsAgentSessionsEntityTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsAgentSessionsEntityTypesGet'{..}
          = go _paSetgName _paSetgXgafv _paSetgUploadProtocol
              _paSetgAccessToken
              _paSetgUploadType
              _paSetgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsAgentSessionsEntityTypesGetResource)
                      mempty

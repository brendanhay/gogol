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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified intent and its direct or indirect followup
-- intents.
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.intents.delete@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Intents.Delete
    (
    -- * REST Resource
      ProjectsAgentIntentsDeleteResource

    -- * Creating a Request
    , projectsAgentIntentsDelete
    , ProjectsAgentIntentsDelete

    -- * Request Lenses
    , paidXgafv
    , paidUploadProtocol
    , paidAccessToken
    , paidUploadType
    , paidName
    , paidCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.intents.delete@ method which the
-- 'ProjectsAgentIntentsDelete' request conforms to.
type ProjectsAgentIntentsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified intent and its direct or indirect followup
-- intents.
--
-- /See:/ 'projectsAgentIntentsDelete' smart constructor.
data ProjectsAgentIntentsDelete = ProjectsAgentIntentsDelete'
    { _paidXgafv          :: !(Maybe Xgafv)
    , _paidUploadProtocol :: !(Maybe Text)
    , _paidAccessToken    :: !(Maybe Text)
    , _paidUploadType     :: !(Maybe Text)
    , _paidName           :: !Text
    , _paidCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentIntentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paidXgafv'
--
-- * 'paidUploadProtocol'
--
-- * 'paidAccessToken'
--
-- * 'paidUploadType'
--
-- * 'paidName'
--
-- * 'paidCallback'
projectsAgentIntentsDelete
    :: Text -- ^ 'paidName'
    -> ProjectsAgentIntentsDelete
projectsAgentIntentsDelete pPaidName_ =
    ProjectsAgentIntentsDelete'
    { _paidXgafv = Nothing
    , _paidUploadProtocol = Nothing
    , _paidAccessToken = Nothing
    , _paidUploadType = Nothing
    , _paidName = pPaidName_
    , _paidCallback = Nothing
    }

-- | V1 error format.
paidXgafv :: Lens' ProjectsAgentIntentsDelete (Maybe Xgafv)
paidXgafv
  = lens _paidXgafv (\ s a -> s{_paidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paidUploadProtocol :: Lens' ProjectsAgentIntentsDelete (Maybe Text)
paidUploadProtocol
  = lens _paidUploadProtocol
      (\ s a -> s{_paidUploadProtocol = a})

-- | OAuth access token.
paidAccessToken :: Lens' ProjectsAgentIntentsDelete (Maybe Text)
paidAccessToken
  = lens _paidAccessToken
      (\ s a -> s{_paidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paidUploadType :: Lens' ProjectsAgentIntentsDelete (Maybe Text)
paidUploadType
  = lens _paidUploadType
      (\ s a -> s{_paidUploadType = a})

-- | Required. The name of the intent to delete. If this intent has direct or
-- indirect followup intents, we also delete them. Format:
-- \`projects\/\/agent\/intents\/\`.
paidName :: Lens' ProjectsAgentIntentsDelete Text
paidName = lens _paidName (\ s a -> s{_paidName = a})

-- | JSONP
paidCallback :: Lens' ProjectsAgentIntentsDelete (Maybe Text)
paidCallback
  = lens _paidCallback (\ s a -> s{_paidCallback = a})

instance GoogleRequest ProjectsAgentIntentsDelete
         where
        type Rs ProjectsAgentIntentsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsAgentIntentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentIntentsDelete'{..}
          = go _paidName _paidXgafv _paidUploadProtocol
              _paidAccessToken
              _paidUploadType
              _paidCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentIntentsDeleteResource)
                      mempty

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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified agent. Note: You should always train flows prior
-- to sending them queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsPatch
    , ProjectsLocationsAgentsPatch

    -- * Request Lenses
    , plapXgafv
    , plapUploadProtocol
    , plapUpdateMask
    , plapAccessToken
    , plapUploadType
    , plapPayload
    , plapName
    , plapCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.patch@ method which the
-- 'ProjectsLocationsAgentsPatch' request conforms to.
type ProjectsLocationsAgentsPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Agent :>
                         Patch '[JSON] GoogleCloudDialogflowCxV3Agent

-- | Updates the specified agent. Note: You should always train flows prior
-- to sending them queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsPatch' smart constructor.
data ProjectsLocationsAgentsPatch =
  ProjectsLocationsAgentsPatch'
    { _plapXgafv :: !(Maybe Xgafv)
    , _plapUploadProtocol :: !(Maybe Text)
    , _plapUpdateMask :: !(Maybe GFieldMask)
    , _plapAccessToken :: !(Maybe Text)
    , _plapUploadType :: !(Maybe Text)
    , _plapPayload :: !GoogleCloudDialogflowCxV3Agent
    , _plapName :: !Text
    , _plapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plapXgafv'
--
-- * 'plapUploadProtocol'
--
-- * 'plapUpdateMask'
--
-- * 'plapAccessToken'
--
-- * 'plapUploadType'
--
-- * 'plapPayload'
--
-- * 'plapName'
--
-- * 'plapCallback'
projectsLocationsAgentsPatch
    :: GoogleCloudDialogflowCxV3Agent -- ^ 'plapPayload'
    -> Text -- ^ 'plapName'
    -> ProjectsLocationsAgentsPatch
projectsLocationsAgentsPatch pPlapPayload_ pPlapName_ =
  ProjectsLocationsAgentsPatch'
    { _plapXgafv = Nothing
    , _plapUploadProtocol = Nothing
    , _plapUpdateMask = Nothing
    , _plapAccessToken = Nothing
    , _plapUploadType = Nothing
    , _plapPayload = pPlapPayload_
    , _plapName = pPlapName_
    , _plapCallback = Nothing
    }


-- | V1 error format.
plapXgafv :: Lens' ProjectsLocationsAgentsPatch (Maybe Xgafv)
plapXgafv
  = lens _plapXgafv (\ s a -> s{_plapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plapUploadProtocol :: Lens' ProjectsLocationsAgentsPatch (Maybe Text)
plapUploadProtocol
  = lens _plapUploadProtocol
      (\ s a -> s{_plapUploadProtocol = a})

-- | The mask to control which fields get updated. If the mask is not
-- present, all fields will be updated.
plapUpdateMask :: Lens' ProjectsLocationsAgentsPatch (Maybe GFieldMask)
plapUpdateMask
  = lens _plapUpdateMask
      (\ s a -> s{_plapUpdateMask = a})

-- | OAuth access token.
plapAccessToken :: Lens' ProjectsLocationsAgentsPatch (Maybe Text)
plapAccessToken
  = lens _plapAccessToken
      (\ s a -> s{_plapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plapUploadType :: Lens' ProjectsLocationsAgentsPatch (Maybe Text)
plapUploadType
  = lens _plapUploadType
      (\ s a -> s{_plapUploadType = a})

-- | Multipart request metadata.
plapPayload :: Lens' ProjectsLocationsAgentsPatch GoogleCloudDialogflowCxV3Agent
plapPayload
  = lens _plapPayload (\ s a -> s{_plapPayload = a})

-- | The unique identifier of the agent. Required for the Agents.UpdateAgent
-- method. Agents.CreateAgent populates the name automatically. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plapName :: Lens' ProjectsLocationsAgentsPatch Text
plapName = lens _plapName (\ s a -> s{_plapName = a})

-- | JSONP
plapCallback :: Lens' ProjectsLocationsAgentsPatch (Maybe Text)
plapCallback
  = lens _plapCallback (\ s a -> s{_plapCallback = a})

instance GoogleRequest ProjectsLocationsAgentsPatch
         where
        type Rs ProjectsLocationsAgentsPatch =
             GoogleCloudDialogflowCxV3Agent
        type Scopes ProjectsLocationsAgentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsPatch'{..}
          = go _plapName _plapXgafv _plapUploadProtocol
              _plapUpdateMask
              _plapAccessToken
              _plapUploadType
              _plapCallback
              (Just AltJSON)
              _plapPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsAgentsPatchResource)
                      mempty

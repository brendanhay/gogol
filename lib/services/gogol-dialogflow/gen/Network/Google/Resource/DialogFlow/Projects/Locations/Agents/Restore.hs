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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Restore
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores the specified agent from a binary file. Replaces the current
-- agent with a new one. Note that all existing resources in agent (e.g.
-- intents, entity types, flows) will be removed. Note: You should always
-- train flows prior to sending them queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.restore@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Restore
    (
    -- * REST Resource
      ProjectsLocationsAgentsRestoreResource

    -- * Creating a Request
    , projectsLocationsAgentsRestore
    , ProjectsLocationsAgentsRestore

    -- * Request Lenses
    , plarXgafv
    , plarUploadProtocol
    , plarAccessToken
    , plarUploadType
    , plarPayload
    , plarName
    , plarCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.restore@ method which the
-- 'ProjectsLocationsAgentsRestore' request conforms to.
type ProjectsLocationsAgentsRestoreResource =
     "v3" :>
       CaptureMode "name" "restore" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3RestoreAgentRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Restores the specified agent from a binary file. Replaces the current
-- agent with a new one. Note that all existing resources in agent (e.g.
-- intents, entity types, flows) will be removed. Note: You should always
-- train flows prior to sending them queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsRestore' smart constructor.
data ProjectsLocationsAgentsRestore =
  ProjectsLocationsAgentsRestore'
    { _plarXgafv :: !(Maybe Xgafv)
    , _plarUploadProtocol :: !(Maybe Text)
    , _plarAccessToken :: !(Maybe Text)
    , _plarUploadType :: !(Maybe Text)
    , _plarPayload :: !GoogleCloudDialogflowCxV3RestoreAgentRequest
    , _plarName :: !Text
    , _plarCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plarXgafv'
--
-- * 'plarUploadProtocol'
--
-- * 'plarAccessToken'
--
-- * 'plarUploadType'
--
-- * 'plarPayload'
--
-- * 'plarName'
--
-- * 'plarCallback'
projectsLocationsAgentsRestore
    :: GoogleCloudDialogflowCxV3RestoreAgentRequest -- ^ 'plarPayload'
    -> Text -- ^ 'plarName'
    -> ProjectsLocationsAgentsRestore
projectsLocationsAgentsRestore pPlarPayload_ pPlarName_ =
  ProjectsLocationsAgentsRestore'
    { _plarXgafv = Nothing
    , _plarUploadProtocol = Nothing
    , _plarAccessToken = Nothing
    , _plarUploadType = Nothing
    , _plarPayload = pPlarPayload_
    , _plarName = pPlarName_
    , _plarCallback = Nothing
    }


-- | V1 error format.
plarXgafv :: Lens' ProjectsLocationsAgentsRestore (Maybe Xgafv)
plarXgafv
  = lens _plarXgafv (\ s a -> s{_plarXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plarUploadProtocol :: Lens' ProjectsLocationsAgentsRestore (Maybe Text)
plarUploadProtocol
  = lens _plarUploadProtocol
      (\ s a -> s{_plarUploadProtocol = a})

-- | OAuth access token.
plarAccessToken :: Lens' ProjectsLocationsAgentsRestore (Maybe Text)
plarAccessToken
  = lens _plarAccessToken
      (\ s a -> s{_plarAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plarUploadType :: Lens' ProjectsLocationsAgentsRestore (Maybe Text)
plarUploadType
  = lens _plarUploadType
      (\ s a -> s{_plarUploadType = a})

-- | Multipart request metadata.
plarPayload :: Lens' ProjectsLocationsAgentsRestore GoogleCloudDialogflowCxV3RestoreAgentRequest
plarPayload
  = lens _plarPayload (\ s a -> s{_plarPayload = a})

-- | Required. The name of the agent to restore into. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plarName :: Lens' ProjectsLocationsAgentsRestore Text
plarName = lens _plarName (\ s a -> s{_plarName = a})

-- | JSONP
plarCallback :: Lens' ProjectsLocationsAgentsRestore (Maybe Text)
plarCallback
  = lens _plarCallback (\ s a -> s{_plarCallback = a})

instance GoogleRequest ProjectsLocationsAgentsRestore
         where
        type Rs ProjectsLocationsAgentsRestore =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsRestore =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsRestore'{..}
          = go _plarName _plarXgafv _plarUploadProtocol
              _plarAccessToken
              _plarUploadType
              _plarCallback
              (Just AltJSON)
              _plarPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsRestoreResource)
                      mempty

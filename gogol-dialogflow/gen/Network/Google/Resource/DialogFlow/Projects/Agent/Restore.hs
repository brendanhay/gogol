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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Restore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores the specified agent from a ZIP file. Replaces the current agent
-- version with a new one. All the intents and entity types in the older
-- version are deleted. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.restore@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Restore
    (
    -- * REST Resource
      ProjectsAgentRestoreResource

    -- * Creating a Request
    , projectsAgentRestore
    , ProjectsAgentRestore

    -- * Request Lenses
    , parParent
    , parXgafv
    , parUploadProtocol
    , parAccessToken
    , parUploadType
    , parPayload
    , parCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.restore@ method which the
-- 'ProjectsAgentRestore' request conforms to.
type ProjectsAgentRestoreResource =
     "v2" :>
       Capture "parent" Text :>
         "agent:restore" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2RestoreAgentRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Restores the specified agent from a ZIP file. Replaces the current agent
-- version with a new one. All the intents and entity types in the older
-- version are deleted. Operation
--
-- /See:/ 'projectsAgentRestore' smart constructor.
data ProjectsAgentRestore =
  ProjectsAgentRestore'
    { _parParent         :: !Text
    , _parXgafv          :: !(Maybe Xgafv)
    , _parUploadProtocol :: !(Maybe Text)
    , _parAccessToken    :: !(Maybe Text)
    , _parUploadType     :: !(Maybe Text)
    , _parPayload        :: !GoogleCloudDialogflowV2RestoreAgentRequest
    , _parCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parParent'
--
-- * 'parXgafv'
--
-- * 'parUploadProtocol'
--
-- * 'parAccessToken'
--
-- * 'parUploadType'
--
-- * 'parPayload'
--
-- * 'parCallback'
projectsAgentRestore
    :: Text -- ^ 'parParent'
    -> GoogleCloudDialogflowV2RestoreAgentRequest -- ^ 'parPayload'
    -> ProjectsAgentRestore
projectsAgentRestore pParParent_ pParPayload_ =
  ProjectsAgentRestore'
    { _parParent = pParParent_
    , _parXgafv = Nothing
    , _parUploadProtocol = Nothing
    , _parAccessToken = Nothing
    , _parUploadType = Nothing
    , _parPayload = pParPayload_
    , _parCallback = Nothing
    }


-- | Required. The project that the agent to restore is associated with.
-- Format: \`projects\/\`.
parParent :: Lens' ProjectsAgentRestore Text
parParent
  = lens _parParent (\ s a -> s{_parParent = a})

-- | V1 error format.
parXgafv :: Lens' ProjectsAgentRestore (Maybe Xgafv)
parXgafv = lens _parXgafv (\ s a -> s{_parXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
parUploadProtocol :: Lens' ProjectsAgentRestore (Maybe Text)
parUploadProtocol
  = lens _parUploadProtocol
      (\ s a -> s{_parUploadProtocol = a})

-- | OAuth access token.
parAccessToken :: Lens' ProjectsAgentRestore (Maybe Text)
parAccessToken
  = lens _parAccessToken
      (\ s a -> s{_parAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
parUploadType :: Lens' ProjectsAgentRestore (Maybe Text)
parUploadType
  = lens _parUploadType
      (\ s a -> s{_parUploadType = a})

-- | Multipart request metadata.
parPayload :: Lens' ProjectsAgentRestore GoogleCloudDialogflowV2RestoreAgentRequest
parPayload
  = lens _parPayload (\ s a -> s{_parPayload = a})

-- | JSONP
parCallback :: Lens' ProjectsAgentRestore (Maybe Text)
parCallback
  = lens _parCallback (\ s a -> s{_parCallback = a})

instance GoogleRequest ProjectsAgentRestore where
        type Rs ProjectsAgentRestore =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentRestore =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentRestore'{..}
          = go _parParent _parXgafv _parUploadProtocol
              _parAccessToken
              _parUploadType
              _parCallback
              (Just AltJSON)
              _parPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentRestoreResource)
                      mempty

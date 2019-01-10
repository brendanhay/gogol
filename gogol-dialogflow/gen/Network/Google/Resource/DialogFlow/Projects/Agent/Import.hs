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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the specified agent from a ZIP file. Uploads new intents and
-- entity types without deleting the existing ones. Intents and entity
-- types with the same name are replaced with the new versions from
-- ImportAgentRequest. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.import@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Import
    (
    -- * REST Resource
      ProjectsAgentImportResource

    -- * Creating a Request
    , projectsAgentImport
    , ProjectsAgentImport

    -- * Request Lenses
    , paiParent
    , paiXgafv
    , paiUploadProtocol
    , paiAccessToken
    , paiUploadType
    , paiPayload
    , paiCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.import@ method which the
-- 'ProjectsAgentImport' request conforms to.
type ProjectsAgentImportResource =
     "v2" :>
       Capture "parent" Text :>
         "agent:import" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2ImportAgentRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Imports the specified agent from a ZIP file. Uploads new intents and
-- entity types without deleting the existing ones. Intents and entity
-- types with the same name are replaced with the new versions from
-- ImportAgentRequest. Operation
--
-- /See:/ 'projectsAgentImport' smart constructor.
data ProjectsAgentImport = ProjectsAgentImport'
    { _paiParent         :: !Text
    , _paiXgafv          :: !(Maybe Xgafv)
    , _paiUploadProtocol :: !(Maybe Text)
    , _paiAccessToken    :: !(Maybe Text)
    , _paiUploadType     :: !(Maybe Text)
    , _paiPayload        :: !GoogleCloudDialogflowV2ImportAgentRequest
    , _paiCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsAgentImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paiParent'
--
-- * 'paiXgafv'
--
-- * 'paiUploadProtocol'
--
-- * 'paiAccessToken'
--
-- * 'paiUploadType'
--
-- * 'paiPayload'
--
-- * 'paiCallback'
projectsAgentImport
    :: Text -- ^ 'paiParent'
    -> GoogleCloudDialogflowV2ImportAgentRequest -- ^ 'paiPayload'
    -> ProjectsAgentImport
projectsAgentImport pPaiParent_ pPaiPayload_ =
    ProjectsAgentImport'
    { _paiParent = pPaiParent_
    , _paiXgafv = Nothing
    , _paiUploadProtocol = Nothing
    , _paiAccessToken = Nothing
    , _paiUploadType = Nothing
    , _paiPayload = pPaiPayload_
    , _paiCallback = Nothing
    }

-- | Required. The project that the agent to import is associated with.
-- Format: \`projects\/\`.
paiParent :: Lens' ProjectsAgentImport Text
paiParent
  = lens _paiParent (\ s a -> s{_paiParent = a})

-- | V1 error format.
paiXgafv :: Lens' ProjectsAgentImport (Maybe Xgafv)
paiXgafv = lens _paiXgafv (\ s a -> s{_paiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paiUploadProtocol :: Lens' ProjectsAgentImport (Maybe Text)
paiUploadProtocol
  = lens _paiUploadProtocol
      (\ s a -> s{_paiUploadProtocol = a})

-- | OAuth access token.
paiAccessToken :: Lens' ProjectsAgentImport (Maybe Text)
paiAccessToken
  = lens _paiAccessToken
      (\ s a -> s{_paiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paiUploadType :: Lens' ProjectsAgentImport (Maybe Text)
paiUploadType
  = lens _paiUploadType
      (\ s a -> s{_paiUploadType = a})

-- | Multipart request metadata.
paiPayload :: Lens' ProjectsAgentImport GoogleCloudDialogflowV2ImportAgentRequest
paiPayload
  = lens _paiPayload (\ s a -> s{_paiPayload = a})

-- | JSONP
paiCallback :: Lens' ProjectsAgentImport (Maybe Text)
paiCallback
  = lens _paiCallback (\ s a -> s{_paiCallback = a})

instance GoogleRequest ProjectsAgentImport where
        type Rs ProjectsAgentImport =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentImport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentImport'{..}
          = go _paiParent _paiXgafv _paiUploadProtocol
              _paiAccessToken
              _paiUploadType
              _paiCallback
              (Just AltJSON)
              _paiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentImportResource)
                      mempty

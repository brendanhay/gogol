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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Agent.Export
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the specified agent to a ZIP file. Operation
--
-- /See:/ <https://cloud.google.com/dialogflow-enterprise/ Dialogflow API Reference> for @dialogflow.projects.agent.export@.
module Network.Google.Resource.DialogFlow.Projects.Agent.Export
    (
    -- * REST Resource
      ProjectsAgentExportResource

    -- * Creating a Request
    , projectsAgentExport
    , ProjectsAgentExport

    -- * Request Lenses
    , paeParent
    , paeXgafv
    , paeUploadProtocol
    , paeAccessToken
    , paeUploadType
    , paePayload
    , paeCallback
    ) where

import           Network.Google.DialogFlow.Types
import           Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.agent.export@ method which the
-- 'ProjectsAgentExport' request conforms to.
type ProjectsAgentExportResource =
     "v2" :>
       Capture "parent" Text :>
         "agent:export" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowV2ExportAgentRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Exports the specified agent to a ZIP file. Operation
--
-- /See:/ 'projectsAgentExport' smart constructor.
data ProjectsAgentExport =
  ProjectsAgentExport'
    { _paeParent         :: !Text
    , _paeXgafv          :: !(Maybe Xgafv)
    , _paeUploadProtocol :: !(Maybe Text)
    , _paeAccessToken    :: !(Maybe Text)
    , _paeUploadType     :: !(Maybe Text)
    , _paePayload        :: !GoogleCloudDialogflowV2ExportAgentRequest
    , _paeCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsAgentExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paeParent'
--
-- * 'paeXgafv'
--
-- * 'paeUploadProtocol'
--
-- * 'paeAccessToken'
--
-- * 'paeUploadType'
--
-- * 'paePayload'
--
-- * 'paeCallback'
projectsAgentExport
    :: Text -- ^ 'paeParent'
    -> GoogleCloudDialogflowV2ExportAgentRequest -- ^ 'paePayload'
    -> ProjectsAgentExport
projectsAgentExport pPaeParent_ pPaePayload_ =
  ProjectsAgentExport'
    { _paeParent = pPaeParent_
    , _paeXgafv = Nothing
    , _paeUploadProtocol = Nothing
    , _paeAccessToken = Nothing
    , _paeUploadType = Nothing
    , _paePayload = pPaePayload_
    , _paeCallback = Nothing
    }


-- | Required. The project that the agent to export is associated with.
-- Format: \`projects\/\`.
paeParent :: Lens' ProjectsAgentExport Text
paeParent
  = lens _paeParent (\ s a -> s{_paeParent = a})

-- | V1 error format.
paeXgafv :: Lens' ProjectsAgentExport (Maybe Xgafv)
paeXgafv = lens _paeXgafv (\ s a -> s{_paeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
paeUploadProtocol :: Lens' ProjectsAgentExport (Maybe Text)
paeUploadProtocol
  = lens _paeUploadProtocol
      (\ s a -> s{_paeUploadProtocol = a})

-- | OAuth access token.
paeAccessToken :: Lens' ProjectsAgentExport (Maybe Text)
paeAccessToken
  = lens _paeAccessToken
      (\ s a -> s{_paeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
paeUploadType :: Lens' ProjectsAgentExport (Maybe Text)
paeUploadType
  = lens _paeUploadType
      (\ s a -> s{_paeUploadType = a})

-- | Multipart request metadata.
paePayload :: Lens' ProjectsAgentExport GoogleCloudDialogflowV2ExportAgentRequest
paePayload
  = lens _paePayload (\ s a -> s{_paePayload = a})

-- | JSONP
paeCallback :: Lens' ProjectsAgentExport (Maybe Text)
paeCallback
  = lens _paeCallback (\ s a -> s{_paeCallback = a})

instance GoogleRequest ProjectsAgentExport where
        type Rs ProjectsAgentExport =
             GoogleLongrunningOperation
        type Scopes ProjectsAgentExport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsAgentExport'{..}
          = go _paeParent _paeXgafv _paeUploadProtocol
              _paeAccessToken
              _paeUploadType
              _paeCallback
              (Just AltJSON)
              _paePayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsAgentExportResource)
                      mempty

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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Export
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the specified agent to a binary file.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.export@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Export
    (
    -- * REST Resource
      ProjectsLocationsAgentsExportResource

    -- * Creating a Request
    , projectsLocationsAgentsExport
    , ProjectsLocationsAgentsExport

    -- * Request Lenses
    , plaeXgafv
    , plaeUploadProtocol
    , plaeAccessToken
    , plaeUploadType
    , plaePayload
    , plaeName
    , plaeCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.export@ method which the
-- 'ProjectsLocationsAgentsExport' request conforms to.
type ProjectsLocationsAgentsExportResource =
     "v3" :>
       CaptureMode "name" "export" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3ExportAgentRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Exports the specified agent to a binary file.
--
-- /See:/ 'projectsLocationsAgentsExport' smart constructor.
data ProjectsLocationsAgentsExport =
  ProjectsLocationsAgentsExport'
    { _plaeXgafv :: !(Maybe Xgafv)
    , _plaeUploadProtocol :: !(Maybe Text)
    , _plaeAccessToken :: !(Maybe Text)
    , _plaeUploadType :: !(Maybe Text)
    , _plaePayload :: !GoogleCloudDialogflowCxV3ExportAgentRequest
    , _plaeName :: !Text
    , _plaeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeXgafv'
--
-- * 'plaeUploadProtocol'
--
-- * 'plaeAccessToken'
--
-- * 'plaeUploadType'
--
-- * 'plaePayload'
--
-- * 'plaeName'
--
-- * 'plaeCallback'
projectsLocationsAgentsExport
    :: GoogleCloudDialogflowCxV3ExportAgentRequest -- ^ 'plaePayload'
    -> Text -- ^ 'plaeName'
    -> ProjectsLocationsAgentsExport
projectsLocationsAgentsExport pPlaePayload_ pPlaeName_ =
  ProjectsLocationsAgentsExport'
    { _plaeXgafv = Nothing
    , _plaeUploadProtocol = Nothing
    , _plaeAccessToken = Nothing
    , _plaeUploadType = Nothing
    , _plaePayload = pPlaePayload_
    , _plaeName = pPlaeName_
    , _plaeCallback = Nothing
    }


-- | V1 error format.
plaeXgafv :: Lens' ProjectsLocationsAgentsExport (Maybe Xgafv)
plaeXgafv
  = lens _plaeXgafv (\ s a -> s{_plaeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeUploadProtocol :: Lens' ProjectsLocationsAgentsExport (Maybe Text)
plaeUploadProtocol
  = lens _plaeUploadProtocol
      (\ s a -> s{_plaeUploadProtocol = a})

-- | OAuth access token.
plaeAccessToken :: Lens' ProjectsLocationsAgentsExport (Maybe Text)
plaeAccessToken
  = lens _plaeAccessToken
      (\ s a -> s{_plaeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeUploadType :: Lens' ProjectsLocationsAgentsExport (Maybe Text)
plaeUploadType
  = lens _plaeUploadType
      (\ s a -> s{_plaeUploadType = a})

-- | Multipart request metadata.
plaePayload :: Lens' ProjectsLocationsAgentsExport GoogleCloudDialogflowCxV3ExportAgentRequest
plaePayload
  = lens _plaePayload (\ s a -> s{_plaePayload = a})

-- | Required. The name of the agent to export. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaeName :: Lens' ProjectsLocationsAgentsExport Text
plaeName = lens _plaeName (\ s a -> s{_plaeName = a})

-- | JSONP
plaeCallback :: Lens' ProjectsLocationsAgentsExport (Maybe Text)
plaeCallback
  = lens _plaeCallback (\ s a -> s{_plaeCallback = a})

instance GoogleRequest ProjectsLocationsAgentsExport
         where
        type Rs ProjectsLocationsAgentsExport =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsExport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsExport'{..}
          = go _plaeName _plaeXgafv _plaeUploadProtocol
              _plaeAccessToken
              _plaeUploadType
              _plaeCallback
              (Just AltJSON)
              _plaePayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsExportResource)
                      mempty

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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Export
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the specified flow to a binary file. Note that resources (e.g.
-- intents, entities, webhooks) that the flow references will also be
-- exported.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.export@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Export
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsExportResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsExport
    , ProjectsLocationsAgentsFlowsExport

    -- * Request Lenses
    , plafeXgafv
    , plafeUploadProtocol
    , plafeAccessToken
    , plafeUploadType
    , plafePayload
    , plafeName
    , plafeCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.export@ method which the
-- 'ProjectsLocationsAgentsFlowsExport' request conforms to.
type ProjectsLocationsAgentsFlowsExportResource =
     "v3" :>
       CaptureMode "name" "export" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3ExportFlowRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Exports the specified flow to a binary file. Note that resources (e.g.
-- intents, entities, webhooks) that the flow references will also be
-- exported.
--
-- /See:/ 'projectsLocationsAgentsFlowsExport' smart constructor.
data ProjectsLocationsAgentsFlowsExport =
  ProjectsLocationsAgentsFlowsExport'
    { _plafeXgafv :: !(Maybe Xgafv)
    , _plafeUploadProtocol :: !(Maybe Text)
    , _plafeAccessToken :: !(Maybe Text)
    , _plafeUploadType :: !(Maybe Text)
    , _plafePayload :: !GoogleCloudDialogflowCxV3ExportFlowRequest
    , _plafeName :: !Text
    , _plafeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafeXgafv'
--
-- * 'plafeUploadProtocol'
--
-- * 'plafeAccessToken'
--
-- * 'plafeUploadType'
--
-- * 'plafePayload'
--
-- * 'plafeName'
--
-- * 'plafeCallback'
projectsLocationsAgentsFlowsExport
    :: GoogleCloudDialogflowCxV3ExportFlowRequest -- ^ 'plafePayload'
    -> Text -- ^ 'plafeName'
    -> ProjectsLocationsAgentsFlowsExport
projectsLocationsAgentsFlowsExport pPlafePayload_ pPlafeName_ =
  ProjectsLocationsAgentsFlowsExport'
    { _plafeXgafv = Nothing
    , _plafeUploadProtocol = Nothing
    , _plafeAccessToken = Nothing
    , _plafeUploadType = Nothing
    , _plafePayload = pPlafePayload_
    , _plafeName = pPlafeName_
    , _plafeCallback = Nothing
    }


-- | V1 error format.
plafeXgafv :: Lens' ProjectsLocationsAgentsFlowsExport (Maybe Xgafv)
plafeXgafv
  = lens _plafeXgafv (\ s a -> s{_plafeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafeUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsExport (Maybe Text)
plafeUploadProtocol
  = lens _plafeUploadProtocol
      (\ s a -> s{_plafeUploadProtocol = a})

-- | OAuth access token.
plafeAccessToken :: Lens' ProjectsLocationsAgentsFlowsExport (Maybe Text)
plafeAccessToken
  = lens _plafeAccessToken
      (\ s a -> s{_plafeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafeUploadType :: Lens' ProjectsLocationsAgentsFlowsExport (Maybe Text)
plafeUploadType
  = lens _plafeUploadType
      (\ s a -> s{_plafeUploadType = a})

-- | Multipart request metadata.
plafePayload :: Lens' ProjectsLocationsAgentsFlowsExport GoogleCloudDialogflowCxV3ExportFlowRequest
plafePayload
  = lens _plafePayload (\ s a -> s{_plafePayload = a})

-- | Required. The name of the flow to export. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafeName :: Lens' ProjectsLocationsAgentsFlowsExport Text
plafeName
  = lens _plafeName (\ s a -> s{_plafeName = a})

-- | JSONP
plafeCallback :: Lens' ProjectsLocationsAgentsFlowsExport (Maybe Text)
plafeCallback
  = lens _plafeCallback
      (\ s a -> s{_plafeCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsExport
         where
        type Rs ProjectsLocationsAgentsFlowsExport =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsFlowsExport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsExport'{..}
          = go _plafeName _plafeXgafv _plafeUploadProtocol
              _plafeAccessToken
              _plafeUploadType
              _plafeCallback
              (Just AltJSON)
              _plafePayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsExportResource)
                      mempty

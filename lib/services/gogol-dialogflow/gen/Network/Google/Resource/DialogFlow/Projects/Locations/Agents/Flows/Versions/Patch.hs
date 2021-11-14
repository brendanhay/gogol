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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Version.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsVersionsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsVersionsPatch
    , ProjectsLocationsAgentsFlowsVersionsPatch

    -- * Request Lenses
    , plafvpXgafv
    , plafvpUploadProtocol
    , plafvpUpdateMask
    , plafvpAccessToken
    , plafvpUploadType
    , plafvpPayload
    , plafvpName
    , plafvpCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.patch@ method which the
-- 'ProjectsLocationsAgentsFlowsVersionsPatch' request conforms to.
type ProjectsLocationsAgentsFlowsVersionsPatchResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Version :>
                         Patch '[JSON] GoogleCloudDialogflowCxV3Version

-- | Updates the specified Version.
--
-- /See:/ 'projectsLocationsAgentsFlowsVersionsPatch' smart constructor.
data ProjectsLocationsAgentsFlowsVersionsPatch =
  ProjectsLocationsAgentsFlowsVersionsPatch'
    { _plafvpXgafv :: !(Maybe Xgafv)
    , _plafvpUploadProtocol :: !(Maybe Text)
    , _plafvpUpdateMask :: !(Maybe GFieldMask)
    , _plafvpAccessToken :: !(Maybe Text)
    , _plafvpUploadType :: !(Maybe Text)
    , _plafvpPayload :: !GoogleCloudDialogflowCxV3Version
    , _plafvpName :: !Text
    , _plafvpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsVersionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafvpXgafv'
--
-- * 'plafvpUploadProtocol'
--
-- * 'plafvpUpdateMask'
--
-- * 'plafvpAccessToken'
--
-- * 'plafvpUploadType'
--
-- * 'plafvpPayload'
--
-- * 'plafvpName'
--
-- * 'plafvpCallback'
projectsLocationsAgentsFlowsVersionsPatch
    :: GoogleCloudDialogflowCxV3Version -- ^ 'plafvpPayload'
    -> Text -- ^ 'plafvpName'
    -> ProjectsLocationsAgentsFlowsVersionsPatch
projectsLocationsAgentsFlowsVersionsPatch pPlafvpPayload_ pPlafvpName_ =
  ProjectsLocationsAgentsFlowsVersionsPatch'
    { _plafvpXgafv = Nothing
    , _plafvpUploadProtocol = Nothing
    , _plafvpUpdateMask = Nothing
    , _plafvpAccessToken = Nothing
    , _plafvpUploadType = Nothing
    , _plafvpPayload = pPlafvpPayload_
    , _plafvpName = pPlafvpName_
    , _plafvpCallback = Nothing
    }


-- | V1 error format.
plafvpXgafv :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch (Maybe Xgafv)
plafvpXgafv
  = lens _plafvpXgafv (\ s a -> s{_plafvpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafvpUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch (Maybe Text)
plafvpUploadProtocol
  = lens _plafvpUploadProtocol
      (\ s a -> s{_plafvpUploadProtocol = a})

-- | Required. The mask to control which fields get updated. Currently only
-- \`description\` and \`display_name\` can be updated.
plafvpUpdateMask :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch (Maybe GFieldMask)
plafvpUpdateMask
  = lens _plafvpUpdateMask
      (\ s a -> s{_plafvpUpdateMask = a})

-- | OAuth access token.
plafvpAccessToken :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch (Maybe Text)
plafvpAccessToken
  = lens _plafvpAccessToken
      (\ s a -> s{_plafvpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafvpUploadType :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch (Maybe Text)
plafvpUploadType
  = lens _plafvpUploadType
      (\ s a -> s{_plafvpUploadType = a})

-- | Multipart request metadata.
plafvpPayload :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch GoogleCloudDialogflowCxV3Version
plafvpPayload
  = lens _plafvpPayload
      (\ s a -> s{_plafvpPayload = a})

-- | Format: projects\/\/locations\/\/agents\/\/flows\/\/versions\/. Version
-- ID is a self-increasing number generated by Dialogflow upon version
-- creation.
plafvpName :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch Text
plafvpName
  = lens _plafvpName (\ s a -> s{_plafvpName = a})

-- | JSONP
plafvpCallback :: Lens' ProjectsLocationsAgentsFlowsVersionsPatch (Maybe Text)
plafvpCallback
  = lens _plafvpCallback
      (\ s a -> s{_plafvpCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsVersionsPatch
         where
        type Rs ProjectsLocationsAgentsFlowsVersionsPatch =
             GoogleCloudDialogflowCxV3Version
        type Scopes ProjectsLocationsAgentsFlowsVersionsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsVersionsPatch'{..}
          = go _plafvpName _plafvpXgafv _plafvpUploadProtocol
              _plafvpUpdateMask
              _plafvpAccessToken
              _plafvpUploadType
              _plafvpCallback
              (Just AltJSON)
              _plafvpPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsVersionsPatchResource)
                      mempty

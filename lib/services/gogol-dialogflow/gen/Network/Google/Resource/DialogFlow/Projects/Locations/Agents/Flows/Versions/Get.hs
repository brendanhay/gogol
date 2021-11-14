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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Version.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsVersionsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsVersionsGet
    , ProjectsLocationsAgentsFlowsVersionsGet

    -- * Request Lenses
    , plafvgXgafv
    , plafvgUploadProtocol
    , plafvgAccessToken
    , plafvgUploadType
    , plafvgName
    , plafvgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.get@ method which the
-- 'ProjectsLocationsAgentsFlowsVersionsGet' request conforms to.
type ProjectsLocationsAgentsFlowsVersionsGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3Version

-- | Retrieves the specified Version.
--
-- /See:/ 'projectsLocationsAgentsFlowsVersionsGet' smart constructor.
data ProjectsLocationsAgentsFlowsVersionsGet =
  ProjectsLocationsAgentsFlowsVersionsGet'
    { _plafvgXgafv :: !(Maybe Xgafv)
    , _plafvgUploadProtocol :: !(Maybe Text)
    , _plafvgAccessToken :: !(Maybe Text)
    , _plafvgUploadType :: !(Maybe Text)
    , _plafvgName :: !Text
    , _plafvgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafvgXgafv'
--
-- * 'plafvgUploadProtocol'
--
-- * 'plafvgAccessToken'
--
-- * 'plafvgUploadType'
--
-- * 'plafvgName'
--
-- * 'plafvgCallback'
projectsLocationsAgentsFlowsVersionsGet
    :: Text -- ^ 'plafvgName'
    -> ProjectsLocationsAgentsFlowsVersionsGet
projectsLocationsAgentsFlowsVersionsGet pPlafvgName_ =
  ProjectsLocationsAgentsFlowsVersionsGet'
    { _plafvgXgafv = Nothing
    , _plafvgUploadProtocol = Nothing
    , _plafvgAccessToken = Nothing
    , _plafvgUploadType = Nothing
    , _plafvgName = pPlafvgName_
    , _plafvgCallback = Nothing
    }


-- | V1 error format.
plafvgXgafv :: Lens' ProjectsLocationsAgentsFlowsVersionsGet (Maybe Xgafv)
plafvgXgafv
  = lens _plafvgXgafv (\ s a -> s{_plafvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafvgUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsVersionsGet (Maybe Text)
plafvgUploadProtocol
  = lens _plafvgUploadProtocol
      (\ s a -> s{_plafvgUploadProtocol = a})

-- | OAuth access token.
plafvgAccessToken :: Lens' ProjectsLocationsAgentsFlowsVersionsGet (Maybe Text)
plafvgAccessToken
  = lens _plafvgAccessToken
      (\ s a -> s{_plafvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafvgUploadType :: Lens' ProjectsLocationsAgentsFlowsVersionsGet (Maybe Text)
plafvgUploadType
  = lens _plafvgUploadType
      (\ s a -> s{_plafvgUploadType = a})

-- | Required. The name of the Version. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/versions\/\`.
plafvgName :: Lens' ProjectsLocationsAgentsFlowsVersionsGet Text
plafvgName
  = lens _plafvgName (\ s a -> s{_plafvgName = a})

-- | JSONP
plafvgCallback :: Lens' ProjectsLocationsAgentsFlowsVersionsGet (Maybe Text)
plafvgCallback
  = lens _plafvgCallback
      (\ s a -> s{_plafvgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsVersionsGet
         where
        type Rs ProjectsLocationsAgentsFlowsVersionsGet =
             GoogleCloudDialogflowCxV3Version
        type Scopes ProjectsLocationsAgentsFlowsVersionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsVersionsGet'{..}
          = go _plafvgName _plafvgXgafv _plafvgUploadProtocol
              _plafvgAccessToken
              _plafvgUploadType
              _plafvgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsVersionsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a test case.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesGetResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesGet
    , ProjectsLocationsAgentsTestCasesGet

    -- * Request Lenses
    , platcgXgafv
    , platcgUploadProtocol
    , platcgAccessToken
    , platcgUploadType
    , platcgName
    , platcgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.get@ method which the
-- 'ProjectsLocationsAgentsTestCasesGet' request conforms to.
type ProjectsLocationsAgentsTestCasesGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3TestCase

-- | Gets a test case.
--
-- /See:/ 'projectsLocationsAgentsTestCasesGet' smart constructor.
data ProjectsLocationsAgentsTestCasesGet =
  ProjectsLocationsAgentsTestCasesGet'
    { _platcgXgafv :: !(Maybe Xgafv)
    , _platcgUploadProtocol :: !(Maybe Text)
    , _platcgAccessToken :: !(Maybe Text)
    , _platcgUploadType :: !(Maybe Text)
    , _platcgName :: !Text
    , _platcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platcgXgafv'
--
-- * 'platcgUploadProtocol'
--
-- * 'platcgAccessToken'
--
-- * 'platcgUploadType'
--
-- * 'platcgName'
--
-- * 'platcgCallback'
projectsLocationsAgentsTestCasesGet
    :: Text -- ^ 'platcgName'
    -> ProjectsLocationsAgentsTestCasesGet
projectsLocationsAgentsTestCasesGet pPlatcgName_ =
  ProjectsLocationsAgentsTestCasesGet'
    { _platcgXgafv = Nothing
    , _platcgUploadProtocol = Nothing
    , _platcgAccessToken = Nothing
    , _platcgUploadType = Nothing
    , _platcgName = pPlatcgName_
    , _platcgCallback = Nothing
    }


-- | V1 error format.
platcgXgafv :: Lens' ProjectsLocationsAgentsTestCasesGet (Maybe Xgafv)
platcgXgafv
  = lens _platcgXgafv (\ s a -> s{_platcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platcgUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesGet (Maybe Text)
platcgUploadProtocol
  = lens _platcgUploadProtocol
      (\ s a -> s{_platcgUploadProtocol = a})

-- | OAuth access token.
platcgAccessToken :: Lens' ProjectsLocationsAgentsTestCasesGet (Maybe Text)
platcgAccessToken
  = lens _platcgAccessToken
      (\ s a -> s{_platcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platcgUploadType :: Lens' ProjectsLocationsAgentsTestCasesGet (Maybe Text)
platcgUploadType
  = lens _platcgUploadType
      (\ s a -> s{_platcgUploadType = a})

-- | Required. The name of the testcase. Format:
-- \`projects\/\/locations\/\/agents\/\/testCases\/\`.
platcgName :: Lens' ProjectsLocationsAgentsTestCasesGet Text
platcgName
  = lens _platcgName (\ s a -> s{_platcgName = a})

-- | JSONP
platcgCallback :: Lens' ProjectsLocationsAgentsTestCasesGet (Maybe Text)
platcgCallback
  = lens _platcgCallback
      (\ s a -> s{_platcgCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesGet
         where
        type Rs ProjectsLocationsAgentsTestCasesGet =
             GoogleCloudDialogflowCxV3TestCase
        type Scopes ProjectsLocationsAgentsTestCasesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesGet'{..}
          = go _platcgName _platcgXgafv _platcgUploadProtocol
              _platcgAccessToken
              _platcgUploadType
              _platcgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesGetResource)
                      mempty

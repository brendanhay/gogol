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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified SecuritySettings. The returned settings may be
-- stale by up to 1 minute.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Get
    (
    -- * REST Resource
      ProjectsLocationsSecuritySettingsGetResource

    -- * Creating a Request
    , projectsLocationsSecuritySettingsGet
    , ProjectsLocationsSecuritySettingsGet

    -- * Request Lenses
    , plssgXgafv
    , plssgUploadProtocol
    , plssgAccessToken
    , plssgUploadType
    , plssgName
    , plssgCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.securitySettings.get@ method which the
-- 'ProjectsLocationsSecuritySettingsGet' request conforms to.
type ProjectsLocationsSecuritySettingsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3SecuritySettings

-- | Retrieves the specified SecuritySettings. The returned settings may be
-- stale by up to 1 minute.
--
-- /See:/ 'projectsLocationsSecuritySettingsGet' smart constructor.
data ProjectsLocationsSecuritySettingsGet =
  ProjectsLocationsSecuritySettingsGet'
    { _plssgXgafv :: !(Maybe Xgafv)
    , _plssgUploadProtocol :: !(Maybe Text)
    , _plssgAccessToken :: !(Maybe Text)
    , _plssgUploadType :: !(Maybe Text)
    , _plssgName :: !Text
    , _plssgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSecuritySettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssgXgafv'
--
-- * 'plssgUploadProtocol'
--
-- * 'plssgAccessToken'
--
-- * 'plssgUploadType'
--
-- * 'plssgName'
--
-- * 'plssgCallback'
projectsLocationsSecuritySettingsGet
    :: Text -- ^ 'plssgName'
    -> ProjectsLocationsSecuritySettingsGet
projectsLocationsSecuritySettingsGet pPlssgName_ =
  ProjectsLocationsSecuritySettingsGet'
    { _plssgXgafv = Nothing
    , _plssgUploadProtocol = Nothing
    , _plssgAccessToken = Nothing
    , _plssgUploadType = Nothing
    , _plssgName = pPlssgName_
    , _plssgCallback = Nothing
    }


-- | V1 error format.
plssgXgafv :: Lens' ProjectsLocationsSecuritySettingsGet (Maybe Xgafv)
plssgXgafv
  = lens _plssgXgafv (\ s a -> s{_plssgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssgUploadProtocol :: Lens' ProjectsLocationsSecuritySettingsGet (Maybe Text)
plssgUploadProtocol
  = lens _plssgUploadProtocol
      (\ s a -> s{_plssgUploadProtocol = a})

-- | OAuth access token.
plssgAccessToken :: Lens' ProjectsLocationsSecuritySettingsGet (Maybe Text)
plssgAccessToken
  = lens _plssgAccessToken
      (\ s a -> s{_plssgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssgUploadType :: Lens' ProjectsLocationsSecuritySettingsGet (Maybe Text)
plssgUploadType
  = lens _plssgUploadType
      (\ s a -> s{_plssgUploadType = a})

-- | Required. Resource name of the settings. Format:
-- \`projects\/\/locations\/\/securitySettings\/\`.
plssgName :: Lens' ProjectsLocationsSecuritySettingsGet Text
plssgName
  = lens _plssgName (\ s a -> s{_plssgName = a})

-- | JSONP
plssgCallback :: Lens' ProjectsLocationsSecuritySettingsGet (Maybe Text)
plssgCallback
  = lens _plssgCallback
      (\ s a -> s{_plssgCallback = a})

instance GoogleRequest
           ProjectsLocationsSecuritySettingsGet
         where
        type Rs ProjectsLocationsSecuritySettingsGet =
             GoogleCloudDialogflowCxV3SecuritySettings
        type Scopes ProjectsLocationsSecuritySettingsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsSecuritySettingsGet'{..}
          = go _plssgName _plssgXgafv _plssgUploadProtocol
              _plssgAccessToken
              _plssgUploadType
              _plssgCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsSecuritySettingsGetResource)
                      mempty

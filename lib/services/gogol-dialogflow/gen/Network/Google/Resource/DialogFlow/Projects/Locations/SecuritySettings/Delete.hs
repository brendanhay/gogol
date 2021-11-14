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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SecuritySettings.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Delete
    (
    -- * REST Resource
      ProjectsLocationsSecuritySettingsDeleteResource

    -- * Creating a Request
    , projectsLocationsSecuritySettingsDelete
    , ProjectsLocationsSecuritySettingsDelete

    -- * Request Lenses
    , plssdXgafv
    , plssdUploadProtocol
    , plssdAccessToken
    , plssdUploadType
    , plssdName
    , plssdCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.securitySettings.delete@ method which the
-- 'ProjectsLocationsSecuritySettingsDelete' request conforms to.
type ProjectsLocationsSecuritySettingsDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified SecuritySettings.
--
-- /See:/ 'projectsLocationsSecuritySettingsDelete' smart constructor.
data ProjectsLocationsSecuritySettingsDelete =
  ProjectsLocationsSecuritySettingsDelete'
    { _plssdXgafv :: !(Maybe Xgafv)
    , _plssdUploadProtocol :: !(Maybe Text)
    , _plssdAccessToken :: !(Maybe Text)
    , _plssdUploadType :: !(Maybe Text)
    , _plssdName :: !Text
    , _plssdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSecuritySettingsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssdXgafv'
--
-- * 'plssdUploadProtocol'
--
-- * 'plssdAccessToken'
--
-- * 'plssdUploadType'
--
-- * 'plssdName'
--
-- * 'plssdCallback'
projectsLocationsSecuritySettingsDelete
    :: Text -- ^ 'plssdName'
    -> ProjectsLocationsSecuritySettingsDelete
projectsLocationsSecuritySettingsDelete pPlssdName_ =
  ProjectsLocationsSecuritySettingsDelete'
    { _plssdXgafv = Nothing
    , _plssdUploadProtocol = Nothing
    , _plssdAccessToken = Nothing
    , _plssdUploadType = Nothing
    , _plssdName = pPlssdName_
    , _plssdCallback = Nothing
    }


-- | V1 error format.
plssdXgafv :: Lens' ProjectsLocationsSecuritySettingsDelete (Maybe Xgafv)
plssdXgafv
  = lens _plssdXgafv (\ s a -> s{_plssdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssdUploadProtocol :: Lens' ProjectsLocationsSecuritySettingsDelete (Maybe Text)
plssdUploadProtocol
  = lens _plssdUploadProtocol
      (\ s a -> s{_plssdUploadProtocol = a})

-- | OAuth access token.
plssdAccessToken :: Lens' ProjectsLocationsSecuritySettingsDelete (Maybe Text)
plssdAccessToken
  = lens _plssdAccessToken
      (\ s a -> s{_plssdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssdUploadType :: Lens' ProjectsLocationsSecuritySettingsDelete (Maybe Text)
plssdUploadType
  = lens _plssdUploadType
      (\ s a -> s{_plssdUploadType = a})

-- | Required. The name of the SecuritySettings to delete. Format:
-- \`projects\/\/locations\/\/securitySettings\/\`.
plssdName :: Lens' ProjectsLocationsSecuritySettingsDelete Text
plssdName
  = lens _plssdName (\ s a -> s{_plssdName = a})

-- | JSONP
plssdCallback :: Lens' ProjectsLocationsSecuritySettingsDelete (Maybe Text)
plssdCallback
  = lens _plssdCallback
      (\ s a -> s{_plssdCallback = a})

instance GoogleRequest
           ProjectsLocationsSecuritySettingsDelete
         where
        type Rs ProjectsLocationsSecuritySettingsDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsSecuritySettingsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsSecuritySettingsDelete'{..}
          = go _plssdName _plssdXgafv _plssdUploadProtocol
              _plssdAccessToken
              _plssdUploadType
              _plssdCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsSecuritySettingsDeleteResource)
                      mempty

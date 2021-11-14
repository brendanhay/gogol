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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create security settings in the specified location.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Create
    (
    -- * REST Resource
      ProjectsLocationsSecuritySettingsCreateResource

    -- * Creating a Request
    , projectsLocationsSecuritySettingsCreate
    , ProjectsLocationsSecuritySettingsCreate

    -- * Request Lenses
    , plsscParent
    , plsscXgafv
    , plsscUploadProtocol
    , plsscAccessToken
    , plsscUploadType
    , plsscPayload
    , plsscCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.securitySettings.create@ method which the
-- 'ProjectsLocationsSecuritySettingsCreate' request conforms to.
type ProjectsLocationsSecuritySettingsCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "securitySettings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3SecuritySettings
                         :>
                         Post '[JSON]
                           GoogleCloudDialogflowCxV3SecuritySettings

-- | Create security settings in the specified location.
--
-- /See:/ 'projectsLocationsSecuritySettingsCreate' smart constructor.
data ProjectsLocationsSecuritySettingsCreate =
  ProjectsLocationsSecuritySettingsCreate'
    { _plsscParent :: !Text
    , _plsscXgafv :: !(Maybe Xgafv)
    , _plsscUploadProtocol :: !(Maybe Text)
    , _plsscAccessToken :: !(Maybe Text)
    , _plsscUploadType :: !(Maybe Text)
    , _plsscPayload :: !GoogleCloudDialogflowCxV3SecuritySettings
    , _plsscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSecuritySettingsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsscParent'
--
-- * 'plsscXgafv'
--
-- * 'plsscUploadProtocol'
--
-- * 'plsscAccessToken'
--
-- * 'plsscUploadType'
--
-- * 'plsscPayload'
--
-- * 'plsscCallback'
projectsLocationsSecuritySettingsCreate
    :: Text -- ^ 'plsscParent'
    -> GoogleCloudDialogflowCxV3SecuritySettings -- ^ 'plsscPayload'
    -> ProjectsLocationsSecuritySettingsCreate
projectsLocationsSecuritySettingsCreate pPlsscParent_ pPlsscPayload_ =
  ProjectsLocationsSecuritySettingsCreate'
    { _plsscParent = pPlsscParent_
    , _plsscXgafv = Nothing
    , _plsscUploadProtocol = Nothing
    , _plsscAccessToken = Nothing
    , _plsscUploadType = Nothing
    , _plsscPayload = pPlsscPayload_
    , _plsscCallback = Nothing
    }


-- | Required. The location to create an SecuritySettings for. Format:
-- \`projects\/\/locations\/\`.
plsscParent :: Lens' ProjectsLocationsSecuritySettingsCreate Text
plsscParent
  = lens _plsscParent (\ s a -> s{_plsscParent = a})

-- | V1 error format.
plsscXgafv :: Lens' ProjectsLocationsSecuritySettingsCreate (Maybe Xgafv)
plsscXgafv
  = lens _plsscXgafv (\ s a -> s{_plsscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsscUploadProtocol :: Lens' ProjectsLocationsSecuritySettingsCreate (Maybe Text)
plsscUploadProtocol
  = lens _plsscUploadProtocol
      (\ s a -> s{_plsscUploadProtocol = a})

-- | OAuth access token.
plsscAccessToken :: Lens' ProjectsLocationsSecuritySettingsCreate (Maybe Text)
plsscAccessToken
  = lens _plsscAccessToken
      (\ s a -> s{_plsscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsscUploadType :: Lens' ProjectsLocationsSecuritySettingsCreate (Maybe Text)
plsscUploadType
  = lens _plsscUploadType
      (\ s a -> s{_plsscUploadType = a})

-- | Multipart request metadata.
plsscPayload :: Lens' ProjectsLocationsSecuritySettingsCreate GoogleCloudDialogflowCxV3SecuritySettings
plsscPayload
  = lens _plsscPayload (\ s a -> s{_plsscPayload = a})

-- | JSONP
plsscCallback :: Lens' ProjectsLocationsSecuritySettingsCreate (Maybe Text)
plsscCallback
  = lens _plsscCallback
      (\ s a -> s{_plsscCallback = a})

instance GoogleRequest
           ProjectsLocationsSecuritySettingsCreate
         where
        type Rs ProjectsLocationsSecuritySettingsCreate =
             GoogleCloudDialogflowCxV3SecuritySettings
        type Scopes ProjectsLocationsSecuritySettingsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsSecuritySettingsCreate'{..}
          = go _plsscParent _plsscXgafv _plsscUploadProtocol
              _plsscAccessToken
              _plsscUploadType
              _plsscCallback
              (Just AltJSON)
              _plsscPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsSecuritySettingsCreateResource)
                      mempty

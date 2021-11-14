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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified SecuritySettings.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.Patch
    (
    -- * REST Resource
      ProjectsLocationsSecuritySettingsPatchResource

    -- * Creating a Request
    , projectsLocationsSecuritySettingsPatch
    , ProjectsLocationsSecuritySettingsPatch

    -- * Request Lenses
    , plsspXgafv
    , plsspUploadProtocol
    , plsspUpdateMask
    , plsspAccessToken
    , plsspUploadType
    , plsspPayload
    , plsspName
    , plsspCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.securitySettings.patch@ method which the
-- 'ProjectsLocationsSecuritySettingsPatch' request conforms to.
type ProjectsLocationsSecuritySettingsPatchResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3SecuritySettings
                         :>
                         Patch '[JSON]
                           GoogleCloudDialogflowCxV3SecuritySettings

-- | Updates the specified SecuritySettings.
--
-- /See:/ 'projectsLocationsSecuritySettingsPatch' smart constructor.
data ProjectsLocationsSecuritySettingsPatch =
  ProjectsLocationsSecuritySettingsPatch'
    { _plsspXgafv :: !(Maybe Xgafv)
    , _plsspUploadProtocol :: !(Maybe Text)
    , _plsspUpdateMask :: !(Maybe GFieldMask)
    , _plsspAccessToken :: !(Maybe Text)
    , _plsspUploadType :: !(Maybe Text)
    , _plsspPayload :: !GoogleCloudDialogflowCxV3SecuritySettings
    , _plsspName :: !Text
    , _plsspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSecuritySettingsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsspXgafv'
--
-- * 'plsspUploadProtocol'
--
-- * 'plsspUpdateMask'
--
-- * 'plsspAccessToken'
--
-- * 'plsspUploadType'
--
-- * 'plsspPayload'
--
-- * 'plsspName'
--
-- * 'plsspCallback'
projectsLocationsSecuritySettingsPatch
    :: GoogleCloudDialogflowCxV3SecuritySettings -- ^ 'plsspPayload'
    -> Text -- ^ 'plsspName'
    -> ProjectsLocationsSecuritySettingsPatch
projectsLocationsSecuritySettingsPatch pPlsspPayload_ pPlsspName_ =
  ProjectsLocationsSecuritySettingsPatch'
    { _plsspXgafv = Nothing
    , _plsspUploadProtocol = Nothing
    , _plsspUpdateMask = Nothing
    , _plsspAccessToken = Nothing
    , _plsspUploadType = Nothing
    , _plsspPayload = pPlsspPayload_
    , _plsspName = pPlsspName_
    , _plsspCallback = Nothing
    }


-- | V1 error format.
plsspXgafv :: Lens' ProjectsLocationsSecuritySettingsPatch (Maybe Xgafv)
plsspXgafv
  = lens _plsspXgafv (\ s a -> s{_plsspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsspUploadProtocol :: Lens' ProjectsLocationsSecuritySettingsPatch (Maybe Text)
plsspUploadProtocol
  = lens _plsspUploadProtocol
      (\ s a -> s{_plsspUploadProtocol = a})

-- | Required. The mask to control which fields get updated. If the mask is
-- not present, all fields will be updated.
plsspUpdateMask :: Lens' ProjectsLocationsSecuritySettingsPatch (Maybe GFieldMask)
plsspUpdateMask
  = lens _plsspUpdateMask
      (\ s a -> s{_plsspUpdateMask = a})

-- | OAuth access token.
plsspAccessToken :: Lens' ProjectsLocationsSecuritySettingsPatch (Maybe Text)
plsspAccessToken
  = lens _plsspAccessToken
      (\ s a -> s{_plsspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsspUploadType :: Lens' ProjectsLocationsSecuritySettingsPatch (Maybe Text)
plsspUploadType
  = lens _plsspUploadType
      (\ s a -> s{_plsspUploadType = a})

-- | Multipart request metadata.
plsspPayload :: Lens' ProjectsLocationsSecuritySettingsPatch GoogleCloudDialogflowCxV3SecuritySettings
plsspPayload
  = lens _plsspPayload (\ s a -> s{_plsspPayload = a})

-- | Required. Resource name of the settings. Format:
-- \`projects\/\/locations\/\/securitySettings\/\`.
plsspName :: Lens' ProjectsLocationsSecuritySettingsPatch Text
plsspName
  = lens _plsspName (\ s a -> s{_plsspName = a})

-- | JSONP
plsspCallback :: Lens' ProjectsLocationsSecuritySettingsPatch (Maybe Text)
plsspCallback
  = lens _plsspCallback
      (\ s a -> s{_plsspCallback = a})

instance GoogleRequest
           ProjectsLocationsSecuritySettingsPatch
         where
        type Rs ProjectsLocationsSecuritySettingsPatch =
             GoogleCloudDialogflowCxV3SecuritySettings
        type Scopes ProjectsLocationsSecuritySettingsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsSecuritySettingsPatch'{..}
          = go _plsspName _plsspXgafv _plsspUploadProtocol
              _plsspUpdateMask
              _plsspAccessToken
              _plsspUploadType
              _plsspCallback
              (Just AltJSON)
              _plsspPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsSecuritySettingsPatchResource)
                      mempty

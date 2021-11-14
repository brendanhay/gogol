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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all security settings in the specified location.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.securitySettings.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.SecuritySettings.List
    (
    -- * REST Resource
      ProjectsLocationsSecuritySettingsListResource

    -- * Creating a Request
    , projectsLocationsSecuritySettingsList
    , ProjectsLocationsSecuritySettingsList

    -- * Request Lenses
    , plsslParent
    , plsslXgafv
    , plsslUploadProtocol
    , plsslAccessToken
    , plsslUploadType
    , plsslPageToken
    , plsslPageSize
    , plsslCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.securitySettings.list@ method which the
-- 'ProjectsLocationsSecuritySettingsList' request conforms to.
type ProjectsLocationsSecuritySettingsListResource =
     "v3" :>
       Capture "parent" Text :>
         "securitySettings" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListSecuritySettingsResponse

-- | Returns the list of all security settings in the specified location.
--
-- /See:/ 'projectsLocationsSecuritySettingsList' smart constructor.
data ProjectsLocationsSecuritySettingsList =
  ProjectsLocationsSecuritySettingsList'
    { _plsslParent :: !Text
    , _plsslXgafv :: !(Maybe Xgafv)
    , _plsslUploadProtocol :: !(Maybe Text)
    , _plsslAccessToken :: !(Maybe Text)
    , _plsslUploadType :: !(Maybe Text)
    , _plsslPageToken :: !(Maybe Text)
    , _plsslPageSize :: !(Maybe (Textual Int32))
    , _plsslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsSecuritySettingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsslParent'
--
-- * 'plsslXgafv'
--
-- * 'plsslUploadProtocol'
--
-- * 'plsslAccessToken'
--
-- * 'plsslUploadType'
--
-- * 'plsslPageToken'
--
-- * 'plsslPageSize'
--
-- * 'plsslCallback'
projectsLocationsSecuritySettingsList
    :: Text -- ^ 'plsslParent'
    -> ProjectsLocationsSecuritySettingsList
projectsLocationsSecuritySettingsList pPlsslParent_ =
  ProjectsLocationsSecuritySettingsList'
    { _plsslParent = pPlsslParent_
    , _plsslXgafv = Nothing
    , _plsslUploadProtocol = Nothing
    , _plsslAccessToken = Nothing
    , _plsslUploadType = Nothing
    , _plsslPageToken = Nothing
    , _plsslPageSize = Nothing
    , _plsslCallback = Nothing
    }


-- | Required. The location to list all security settings for. Format:
-- \`projects\/\/locations\/\`.
plsslParent :: Lens' ProjectsLocationsSecuritySettingsList Text
plsslParent
  = lens _plsslParent (\ s a -> s{_plsslParent = a})

-- | V1 error format.
plsslXgafv :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Xgafv)
plsslXgafv
  = lens _plsslXgafv (\ s a -> s{_plsslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsslUploadProtocol :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Text)
plsslUploadProtocol
  = lens _plsslUploadProtocol
      (\ s a -> s{_plsslUploadProtocol = a})

-- | OAuth access token.
plsslAccessToken :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Text)
plsslAccessToken
  = lens _plsslAccessToken
      (\ s a -> s{_plsslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsslUploadType :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Text)
plsslUploadType
  = lens _plsslUploadType
      (\ s a -> s{_plsslUploadType = a})

-- | The next_page_token value returned from a previous list request.
plsslPageToken :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Text)
plsslPageToken
  = lens _plsslPageToken
      (\ s a -> s{_plsslPageToken = a})

-- | The maximum number of items to return in a single page. By default 20
-- and at most 100.
plsslPageSize :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Int32)
plsslPageSize
  = lens _plsslPageSize
      (\ s a -> s{_plsslPageSize = a})
      . mapping _Coerce

-- | JSONP
plsslCallback :: Lens' ProjectsLocationsSecuritySettingsList (Maybe Text)
plsslCallback
  = lens _plsslCallback
      (\ s a -> s{_plsslCallback = a})

instance GoogleRequest
           ProjectsLocationsSecuritySettingsList
         where
        type Rs ProjectsLocationsSecuritySettingsList =
             GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
        type Scopes ProjectsLocationsSecuritySettingsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsSecuritySettingsList'{..}
          = go _plsslParent _plsslXgafv _plsslUploadProtocol
              _plsslAccessToken
              _plsslUploadType
              _plsslPageToken
              _plsslPageSize
              _plsslCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsSecuritySettingsListResource)
                      mempty

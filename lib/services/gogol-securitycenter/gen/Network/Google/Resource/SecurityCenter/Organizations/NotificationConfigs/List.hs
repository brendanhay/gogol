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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists notification configs.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.list@.
module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.List
    (
    -- * REST Resource
      OrganizationsNotificationConfigsListResource

    -- * Creating a Request
    , organizationsNotificationConfigsList
    , OrganizationsNotificationConfigsList

    -- * Request Lenses
    , onclParent
    , onclXgafv
    , onclUploadProtocol
    , onclAccessToken
    , onclUploadType
    , onclPageToken
    , onclPageSize
    , onclCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.list@ method which the
-- 'OrganizationsNotificationConfigsList' request conforms to.
type OrganizationsNotificationConfigsListResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "notificationConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListNotificationConfigsResponse

-- | Lists notification configs.
--
-- /See:/ 'organizationsNotificationConfigsList' smart constructor.
data OrganizationsNotificationConfigsList =
  OrganizationsNotificationConfigsList'
    { _onclParent :: !Text
    , _onclXgafv :: !(Maybe Xgafv)
    , _onclUploadProtocol :: !(Maybe Text)
    , _onclAccessToken :: !(Maybe Text)
    , _onclUploadType :: !(Maybe Text)
    , _onclPageToken :: !(Maybe Text)
    , _onclPageSize :: !(Maybe (Textual Int32))
    , _onclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsNotificationConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onclParent'
--
-- * 'onclXgafv'
--
-- * 'onclUploadProtocol'
--
-- * 'onclAccessToken'
--
-- * 'onclUploadType'
--
-- * 'onclPageToken'
--
-- * 'onclPageSize'
--
-- * 'onclCallback'
organizationsNotificationConfigsList
    :: Text -- ^ 'onclParent'
    -> OrganizationsNotificationConfigsList
organizationsNotificationConfigsList pOnclParent_ =
  OrganizationsNotificationConfigsList'
    { _onclParent = pOnclParent_
    , _onclXgafv = Nothing
    , _onclUploadProtocol = Nothing
    , _onclAccessToken = Nothing
    , _onclUploadType = Nothing
    , _onclPageToken = Nothing
    , _onclPageSize = Nothing
    , _onclCallback = Nothing
    }


-- | Required. Name of the organization to list notification configs. Its
-- format is \"organizations\/[organization_id]\".
onclParent :: Lens' OrganizationsNotificationConfigsList Text
onclParent
  = lens _onclParent (\ s a -> s{_onclParent = a})

-- | V1 error format.
onclXgafv :: Lens' OrganizationsNotificationConfigsList (Maybe Xgafv)
onclXgafv
  = lens _onclXgafv (\ s a -> s{_onclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
onclUploadProtocol :: Lens' OrganizationsNotificationConfigsList (Maybe Text)
onclUploadProtocol
  = lens _onclUploadProtocol
      (\ s a -> s{_onclUploadProtocol = a})

-- | OAuth access token.
onclAccessToken :: Lens' OrganizationsNotificationConfigsList (Maybe Text)
onclAccessToken
  = lens _onclAccessToken
      (\ s a -> s{_onclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
onclUploadType :: Lens' OrganizationsNotificationConfigsList (Maybe Text)
onclUploadType
  = lens _onclUploadType
      (\ s a -> s{_onclUploadType = a})

-- | The value returned by the last \`ListNotificationConfigsResponse\`;
-- indicates that this is a continuation of a prior
-- \`ListNotificationConfigs\` call, and that the system should return the
-- next page of data.
onclPageToken :: Lens' OrganizationsNotificationConfigsList (Maybe Text)
onclPageToken
  = lens _onclPageToken
      (\ s a -> s{_onclPageToken = a})

-- | The maximum number of results to return in a single response. Default is
-- 10, minimum is 1, maximum is 1000.
onclPageSize :: Lens' OrganizationsNotificationConfigsList (Maybe Int32)
onclPageSize
  = lens _onclPageSize (\ s a -> s{_onclPageSize = a})
      . mapping _Coerce

-- | JSONP
onclCallback :: Lens' OrganizationsNotificationConfigsList (Maybe Text)
onclCallback
  = lens _onclCallback (\ s a -> s{_onclCallback = a})

instance GoogleRequest
           OrganizationsNotificationConfigsList
         where
        type Rs OrganizationsNotificationConfigsList =
             ListNotificationConfigsResponse
        type Scopes OrganizationsNotificationConfigsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsNotificationConfigsList'{..}
          = go _onclParent _onclXgafv _onclUploadProtocol
              _onclAccessToken
              _onclUploadType
              _onclPageToken
              _onclPageSize
              _onclCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsNotificationConfigsListResource)
                      mempty

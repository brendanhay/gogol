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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Lookup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up resource names of the DeviceUsers associated with the caller\'s
-- credentials, as well as the properties provided in the request. This
-- method must be called with end-user credentials with the scope:
-- https:\/\/www.googleapis.com\/auth\/cloud-identity.devices.lookup If
-- multiple properties are provided, only DeviceUsers having all of these
-- properties are considered as matches - i.e. the query behaves like an
-- AND. Different platforms require different amounts of information from
-- the caller to ensure that the DeviceUser is uniquely identified. - iOS:
-- No properties need to be passed, the caller\'s credentials are
-- sufficient to identify the corresponding DeviceUser. - Android:
-- Specifying the \'android_id\' field is required. - Desktop: Specifying
-- the \'raw_resource_id\' field is required.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.lookup@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.Lookup
    (
    -- * REST Resource
      DevicesDeviceUsersLookupResource

    -- * Creating a Request
    , devicesDeviceUsersLookup
    , DevicesDeviceUsersLookup

    -- * Request Lenses
    , dParent
    , dXgafv
    , dUploadProtocol
    , dAccessToken
    , dRawResourceId
    , dUploadType
    , dUserId
    , dPageToken
    , dPageSize
    , dAndroidId
    , dCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.lookup@ method which the
-- 'DevicesDeviceUsersLookup' request conforms to.
type DevicesDeviceUsersLookupResource =
     "v1" :>
       CaptureMode "parent" "lookup" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "rawResourceId" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "userId" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "androidId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse

-- | Looks up resource names of the DeviceUsers associated with the caller\'s
-- credentials, as well as the properties provided in the request. This
-- method must be called with end-user credentials with the scope:
-- https:\/\/www.googleapis.com\/auth\/cloud-identity.devices.lookup If
-- multiple properties are provided, only DeviceUsers having all of these
-- properties are considered as matches - i.e. the query behaves like an
-- AND. Different platforms require different amounts of information from
-- the caller to ensure that the DeviceUser is uniquely identified. - iOS:
-- No properties need to be passed, the caller\'s credentials are
-- sufficient to identify the corresponding DeviceUser. - Android:
-- Specifying the \'android_id\' field is required. - Desktop: Specifying
-- the \'raw_resource_id\' field is required.
--
-- /See:/ 'devicesDeviceUsersLookup' smart constructor.
data DevicesDeviceUsersLookup =
  DevicesDeviceUsersLookup'
    { _dParent :: !Text
    , _dXgafv :: !(Maybe Xgafv)
    , _dUploadProtocol :: !(Maybe Text)
    , _dAccessToken :: !(Maybe Text)
    , _dRawResourceId :: !(Maybe Text)
    , _dUploadType :: !(Maybe Text)
    , _dUserId :: !(Maybe Text)
    , _dPageToken :: !(Maybe Text)
    , _dPageSize :: !(Maybe (Textual Int32))
    , _dAndroidId :: !(Maybe Text)
    , _dCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersLookup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dParent'
--
-- * 'dXgafv'
--
-- * 'dUploadProtocol'
--
-- * 'dAccessToken'
--
-- * 'dRawResourceId'
--
-- * 'dUploadType'
--
-- * 'dUserId'
--
-- * 'dPageToken'
--
-- * 'dPageSize'
--
-- * 'dAndroidId'
--
-- * 'dCallback'
devicesDeviceUsersLookup
    :: Text -- ^ 'dParent'
    -> DevicesDeviceUsersLookup
devicesDeviceUsersLookup pDParent_ =
  DevicesDeviceUsersLookup'
    { _dParent = pDParent_
    , _dXgafv = Nothing
    , _dUploadProtocol = Nothing
    , _dAccessToken = Nothing
    , _dRawResourceId = Nothing
    , _dUploadType = Nothing
    , _dUserId = Nothing
    , _dPageToken = Nothing
    , _dPageSize = Nothing
    , _dAndroidId = Nothing
    , _dCallback = Nothing
    }


-- | Must be set to \"devices\/-\/deviceUsers\" to search across all
-- DeviceUser belonging to the user.
dParent :: Lens' DevicesDeviceUsersLookup Text
dParent = lens _dParent (\ s a -> s{_dParent = a})

-- | V1 error format.
dXgafv :: Lens' DevicesDeviceUsersLookup (Maybe Xgafv)
dXgafv = lens _dXgafv (\ s a -> s{_dXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dUploadProtocol :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dUploadProtocol
  = lens _dUploadProtocol
      (\ s a -> s{_dUploadProtocol = a})

-- | OAuth access token.
dAccessToken :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dAccessToken
  = lens _dAccessToken (\ s a -> s{_dAccessToken = a})

-- | Raw Resource Id used by Google Endpoint Verification. If the user is
-- enrolled into Google Endpoint Verification, this id will be saved as the
-- \'device_resource_id\' field in the following platform dependent files.
-- Mac: ~\/.secureConnect\/context_aware_config.json Windows:
-- C:\\Users\\%USERPROFILE%\\.secureConnect\\context_aware_config.json
-- Linux: ~\/.secureConnect\/context_aware_config.json
dRawResourceId :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dRawResourceId
  = lens _dRawResourceId
      (\ s a -> s{_dRawResourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dUploadType :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dUploadType
  = lens _dUploadType (\ s a -> s{_dUploadType = a})

-- | The user whose DeviceUser\'s resource name will be fetched. Must be set
-- to \'me\' to fetch the DeviceUser\'s resource name for the calling user.
dUserId :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dUserId = lens _dUserId (\ s a -> s{_dUserId = a})

-- | A page token, received from a previous \`LookupDeviceUsers\` call.
-- Provide this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`LookupDeviceUsers\` must match the call that
-- provided the page token.
dPageToken :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dPageToken
  = lens _dPageToken (\ s a -> s{_dPageToken = a})

-- | The maximum number of DeviceUsers to return. If unspecified, at most 20
-- DeviceUsers will be returned. The maximum value is 20; values above 20
-- will be coerced to 20.
dPageSize :: Lens' DevicesDeviceUsersLookup (Maybe Int32)
dPageSize
  = lens _dPageSize (\ s a -> s{_dPageSize = a}) .
      mapping _Coerce

-- | Android Id returned by
-- [Settings.Secure#ANDROID_ID](https:\/\/developer.android.com\/reference\/android\/provider\/Settings.Secure.html#ANDROID_ID).
dAndroidId :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dAndroidId
  = lens _dAndroidId (\ s a -> s{_dAndroidId = a})

-- | JSONP
dCallback :: Lens' DevicesDeviceUsersLookup (Maybe Text)
dCallback
  = lens _dCallback (\ s a -> s{_dCallback = a})

instance GoogleRequest DevicesDeviceUsersLookup where
        type Rs DevicesDeviceUsersLookup =
             GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
        type Scopes DevicesDeviceUsersLookup =
             '["https://www.googleapis.com/auth/cloud-identity.devices.lookup"]
        requestClient DevicesDeviceUsersLookup'{..}
          = go _dParent _dXgafv _dUploadProtocol _dAccessToken
              _dRawResourceId
              _dUploadType
              _dUserId
              _dPageToken
              _dPageSize
              _dAndroidId
              _dCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy :: Proxy DevicesDeviceUsersLookupResource)
                      mempty

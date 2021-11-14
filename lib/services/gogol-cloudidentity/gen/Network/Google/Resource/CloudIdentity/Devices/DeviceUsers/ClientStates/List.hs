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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the client states for the given search query.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.clientStates.list@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.List
    (
    -- * REST Resource
      DevicesDeviceUsersClientStatesListResource

    -- * Creating a Request
    , devicesDeviceUsersClientStatesList
    , DevicesDeviceUsersClientStatesList

    -- * Request Lenses
    , dducslParent
    , dducslXgafv
    , dducslUploadProtocol
    , dducslOrderBy
    , dducslAccessToken
    , dducslUploadType
    , dducslCustomer
    , dducslFilter
    , dducslPageToken
    , dducslCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.clientStates.list@ method which the
-- 'DevicesDeviceUsersClientStatesList' request conforms to.
type DevicesDeviceUsersClientStatesListResource =
     "v1" :>
       Capture "parent" Text :>
         "clientStates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "customer" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleAppsCloudidentityDevicesV1ListClientStatesResponse

-- | Lists the client states for the given search query.
--
-- /See:/ 'devicesDeviceUsersClientStatesList' smart constructor.
data DevicesDeviceUsersClientStatesList =
  DevicesDeviceUsersClientStatesList'
    { _dducslParent :: !Text
    , _dducslXgafv :: !(Maybe Xgafv)
    , _dducslUploadProtocol :: !(Maybe Text)
    , _dducslOrderBy :: !(Maybe Text)
    , _dducslAccessToken :: !(Maybe Text)
    , _dducslUploadType :: !(Maybe Text)
    , _dducslCustomer :: !(Maybe Text)
    , _dducslFilter :: !(Maybe Text)
    , _dducslPageToken :: !(Maybe Text)
    , _dducslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersClientStatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dducslParent'
--
-- * 'dducslXgafv'
--
-- * 'dducslUploadProtocol'
--
-- * 'dducslOrderBy'
--
-- * 'dducslAccessToken'
--
-- * 'dducslUploadType'
--
-- * 'dducslCustomer'
--
-- * 'dducslFilter'
--
-- * 'dducslPageToken'
--
-- * 'dducslCallback'
devicesDeviceUsersClientStatesList
    :: Text -- ^ 'dducslParent'
    -> DevicesDeviceUsersClientStatesList
devicesDeviceUsersClientStatesList pDducslParent_ =
  DevicesDeviceUsersClientStatesList'
    { _dducslParent = pDducslParent_
    , _dducslXgafv = Nothing
    , _dducslUploadProtocol = Nothing
    , _dducslOrderBy = Nothing
    , _dducslAccessToken = Nothing
    , _dducslUploadType = Nothing
    , _dducslCustomer = Nothing
    , _dducslFilter = Nothing
    , _dducslPageToken = Nothing
    , _dducslCallback = Nothing
    }


-- | Required. To list all ClientStates, set this to
-- \"devices\/-\/deviceUsers\/-\". To list all ClientStates owned by a
-- DeviceUser, set this to the resource name of the DeviceUser. Format:
-- devices\/{device}\/deviceUsers\/{deviceUser}
dducslParent :: Lens' DevicesDeviceUsersClientStatesList Text
dducslParent
  = lens _dducslParent (\ s a -> s{_dducslParent = a})

-- | V1 error format.
dducslXgafv :: Lens' DevicesDeviceUsersClientStatesList (Maybe Xgafv)
dducslXgafv
  = lens _dducslXgafv (\ s a -> s{_dducslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dducslUploadProtocol :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslUploadProtocol
  = lens _dducslUploadProtocol
      (\ s a -> s{_dducslUploadProtocol = a})

-- | Optional. Order specification for client states in the response.
dducslOrderBy :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslOrderBy
  = lens _dducslOrderBy
      (\ s a -> s{_dducslOrderBy = a})

-- | OAuth access token.
dducslAccessToken :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslAccessToken
  = lens _dducslAccessToken
      (\ s a -> s{_dducslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dducslUploadType :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslUploadType
  = lens _dducslUploadType
      (\ s a -> s{_dducslUploadType = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
dducslCustomer :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslCustomer
  = lens _dducslCustomer
      (\ s a -> s{_dducslCustomer = a})

-- | Optional. Additional restrictions when fetching list of client states.
dducslFilter :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslFilter
  = lens _dducslFilter (\ s a -> s{_dducslFilter = a})

-- | Optional. A page token, received from a previous \`ListClientStates\`
-- call. Provide this to retrieve the subsequent page. When paginating, all
-- other parameters provided to \`ListClientStates\` must match the call
-- that provided the page token.
dducslPageToken :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslPageToken
  = lens _dducslPageToken
      (\ s a -> s{_dducslPageToken = a})

-- | JSONP
dducslCallback :: Lens' DevicesDeviceUsersClientStatesList (Maybe Text)
dducslCallback
  = lens _dducslCallback
      (\ s a -> s{_dducslCallback = a})

instance GoogleRequest
           DevicesDeviceUsersClientStatesList
         where
        type Rs DevicesDeviceUsersClientStatesList =
             GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
        type Scopes DevicesDeviceUsersClientStatesList = '[]
        requestClient DevicesDeviceUsersClientStatesList'{..}
          = go _dducslParent _dducslXgafv _dducslUploadProtocol
              _dducslOrderBy
              _dducslAccessToken
              _dducslUploadType
              _dducslCustomer
              _dducslFilter
              _dducslPageToken
              _dducslCallback
              (Just AltJSON)
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DevicesDeviceUsersClientStatesListResource)
                      mempty

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
-- Module      : Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the client state for the device user **Note**: This method is
-- available only to customers who have one of the following SKUs:
-- Enterprise Standard, Enterprise Plus, Enterprise for Education, and
-- Cloud Identity Premium
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.clientStates.patch@.
module Network.Google.Resource.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch
    (
    -- * REST Resource
      DevicesDeviceUsersClientStatesPatchResource

    -- * Creating a Request
    , devicesDeviceUsersClientStatesPatch
    , DevicesDeviceUsersClientStatesPatch

    -- * Request Lenses
    , dducspXgafv
    , dducspUploadProtocol
    , dducspUpdateMask
    , dducspAccessToken
    , dducspUploadType
    , dducspPayload
    , dducspCustomer
    , dducspName
    , dducspCallback
    ) where

import Network.Google.CloudIdentity.Types
import Network.Google.Prelude

-- | A resource alias for @cloudidentity.devices.deviceUsers.clientStates.patch@ method which the
-- 'DevicesDeviceUsersClientStatesPatch' request conforms to.
type DevicesDeviceUsersClientStatesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "customer" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GoogleAppsCloudidentityDevicesV1ClientState
                           :> Patch '[JSON] Operation

-- | Updates the client state for the device user **Note**: This method is
-- available only to customers who have one of the following SKUs:
-- Enterprise Standard, Enterprise Plus, Enterprise for Education, and
-- Cloud Identity Premium
--
-- /See:/ 'devicesDeviceUsersClientStatesPatch' smart constructor.
data DevicesDeviceUsersClientStatesPatch =
  DevicesDeviceUsersClientStatesPatch'
    { _dducspXgafv :: !(Maybe Xgafv)
    , _dducspUploadProtocol :: !(Maybe Text)
    , _dducspUpdateMask :: !(Maybe GFieldMask)
    , _dducspAccessToken :: !(Maybe Text)
    , _dducspUploadType :: !(Maybe Text)
    , _dducspPayload :: !GoogleAppsCloudidentityDevicesV1ClientState
    , _dducspCustomer :: !(Maybe Text)
    , _dducspName :: !Text
    , _dducspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DevicesDeviceUsersClientStatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dducspXgafv'
--
-- * 'dducspUploadProtocol'
--
-- * 'dducspUpdateMask'
--
-- * 'dducspAccessToken'
--
-- * 'dducspUploadType'
--
-- * 'dducspPayload'
--
-- * 'dducspCustomer'
--
-- * 'dducspName'
--
-- * 'dducspCallback'
devicesDeviceUsersClientStatesPatch
    :: GoogleAppsCloudidentityDevicesV1ClientState -- ^ 'dducspPayload'
    -> Text -- ^ 'dducspName'
    -> DevicesDeviceUsersClientStatesPatch
devicesDeviceUsersClientStatesPatch pDducspPayload_ pDducspName_ =
  DevicesDeviceUsersClientStatesPatch'
    { _dducspXgafv = Nothing
    , _dducspUploadProtocol = Nothing
    , _dducspUpdateMask = Nothing
    , _dducspAccessToken = Nothing
    , _dducspUploadType = Nothing
    , _dducspPayload = pDducspPayload_
    , _dducspCustomer = Nothing
    , _dducspName = pDducspName_
    , _dducspCallback = Nothing
    }


-- | V1 error format.
dducspXgafv :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe Xgafv)
dducspXgafv
  = lens _dducspXgafv (\ s a -> s{_dducspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dducspUploadProtocol :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe Text)
dducspUploadProtocol
  = lens _dducspUploadProtocol
      (\ s a -> s{_dducspUploadProtocol = a})

-- | Optional. Comma-separated list of fully qualified names of fields to be
-- updated. If not specified, all updatable fields in ClientState are
-- updated.
dducspUpdateMask :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe GFieldMask)
dducspUpdateMask
  = lens _dducspUpdateMask
      (\ s a -> s{_dducspUpdateMask = a})

-- | OAuth access token.
dducspAccessToken :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe Text)
dducspAccessToken
  = lens _dducspAccessToken
      (\ s a -> s{_dducspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dducspUploadType :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe Text)
dducspUploadType
  = lens _dducspUploadType
      (\ s a -> s{_dducspUploadType = a})

-- | Multipart request metadata.
dducspPayload :: Lens' DevicesDeviceUsersClientStatesPatch GoogleAppsCloudidentityDevicesV1ClientState
dducspPayload
  = lens _dducspPayload
      (\ s a -> s{_dducspPayload = a})

-- | Optional. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- customer. If you\'re using this API for your own organization, use
-- \`customers\/my_customer\` If you\'re using this API to manage another
-- organization, use \`customers\/{customer_id}\`, where customer_id is the
-- customer to whom the device belongs.
dducspCustomer :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe Text)
dducspCustomer
  = lens _dducspCustomer
      (\ s a -> s{_dducspCustomer = a})

-- | Output only. [Resource
-- name](https:\/\/cloud.google.com\/apis\/design\/resource_names) of the
-- ClientState in format:
-- \`devices\/{device_id}\/deviceUsers\/{device_user_id}\/clientState\/{partner_id}\`,
-- where partner_id corresponds to the partner storing the data. For
-- partners belonging to the \"BeyondCorp Alliance\", this is the partner
-- ID specified to you by Google. For all other callers, this is a string
-- of the form: \`{customer_id}-suffix\`, where \`customer_id\` is your
-- customer ID. The *suffix* is any string the caller specifies. This
-- string will be displayed verbatim in the administration console. This
-- suffix is used in setting up Custom Access Levels in Context-Aware
-- Access. Your organization\'s customer ID can be obtained from the URL:
-- \`GET
-- https:\/\/www.googleapis.com\/admin\/directory\/v1\/customers\/my_customer\`
-- The \`id\` field in the response contains the customer ID starting with
-- the letter \'C\'. The customer ID to be used in this API is the string
-- after the letter \'C\' (not including \'C\')
dducspName :: Lens' DevicesDeviceUsersClientStatesPatch Text
dducspName
  = lens _dducspName (\ s a -> s{_dducspName = a})

-- | JSONP
dducspCallback :: Lens' DevicesDeviceUsersClientStatesPatch (Maybe Text)
dducspCallback
  = lens _dducspCallback
      (\ s a -> s{_dducspCallback = a})

instance GoogleRequest
           DevicesDeviceUsersClientStatesPatch
         where
        type Rs DevicesDeviceUsersClientStatesPatch =
             Operation
        type Scopes DevicesDeviceUsersClientStatesPatch = '[]
        requestClient
          DevicesDeviceUsersClientStatesPatch'{..}
          = go _dducspName _dducspXgafv _dducspUploadProtocol
              _dducspUpdateMask
              _dducspAccessToken
              _dducspUploadType
              _dducspCustomer
              _dducspCallback
              (Just AltJSON)
              _dducspPayload
              cloudIdentityService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DevicesDeviceUsersClientStatesPatchResource)
                      mempty

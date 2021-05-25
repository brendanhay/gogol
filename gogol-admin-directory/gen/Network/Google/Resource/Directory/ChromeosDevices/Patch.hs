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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a device\'s updatable properties, such as \`annotatedUser\`,
-- \`annotatedLocation\`, \`notes\`, \`orgUnitPath\`, or
-- \`annotatedAssetId\`. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.patch@.
module Network.Google.Resource.Directory.ChromeosDevices.Patch
    (
    -- * REST Resource
      ChromeosDevicesPatchResource

    -- * Creating a Request
    , chromeosDevicesPatch
    , ChromeosDevicesPatch

    -- * Request Lenses
    , cdpXgafv
    , cdpUploadProtocol
    , cdpAccessToken
    , cdpUploadType
    , cdpPayload
    , cdpCustomerId
    , cdpDeviceId
    , cdpProjection
    , cdpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.patch@ method which the
-- 'ChromeosDevicesPatch' request conforms to.
type ChromeosDevicesPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   Capture "deviceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "projection"
                               ChromeosDevicesPatchProjection
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ChromeOSDevice :>
                                     Patch '[JSON] ChromeOSDevice

-- | Updates a device\'s updatable properties, such as \`annotatedUser\`,
-- \`annotatedLocation\`, \`notes\`, \`orgUnitPath\`, or
-- \`annotatedAssetId\`. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ 'chromeosDevicesPatch' smart constructor.
data ChromeosDevicesPatch =
  ChromeosDevicesPatch'
    { _cdpXgafv :: !(Maybe Xgafv)
    , _cdpUploadProtocol :: !(Maybe Text)
    , _cdpAccessToken :: !(Maybe Text)
    , _cdpUploadType :: !(Maybe Text)
    , _cdpPayload :: !ChromeOSDevice
    , _cdpCustomerId :: !Text
    , _cdpDeviceId :: !Text
    , _cdpProjection :: !(Maybe ChromeosDevicesPatchProjection)
    , _cdpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeosDevicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpXgafv'
--
-- * 'cdpUploadProtocol'
--
-- * 'cdpAccessToken'
--
-- * 'cdpUploadType'
--
-- * 'cdpPayload'
--
-- * 'cdpCustomerId'
--
-- * 'cdpDeviceId'
--
-- * 'cdpProjection'
--
-- * 'cdpCallback'
chromeosDevicesPatch
    :: ChromeOSDevice -- ^ 'cdpPayload'
    -> Text -- ^ 'cdpCustomerId'
    -> Text -- ^ 'cdpDeviceId'
    -> ChromeosDevicesPatch
chromeosDevicesPatch pCdpPayload_ pCdpCustomerId_ pCdpDeviceId_ =
  ChromeosDevicesPatch'
    { _cdpXgafv = Nothing
    , _cdpUploadProtocol = Nothing
    , _cdpAccessToken = Nothing
    , _cdpUploadType = Nothing
    , _cdpPayload = pCdpPayload_
    , _cdpCustomerId = pCdpCustomerId_
    , _cdpDeviceId = pCdpDeviceId_
    , _cdpProjection = Nothing
    , _cdpCallback = Nothing
    }


-- | V1 error format.
cdpXgafv :: Lens' ChromeosDevicesPatch (Maybe Xgafv)
cdpXgafv = lens _cdpXgafv (\ s a -> s{_cdpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdpUploadProtocol :: Lens' ChromeosDevicesPatch (Maybe Text)
cdpUploadProtocol
  = lens _cdpUploadProtocol
      (\ s a -> s{_cdpUploadProtocol = a})

-- | OAuth access token.
cdpAccessToken :: Lens' ChromeosDevicesPatch (Maybe Text)
cdpAccessToken
  = lens _cdpAccessToken
      (\ s a -> s{_cdpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdpUploadType :: Lens' ChromeosDevicesPatch (Maybe Text)
cdpUploadType
  = lens _cdpUploadType
      (\ s a -> s{_cdpUploadType = a})

-- | Multipart request metadata.
cdpPayload :: Lens' ChromeosDevicesPatch ChromeOSDevice
cdpPayload
  = lens _cdpPayload (\ s a -> s{_cdpPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
cdpCustomerId :: Lens' ChromeosDevicesPatch Text
cdpCustomerId
  = lens _cdpCustomerId
      (\ s a -> s{_cdpCustomerId = a})

-- | The unique ID of the device. The \`deviceId\`s are returned in the
-- response from the
-- [chromeosdevices.list](\/admin-sdk\/v1\/reference\/chromeosdevices\/list)
-- method.
cdpDeviceId :: Lens' ChromeosDevicesPatch Text
cdpDeviceId
  = lens _cdpDeviceId (\ s a -> s{_cdpDeviceId = a})

-- | Restrict information returned to a set of selected fields.
cdpProjection :: Lens' ChromeosDevicesPatch (Maybe ChromeosDevicesPatchProjection)
cdpProjection
  = lens _cdpProjection
      (\ s a -> s{_cdpProjection = a})

-- | JSONP
cdpCallback :: Lens' ChromeosDevicesPatch (Maybe Text)
cdpCallback
  = lens _cdpCallback (\ s a -> s{_cdpCallback = a})

instance GoogleRequest ChromeosDevicesPatch where
        type Rs ChromeosDevicesPatch = ChromeOSDevice
        type Scopes ChromeosDevicesPatch =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient ChromeosDevicesPatch'{..}
          = go _cdpCustomerId _cdpDeviceId _cdpXgafv
              _cdpUploadProtocol
              _cdpAccessToken
              _cdpUploadType
              _cdpProjection
              _cdpCallback
              (Just AltJSON)
              _cdpPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy ChromeosDevicesPatchResource)
                      mempty

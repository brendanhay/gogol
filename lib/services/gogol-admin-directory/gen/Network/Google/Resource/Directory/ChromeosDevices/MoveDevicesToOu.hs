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
-- Module      : Network.Google.Resource.Directory.ChromeosDevices.MoveDevicesToOu
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves or inserts multiple Chrome OS devices to an organizational unit.
-- You can move up to 50 devices at once.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.chromeosdevices.moveDevicesToOu@.
module Network.Google.Resource.Directory.ChromeosDevices.MoveDevicesToOu
    (
    -- * REST Resource
      ChromeosDevicesMoveDevicesToOuResource

    -- * Creating a Request
    , chromeosDevicesMoveDevicesToOu
    , ChromeosDevicesMoveDevicesToOu

    -- * Request Lenses
    , cdmdtoXgafv
    , cdmdtoUploadProtocol
    , cdmdtoAccessToken
    , cdmdtoUploadType
    , cdmdtoPayload
    , cdmdtoOrgUnitPath
    , cdmdtoCustomerId
    , cdmdtoCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.chromeosdevices.moveDevicesToOu@ method which the
-- 'ChromeosDevicesMoveDevicesToOu' request conforms to.
type ChromeosDevicesMoveDevicesToOuResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "chromeos" :>
                   "moveDevicesToOu" :>
                     QueryParam "orgUnitPath" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ChromeOSMoveDevicesToOu :>
                                     Post '[JSON] ()

-- | Moves or inserts multiple Chrome OS devices to an organizational unit.
-- You can move up to 50 devices at once.
--
-- /See:/ 'chromeosDevicesMoveDevicesToOu' smart constructor.
data ChromeosDevicesMoveDevicesToOu =
  ChromeosDevicesMoveDevicesToOu'
    { _cdmdtoXgafv :: !(Maybe Xgafv)
    , _cdmdtoUploadProtocol :: !(Maybe Text)
    , _cdmdtoAccessToken :: !(Maybe Text)
    , _cdmdtoUploadType :: !(Maybe Text)
    , _cdmdtoPayload :: !ChromeOSMoveDevicesToOu
    , _cdmdtoOrgUnitPath :: !Text
    , _cdmdtoCustomerId :: !Text
    , _cdmdtoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChromeosDevicesMoveDevicesToOu' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdmdtoXgafv'
--
-- * 'cdmdtoUploadProtocol'
--
-- * 'cdmdtoAccessToken'
--
-- * 'cdmdtoUploadType'
--
-- * 'cdmdtoPayload'
--
-- * 'cdmdtoOrgUnitPath'
--
-- * 'cdmdtoCustomerId'
--
-- * 'cdmdtoCallback'
chromeosDevicesMoveDevicesToOu
    :: ChromeOSMoveDevicesToOu -- ^ 'cdmdtoPayload'
    -> Text -- ^ 'cdmdtoOrgUnitPath'
    -> Text -- ^ 'cdmdtoCustomerId'
    -> ChromeosDevicesMoveDevicesToOu
chromeosDevicesMoveDevicesToOu pCdmdtoPayload_ pCdmdtoOrgUnitPath_ pCdmdtoCustomerId_ =
  ChromeosDevicesMoveDevicesToOu'
    { _cdmdtoXgafv = Nothing
    , _cdmdtoUploadProtocol = Nothing
    , _cdmdtoAccessToken = Nothing
    , _cdmdtoUploadType = Nothing
    , _cdmdtoPayload = pCdmdtoPayload_
    , _cdmdtoOrgUnitPath = pCdmdtoOrgUnitPath_
    , _cdmdtoCustomerId = pCdmdtoCustomerId_
    , _cdmdtoCallback = Nothing
    }


-- | V1 error format.
cdmdtoXgafv :: Lens' ChromeosDevicesMoveDevicesToOu (Maybe Xgafv)
cdmdtoXgafv
  = lens _cdmdtoXgafv (\ s a -> s{_cdmdtoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdmdtoUploadProtocol :: Lens' ChromeosDevicesMoveDevicesToOu (Maybe Text)
cdmdtoUploadProtocol
  = lens _cdmdtoUploadProtocol
      (\ s a -> s{_cdmdtoUploadProtocol = a})

-- | OAuth access token.
cdmdtoAccessToken :: Lens' ChromeosDevicesMoveDevicesToOu (Maybe Text)
cdmdtoAccessToken
  = lens _cdmdtoAccessToken
      (\ s a -> s{_cdmdtoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdmdtoUploadType :: Lens' ChromeosDevicesMoveDevicesToOu (Maybe Text)
cdmdtoUploadType
  = lens _cdmdtoUploadType
      (\ s a -> s{_cdmdtoUploadType = a})

-- | Multipart request metadata.
cdmdtoPayload :: Lens' ChromeosDevicesMoveDevicesToOu ChromeOSMoveDevicesToOu
cdmdtoPayload
  = lens _cdmdtoPayload
      (\ s a -> s{_cdmdtoPayload = a})

-- | Full path of the target organizational unit or its ID
cdmdtoOrgUnitPath :: Lens' ChromeosDevicesMoveDevicesToOu Text
cdmdtoOrgUnitPath
  = lens _cdmdtoOrgUnitPath
      (\ s a -> s{_cdmdtoOrgUnitPath = a})

-- | Immutable ID of the Google Workspace account
cdmdtoCustomerId :: Lens' ChromeosDevicesMoveDevicesToOu Text
cdmdtoCustomerId
  = lens _cdmdtoCustomerId
      (\ s a -> s{_cdmdtoCustomerId = a})

-- | JSONP
cdmdtoCallback :: Lens' ChromeosDevicesMoveDevicesToOu (Maybe Text)
cdmdtoCallback
  = lens _cdmdtoCallback
      (\ s a -> s{_cdmdtoCallback = a})

instance GoogleRequest ChromeosDevicesMoveDevicesToOu
         where
        type Rs ChromeosDevicesMoveDevicesToOu = ()
        type Scopes ChromeosDevicesMoveDevicesToOu =
             '["https://www.googleapis.com/auth/admin.directory.device.chromeos"]
        requestClient ChromeosDevicesMoveDevicesToOu'{..}
          = go _cdmdtoCustomerId (Just _cdmdtoOrgUnitPath)
              _cdmdtoXgafv
              _cdmdtoUploadProtocol
              _cdmdtoAccessToken
              _cdmdtoUploadType
              _cdmdtoCallback
              (Just AltJSON)
              _cdmdtoPayload
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ChromeosDevicesMoveDevicesToOuResource)
                      mempty

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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsPatch@.
module Network.Google.Resource.AndroidEnterprise.Installs.Patch
    (
    -- * REST Resource
      InstallsPatchResource

    -- * Creating a Request
    , installsPatch'
    , InstallsPatch'

    -- * Request Lenses
    , ipEnterpriseId
    , ipPayload
    , ipUserId
    , ipInstallId
    , ipDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsPatch@ method which the
-- 'InstallsPatch'' request conforms to.
type InstallsPatchResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Install :> Patch '[JSON] Install

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary. This method supports patch semantics.
--
-- /See:/ 'installsPatch'' smart constructor.
data InstallsPatch' = InstallsPatch'
    { _ipEnterpriseId :: !Text
    , _ipPayload      :: !Install
    , _ipUserId       :: !Text
    , _ipInstallId    :: !Text
    , _ipDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipEnterpriseId'
--
-- * 'ipPayload'
--
-- * 'ipUserId'
--
-- * 'ipInstallId'
--
-- * 'ipDeviceId'
installsPatch'
    :: Text -- ^ 'enterpriseId'
    -> Install -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsPatch'
installsPatch' pIpEnterpriseId_ pIpPayload_ pIpUserId_ pIpInstallId_ pIpDeviceId_ =
    InstallsPatch'
    { _ipEnterpriseId = pIpEnterpriseId_
    , _ipPayload = pIpPayload_
    , _ipUserId = pIpUserId_
    , _ipInstallId = pIpInstallId_
    , _ipDeviceId = pIpDeviceId_
    }

-- | The ID of the enterprise.
ipEnterpriseId :: Lens' InstallsPatch' Text
ipEnterpriseId
  = lens _ipEnterpriseId
      (\ s a -> s{_ipEnterpriseId = a})

-- | Multipart request metadata.
ipPayload :: Lens' InstallsPatch' Install
ipPayload
  = lens _ipPayload (\ s a -> s{_ipPayload = a})

-- | The ID of the user.
ipUserId :: Lens' InstallsPatch' Text
ipUserId = lens _ipUserId (\ s a -> s{_ipUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
ipInstallId :: Lens' InstallsPatch' Text
ipInstallId
  = lens _ipInstallId (\ s a -> s{_ipInstallId = a})

-- | The Android ID of the device.
ipDeviceId :: Lens' InstallsPatch' Text
ipDeviceId
  = lens _ipDeviceId (\ s a -> s{_ipDeviceId = a})

instance GoogleRequest InstallsPatch' where
        type Rs InstallsPatch' = Install
        requestClient InstallsPatch'{..}
          = go _ipEnterpriseId _ipUserId _ipDeviceId
              _ipInstallId
              (Just AltJSON)
              _ipPayload
              androidEnterprise
          where go
                  = buildClient (Proxy :: Proxy InstallsPatchResource)
                      mempty

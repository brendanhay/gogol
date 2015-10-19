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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.installs.update@.
module Network.Google.Resource.AndroidEnterprise.Installs.Update
    (
    -- * REST Resource
      InstallsUpdateResource

    -- * Creating a Request
    , installsUpdate'
    , InstallsUpdate'

    -- * Request Lenses
    , iuEnterpriseId
    , iuPayload
    , iuUserId
    , iuInstallId
    , iuDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.installs.update@ method which the
-- 'InstallsUpdate'' request conforms to.
type InstallsUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Install :> Put '[JSON] Install

-- | Requests to install the latest version of an app to a device. If the app
-- is already installed then it is updated to the latest version if
-- necessary.
--
-- /See:/ 'installsUpdate'' smart constructor.
data InstallsUpdate' = InstallsUpdate'
    { _iuEnterpriseId :: !Text
    , _iuPayload      :: !Install
    , _iuUserId       :: !Text
    , _iuInstallId    :: !Text
    , _iuDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iuEnterpriseId'
--
-- * 'iuPayload'
--
-- * 'iuUserId'
--
-- * 'iuInstallId'
--
-- * 'iuDeviceId'
installsUpdate'
    :: Text -- ^ 'iuEnterpriseId'
    -> Install -- ^ 'iuPayload'
    -> Text -- ^ 'iuUserId'
    -> Text -- ^ 'iuInstallId'
    -> Text -- ^ 'iuDeviceId'
    -> InstallsUpdate'
installsUpdate' pIuEnterpriseId_ pIuPayload_ pIuUserId_ pIuInstallId_ pIuDeviceId_ =
    InstallsUpdate'
    { _iuEnterpriseId = pIuEnterpriseId_
    , _iuPayload = pIuPayload_
    , _iuUserId = pIuUserId_
    , _iuInstallId = pIuInstallId_
    , _iuDeviceId = pIuDeviceId_
    }

-- | The ID of the enterprise.
iuEnterpriseId :: Lens' InstallsUpdate' Text
iuEnterpriseId
  = lens _iuEnterpriseId
      (\ s a -> s{_iuEnterpriseId = a})

-- | Multipart request metadata.
iuPayload :: Lens' InstallsUpdate' Install
iuPayload
  = lens _iuPayload (\ s a -> s{_iuPayload = a})

-- | The ID of the user.
iuUserId :: Lens' InstallsUpdate' Text
iuUserId = lens _iuUserId (\ s a -> s{_iuUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
iuInstallId :: Lens' InstallsUpdate' Text
iuInstallId
  = lens _iuInstallId (\ s a -> s{_iuInstallId = a})

-- | The Android ID of the device.
iuDeviceId :: Lens' InstallsUpdate' Text
iuDeviceId
  = lens _iuDeviceId (\ s a -> s{_iuDeviceId = a})

instance GoogleRequest InstallsUpdate' where
        type Rs InstallsUpdate' = Install
        requestClient InstallsUpdate'{..}
          = go _iuEnterpriseId _iuUserId _iuDeviceId
              _iuInstallId
              (Just AltJSON)
              _iuPayload
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsUpdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an installation of an app on a device.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsGet@.
module Network.Google.Resource.AndroidEnterprise.Installs.Get
    (
    -- * REST Resource
      InstallsGetResource

    -- * Creating a Request
    , installsGet'
    , InstallsGet'

    -- * Request Lenses
    , igEnterpriseId
    , igUserId
    , igInstallId
    , igDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsGet@ method which the
-- 'InstallsGet'' request conforms to.
type InstallsGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Install

-- | Retrieves details of an installation of an app on a device.
--
-- /See:/ 'installsGet'' smart constructor.
data InstallsGet' = InstallsGet'
    { _igEnterpriseId :: !Text
    , _igUserId       :: !Text
    , _igInstallId    :: !Text
    , _igDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igEnterpriseId'
--
-- * 'igUserId'
--
-- * 'igInstallId'
--
-- * 'igDeviceId'
installsGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsGet'
installsGet' pIgEnterpriseId_ pIgUserId_ pIgInstallId_ pIgDeviceId_ =
    InstallsGet'
    { _igEnterpriseId = pIgEnterpriseId_
    , _igUserId = pIgUserId_
    , _igInstallId = pIgInstallId_
    , _igDeviceId = pIgDeviceId_
    }

-- | The ID of the enterprise.
igEnterpriseId :: Lens' InstallsGet' Text
igEnterpriseId
  = lens _igEnterpriseId
      (\ s a -> s{_igEnterpriseId = a})

-- | The ID of the user.
igUserId :: Lens' InstallsGet' Text
igUserId = lens _igUserId (\ s a -> s{_igUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
igInstallId :: Lens' InstallsGet' Text
igInstallId
  = lens _igInstallId (\ s a -> s{_igInstallId = a})

-- | The Android ID of the device.
igDeviceId :: Lens' InstallsGet' Text
igDeviceId
  = lens _igDeviceId (\ s a -> s{_igDeviceId = a})

instance GoogleRequest InstallsGet' where
        type Rs InstallsGet' = Install
        requestClient InstallsGet'{..}
          = go _igEnterpriseId _igUserId _igDeviceId
              _igInstallId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.AndroidEnterprise.Installs.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseInstallsDelete@.
module Network.Google.Resource.AndroidEnterprise.Installs.Delete
    (
    -- * REST Resource
      InstallsDeleteResource

    -- * Creating a Request
    , installsDelete'
    , InstallsDelete'

    -- * Request Lenses
    , idEnterpriseId
    , idUserId
    , idInstallId
    , idDeviceId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseInstallsDelete@ method which the
-- 'InstallsDelete'' request conforms to.
type InstallsDeleteResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "devices" :>
               Capture "deviceId" Text :>
                 "installs" :>
                   Capture "installId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Requests to remove an app from a device. A call to get or list will
-- still show the app as installed on the device until it is actually
-- removed.
--
-- /See:/ 'installsDelete'' smart constructor.
data InstallsDelete' = InstallsDelete'
    { _idEnterpriseId :: !Text
    , _idUserId       :: !Text
    , _idInstallId    :: !Text
    , _idDeviceId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstallsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idEnterpriseId'
--
-- * 'idUserId'
--
-- * 'idInstallId'
--
-- * 'idDeviceId'
installsDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'installId'
    -> Text -- ^ 'deviceId'
    -> InstallsDelete'
installsDelete' pIdEnterpriseId_ pIdUserId_ pIdInstallId_ pIdDeviceId_ =
    InstallsDelete'
    { _idEnterpriseId = pIdEnterpriseId_
    , _idUserId = pIdUserId_
    , _idInstallId = pIdInstallId_
    , _idDeviceId = pIdDeviceId_
    }

-- | The ID of the enterprise.
idEnterpriseId :: Lens' InstallsDelete' Text
idEnterpriseId
  = lens _idEnterpriseId
      (\ s a -> s{_idEnterpriseId = a})

-- | The ID of the user.
idUserId :: Lens' InstallsDelete' Text
idUserId = lens _idUserId (\ s a -> s{_idUserId = a})

-- | The ID of the product represented by the install, e.g.
-- \"app:com.google.android.gm\".
idInstallId :: Lens' InstallsDelete' Text
idInstallId
  = lens _idInstallId (\ s a -> s{_idInstallId = a})

-- | The Android ID of the device.
idDeviceId :: Lens' InstallsDelete' Text
idDeviceId
  = lens _idDeviceId (\ s a -> s{_idDeviceId = a})

instance GoogleRequest InstallsDelete' where
        type Rs InstallsDelete' = ()
        requestClient InstallsDelete'{..}
          = go _idEnterpriseId _idUserId _idDeviceId
              _idInstallId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy InstallsDeleteResource)
                      mempty

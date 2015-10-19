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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve Mobile Device
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.mobiledevices.get@.
module Network.Google.Resource.Directory.MobileDevices.Get
    (
    -- * REST Resource
      MobileDevicesGetResource

    -- * Creating a Request
    , mobileDevicesGet'
    , MobileDevicesGet'

    -- * Request Lenses
    , mdgResourceId
    , mdgCustomerId
    , mdgProjection
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.mobiledevices.get@ method which the
-- 'MobileDevicesGet'' request conforms to.
type MobileDevicesGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "devices" :>
           "mobile" :>
             Capture "resourceId" Text :>
               QueryParam "projection" MobileDevicesGetProjection :>
                 QueryParam "alt" AltJSON :> Get '[JSON] MobileDevice

-- | Retrieve Mobile Device
--
-- /See:/ 'mobileDevicesGet'' smart constructor.
data MobileDevicesGet' = MobileDevicesGet'
    { _mdgResourceId :: !Text
    , _mdgCustomerId :: !Text
    , _mdgProjection :: !(Maybe MobileDevicesGetProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileDevicesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdgResourceId'
--
-- * 'mdgCustomerId'
--
-- * 'mdgProjection'
mobileDevicesGet'
    :: Text -- ^ 'mdgResourceId'
    -> Text -- ^ 'mdgCustomerId'
    -> MobileDevicesGet'
mobileDevicesGet' pMdgResourceId_ pMdgCustomerId_ =
    MobileDevicesGet'
    { _mdgResourceId = pMdgResourceId_
    , _mdgCustomerId = pMdgCustomerId_
    , _mdgProjection = Nothing
    }

-- | Immutable id of Mobile Device
mdgResourceId :: Lens' MobileDevicesGet' Text
mdgResourceId
  = lens _mdgResourceId
      (\ s a -> s{_mdgResourceId = a})

-- | Immutable id of the Google Apps account
mdgCustomerId :: Lens' MobileDevicesGet' Text
mdgCustomerId
  = lens _mdgCustomerId
      (\ s a -> s{_mdgCustomerId = a})

-- | Restrict information returned to a set of selected fields.
mdgProjection :: Lens' MobileDevicesGet' (Maybe MobileDevicesGetProjection)
mdgProjection
  = lens _mdgProjection
      (\ s a -> s{_mdgProjection = a})

instance GoogleRequest MobileDevicesGet' where
        type Rs MobileDevicesGet' = MobileDevice
        requestClient MobileDevicesGet'{..}
          = go _mdgCustomerId _mdgResourceId _mdgProjection
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdSenseHost.AdClients.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about one of the ad clients in the Host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.adclients.get@.
module Network.Google.Resource.AdSenseHost.AdClients.Get
    (
    -- * REST Resource
      AdClientsGetResource

    -- * Creating a Request
    , adClientsGet
    , AdClientsGet

    -- * Request Lenses
    , acgAdClientId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.adclients.get@ method which the
-- 'AdClientsGet' request conforms to.
type AdClientsGetResource =
     "adclients" :>
       Capture "adClientId" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] AdClient

-- | Get information about one of the ad clients in the Host AdSense account.
--
-- /See:/ 'adClientsGet' smart constructor.
newtype AdClientsGet = AdClientsGet
    { _acgAdClientId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdClientsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acgAdClientId'
adClientsGet
    :: Text -- ^ 'acgAdClientId'
    -> AdClientsGet
adClientsGet pAcgAdClientId_ =
    AdClientsGet
    { _acgAdClientId = pAcgAdClientId_
    }

-- | Ad client to get.
acgAdClientId :: Lens' AdClientsGet Text
acgAdClientId
  = lens _acgAdClientId
      (\ s a -> s{_acgAdClientId = a})

instance GoogleRequest AdClientsGet where
        type Rs AdClientsGet = AdClient
        requestClient AdClientsGet{..}
          = go _acgAdClientId (Just AltJSON) adSenseHostService
          where go
                  = buildClient (Proxy :: Proxy AdClientsGetResource)
                      mempty

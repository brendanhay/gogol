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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.get@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Get
    (
    -- * REST Resource
      CustomChannelsGetResource

    -- * Creating a Request
    , customChannelsGet
    , CustomChannelsGet

    -- * Request Lenses
    , ccgCustomChannelId
    , ccgAdClientId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.customchannels.get@ method which the
-- 'CustomChannelsGet' request conforms to.
type CustomChannelsGetResource =
     "adsensehost" :>
       "v4.1" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               Capture "customChannelId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] CustomChannel

-- | Get a specific custom channel from the host AdSense account.
--
-- /See:/ 'customChannelsGet' smart constructor.
data CustomChannelsGet = CustomChannelsGet
    { _ccgCustomChannelId :: !Text
    , _ccgAdClientId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgCustomChannelId'
--
-- * 'ccgAdClientId'
customChannelsGet
    :: Text -- ^ 'ccgCustomChannelId'
    -> Text -- ^ 'ccgAdClientId'
    -> CustomChannelsGet
customChannelsGet pCcgCustomChannelId_ pCcgAdClientId_ =
    CustomChannelsGet
    { _ccgCustomChannelId = pCcgCustomChannelId_
    , _ccgAdClientId = pCcgAdClientId_
    }

-- | Custom channel to get.
ccgCustomChannelId :: Lens' CustomChannelsGet Text
ccgCustomChannelId
  = lens _ccgCustomChannelId
      (\ s a -> s{_ccgCustomChannelId = a})

-- | Ad client from which to get the custom channel.
ccgAdClientId :: Lens' CustomChannelsGet Text
ccgAdClientId
  = lens _ccgAdClientId
      (\ s a -> s{_ccgAdClientId = a})

instance GoogleRequest CustomChannelsGet where
        type Rs CustomChannelsGet = CustomChannel
        requestClient CustomChannelsGet{..}
          = go _ccgAdClientId _ccgCustomChannelId
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.AdSense.CustomChannels.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified custom channel from the specified ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.customchannels.get@.
module Network.Google.Resource.AdSense.CustomChannels.Get
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

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.customchannels.get@ method which the
-- 'CustomChannelsGet' request conforms to.
type CustomChannelsGetResource =
     "adsense" :>
       "v1.4" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               Capture "customChannelId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] CustomChannel

-- | Get the specified custom channel from the specified ad client.
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

-- | Custom channel to retrieve.
ccgCustomChannelId :: Lens' CustomChannelsGet Text
ccgCustomChannelId
  = lens _ccgCustomChannelId
      (\ s a -> s{_ccgCustomChannelId = a})

-- | Ad client which contains the custom channel.
ccgAdClientId :: Lens' CustomChannelsGet Text
ccgAdClientId
  = lens _ccgAdClientId
      (\ s a -> s{_ccgAdClientId = a})

instance GoogleRequest CustomChannelsGet where
        type Rs CustomChannelsGet = CustomChannel
        type Scopes CustomChannelsGet =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient CustomChannelsGet{..}
          = go _ccgAdClientId _ccgCustomChannelId
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsGetResource)
                      mempty

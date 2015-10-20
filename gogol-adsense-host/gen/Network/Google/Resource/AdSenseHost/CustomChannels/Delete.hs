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
-- Module      : Network.Google.Resource.AdSenseHost.CustomChannels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a specific custom channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.customchannels.delete@.
module Network.Google.Resource.AdSenseHost.CustomChannels.Delete
    (
    -- * REST Resource
      CustomChannelsDeleteResource

    -- * Creating a Request
    , customChannelsDelete
    , CustomChannelsDelete

    -- * Request Lenses
    , ccdCustomChannelId
    , ccdAdClientId
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @adsensehost.customchannels.delete@ method which the
-- 'CustomChannelsDelete' request conforms to.
type CustomChannelsDeleteResource =
     "adclients" :>
       Capture "adClientId" Text :>
         "customchannels" :>
           Capture "customChannelId" Text :>
             QueryParam "alt" AltJSON :>
               Delete '[JSON] CustomChannel

-- | Delete a specific custom channel from the host AdSense account.
--
-- /See:/ 'customChannelsDelete' smart constructor.
data CustomChannelsDelete = CustomChannelsDelete
    { _ccdCustomChannelId :: !Text
    , _ccdAdClientId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomChannelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdCustomChannelId'
--
-- * 'ccdAdClientId'
customChannelsDelete
    :: Text -- ^ 'ccdCustomChannelId'
    -> Text -- ^ 'ccdAdClientId'
    -> CustomChannelsDelete
customChannelsDelete pCcdCustomChannelId_ pCcdAdClientId_ =
    CustomChannelsDelete
    { _ccdCustomChannelId = pCcdCustomChannelId_
    , _ccdAdClientId = pCcdAdClientId_
    }

-- | Custom channel to delete.
ccdCustomChannelId :: Lens' CustomChannelsDelete Text
ccdCustomChannelId
  = lens _ccdCustomChannelId
      (\ s a -> s{_ccdCustomChannelId = a})

-- | Ad client from which to delete the custom channel.
ccdAdClientId :: Lens' CustomChannelsDelete Text
ccdAdClientId
  = lens _ccdAdClientId
      (\ s a -> s{_ccdAdClientId = a})

instance GoogleRequest CustomChannelsDelete where
        type Rs CustomChannelsDelete = CustomChannel
        requestClient CustomChannelsDelete{..}
          = go _ccdAdClientId _ccdCustomChannelId
              (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomChannelsDeleteResource)
                      mempty

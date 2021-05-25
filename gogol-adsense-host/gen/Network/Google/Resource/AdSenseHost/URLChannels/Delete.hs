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
-- Module      : Network.Google.Resource.AdSenseHost.URLChannels.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a URL channel from the host AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.urlchannels.delete@.
module Network.Google.Resource.AdSenseHost.URLChannels.Delete
    (
    -- * REST Resource
      URLChannelsDeleteResource

    -- * Creating a Request
    , urlChannelsDelete
    , URLChannelsDelete

    -- * Request Lenses
    , ucdURLChannelId
    , ucdAdClientId
    ) where

import Network.Google.AdSenseHost.Types
import Network.Google.Prelude

-- | A resource alias for @adsensehost.urlchannels.delete@ method which the
-- 'URLChannelsDelete' request conforms to.
type URLChannelsDeleteResource =
     "adsensehost" :>
       "v4.1" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "urlchannels" :>
               Capture "urlChannelId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] URLChannel

-- | Delete a URL channel from the host AdSense account.
--
-- /See:/ 'urlChannelsDelete' smart constructor.
data URLChannelsDelete =
  URLChannelsDelete'
    { _ucdURLChannelId :: !Text
    , _ucdAdClientId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLChannelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucdURLChannelId'
--
-- * 'ucdAdClientId'
urlChannelsDelete
    :: Text -- ^ 'ucdURLChannelId'
    -> Text -- ^ 'ucdAdClientId'
    -> URLChannelsDelete
urlChannelsDelete pUcdURLChannelId_ pUcdAdClientId_ =
  URLChannelsDelete'
    {_ucdURLChannelId = pUcdURLChannelId_, _ucdAdClientId = pUcdAdClientId_}


-- | URL channel to delete.
ucdURLChannelId :: Lens' URLChannelsDelete Text
ucdURLChannelId
  = lens _ucdURLChannelId
      (\ s a -> s{_ucdURLChannelId = a})

-- | Ad client from which to delete the URL channel.
ucdAdClientId :: Lens' URLChannelsDelete Text
ucdAdClientId
  = lens _ucdAdClientId
      (\ s a -> s{_ucdAdClientId = a})

instance GoogleRequest URLChannelsDelete where
        type Rs URLChannelsDelete = URLChannel
        type Scopes URLChannelsDelete =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient URLChannelsDelete'{..}
          = go _ucdAdClientId _ucdURLChannelId (Just AltJSON)
              adSenseHostService
          where go
                  = buildClient
                      (Proxy :: Proxy URLChannelsDeleteResource)
                      mempty

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
-- Module      : Network.Google.Resource.YouTube.Watermarks.Unset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a channel\'s watermark image.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeWatermarksUnset@.
module Network.Google.Resource.YouTube.Watermarks.Unset
    (
    -- * REST Resource
      WatermarksUnsetResource

    -- * Creating a Request
    , watermarksUnset'
    , WatermarksUnset'

    -- * Request Lenses
    , wuChannelId
    , wuOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeWatermarksUnset@ method which the
-- 'WatermarksUnset'' request conforms to.
type WatermarksUnsetResource =
     "watermarks" :>
       "unset" :>
         QueryParam "channelId" Text :>
           QueryParam "onBehalfOfContentOwner" Text :>
             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Deletes a channel\'s watermark image.
--
-- /See:/ 'watermarksUnset'' smart constructor.
data WatermarksUnset' = WatermarksUnset'
    { _wuChannelId              :: !Text
    , _wuOnBehalfOfContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatermarksUnset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wuChannelId'
--
-- * 'wuOnBehalfOfContentOwner'
watermarksUnset'
    :: Text -- ^ 'channelId'
    -> WatermarksUnset'
watermarksUnset' pWuChannelId_ =
    WatermarksUnset'
    { _wuChannelId = pWuChannelId_
    , _wuOnBehalfOfContentOwner = Nothing
    }

-- | The channelId parameter specifies the YouTube channel ID for which the
-- watermark is being unset.
wuChannelId :: Lens' WatermarksUnset' Text
wuChannelId
  = lens _wuChannelId (\ s a -> s{_wuChannelId = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
wuOnBehalfOfContentOwner :: Lens' WatermarksUnset' (Maybe Text)
wuOnBehalfOfContentOwner
  = lens _wuOnBehalfOfContentOwner
      (\ s a -> s{_wuOnBehalfOfContentOwner = a})

instance GoogleRequest WatermarksUnset' where
        type Rs WatermarksUnset' = ()
        requestClient WatermarksUnset'{..}
          = go (Just _wuChannelId) _wuOnBehalfOfContentOwner
              (Just AltJSON)
              youTube
          where go
                  = buildClient
                      (Proxy :: Proxy WatermarksUnsetResource)
                      mempty

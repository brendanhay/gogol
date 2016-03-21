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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a channelSection for the authenticated user\'s channel.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.channelSections.insert@.
module Network.Google.Resource.YouTube.ChannelSections.Insert
    (
    -- * REST Resource
      ChannelSectionsInsertResource

    -- * Creating a Request
    , channelSectionsInsert
    , ChannelSectionsInsert

    -- * Request Lenses
    , csiPart
    , csiPayload
    , csiOnBehalfOfContentOwner
    , csiOnBehalfOfContentOwnerChannel
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.insert@ method which the
-- 'ChannelSectionsInsert' request conforms to.
type ChannelSectionsInsertResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "onBehalfOfContentOwnerChannel" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ChannelSection :>
                     Post '[JSON] ChannelSection

-- | Adds a channelSection for the authenticated user\'s channel.
--
-- /See:/ 'channelSectionsInsert' smart constructor.
data ChannelSectionsInsert = ChannelSectionsInsert'
    { _csiPart                          :: !Text
    , _csiPayload                       :: !ChannelSection
    , _csiOnBehalfOfContentOwner        :: !(Maybe Text)
    , _csiOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csiPart'
--
-- * 'csiPayload'
--
-- * 'csiOnBehalfOfContentOwner'
--
-- * 'csiOnBehalfOfContentOwnerChannel'
channelSectionsInsert
    :: Text -- ^ 'csiPart'
    -> ChannelSection -- ^ 'csiPayload'
    -> ChannelSectionsInsert
channelSectionsInsert pCsiPart_ pCsiPayload_ =
    ChannelSectionsInsert'
    { _csiPart = pCsiPart_
    , _csiPayload = pCsiPayload_
    , _csiOnBehalfOfContentOwner = Nothing
    , _csiOnBehalfOfContentOwnerChannel = Nothing
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part names that you
-- can include in the parameter value are snippet and contentDetails.
csiPart :: Lens' ChannelSectionsInsert Text
csiPart = lens _csiPart (\ s a -> s{_csiPart = a})

-- | Multipart request metadata.
csiPayload :: Lens' ChannelSectionsInsert ChannelSection
csiPayload
  = lens _csiPayload (\ s a -> s{_csiPayload = a})

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
csiOnBehalfOfContentOwner :: Lens' ChannelSectionsInsert (Maybe Text)
csiOnBehalfOfContentOwner
  = lens _csiOnBehalfOfContentOwner
      (\ s a -> s{_csiOnBehalfOfContentOwner = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
csiOnBehalfOfContentOwnerChannel :: Lens' ChannelSectionsInsert (Maybe Text)
csiOnBehalfOfContentOwnerChannel
  = lens _csiOnBehalfOfContentOwnerChannel
      (\ s a -> s{_csiOnBehalfOfContentOwnerChannel = a})

instance GoogleRequest ChannelSectionsInsert where
        type Rs ChannelSectionsInsert = ChannelSection
        type Scopes ChannelSectionsInsert =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsInsert'{..}
          = go (Just _csiPart) _csiOnBehalfOfContentOwner
              _csiOnBehalfOfContentOwnerChannel
              (Just AltJSON)
              _csiPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsInsertResource)
                      mempty

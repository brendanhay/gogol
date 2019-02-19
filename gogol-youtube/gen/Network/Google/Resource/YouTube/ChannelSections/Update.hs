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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a channelSection.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.channelSections.update@.
module Network.Google.Resource.YouTube.ChannelSections.Update
    (
    -- * REST Resource
      ChannelSectionsUpdateResource

    -- * Creating a Request
    , channelSectionsUpdate
    , ChannelSectionsUpdate

    -- * Request Lenses
    , csuPart
    , csuPayload
    , csuOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.update@ method which the
-- 'ChannelSectionsUpdate' request conforms to.
type ChannelSectionsUpdateResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParam "part" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ChannelSection :>
                   Put '[JSON] ChannelSection

-- | Update a channelSection.
--
-- /See:/ 'channelSectionsUpdate' smart constructor.
data ChannelSectionsUpdate =
  ChannelSectionsUpdate'
    { _csuPart                   :: !Text
    , _csuPayload                :: !ChannelSection
    , _csuOnBehalfOfContentOwner :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChannelSectionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csuPart'
--
-- * 'csuPayload'
--
-- * 'csuOnBehalfOfContentOwner'
channelSectionsUpdate
    :: Text -- ^ 'csuPart'
    -> ChannelSection -- ^ 'csuPayload'
    -> ChannelSectionsUpdate
channelSectionsUpdate pCsuPart_ pCsuPayload_ =
  ChannelSectionsUpdate'
    { _csuPart = pCsuPart_
    , _csuPayload = pCsuPayload_
    , _csuOnBehalfOfContentOwner = Nothing
    }

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include. The part names that you
-- can include in the parameter value are snippet and contentDetails.
csuPart :: Lens' ChannelSectionsUpdate Text
csuPart = lens _csuPart (\ s a -> s{_csuPart = a})

-- | Multipart request metadata.
csuPayload :: Lens' ChannelSectionsUpdate ChannelSection
csuPayload
  = lens _csuPayload (\ s a -> s{_csuPayload = a})

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
csuOnBehalfOfContentOwner :: Lens' ChannelSectionsUpdate (Maybe Text)
csuOnBehalfOfContentOwner
  = lens _csuOnBehalfOfContentOwner
      (\ s a -> s{_csuOnBehalfOfContentOwner = a})

instance GoogleRequest ChannelSectionsUpdate where
        type Rs ChannelSectionsUpdate = ChannelSection
        type Scopes ChannelSectionsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsUpdate'{..}
          = go (Just _csuPart) _csuOnBehalfOfContentOwner
              (Just AltJSON)
              _csuPayload
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsUpdateResource)
                      mempty

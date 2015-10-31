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
-- Module      : Network.Google.Resource.YouTube.ChannelSections.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a channelSection.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.channelSections.delete@.
module Network.Google.Resource.YouTube.ChannelSections.Delete
    (
    -- * REST Resource
      ChannelSectionsDeleteResource

    -- * Creating a Request
    , channelSectionsDelete
    , ChannelSectionsDelete

    -- * Request Lenses
    , csdOnBehalfOfContentOwner
    , csdId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.channelSections.delete@ method which the
-- 'ChannelSectionsDelete' request conforms to.
type ChannelSectionsDeleteResource =
     "youtube" :>
       "v3" :>
         "channelSections" :>
           QueryParam "id" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a channelSection.
--
-- /See:/ 'channelSectionsDelete' smart constructor.
data ChannelSectionsDelete = ChannelSectionsDelete
    { _csdOnBehalfOfContentOwner :: !(Maybe Text)
    , _csdId                     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdOnBehalfOfContentOwner'
--
-- * 'csdId'
channelSectionsDelete
    :: Text -- ^ 'csdId'
    -> ChannelSectionsDelete
channelSectionsDelete pCsdId_ =
    ChannelSectionsDelete
    { _csdOnBehalfOfContentOwner = Nothing
    , _csdId = pCsdId_
    }

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
csdOnBehalfOfContentOwner :: Lens' ChannelSectionsDelete (Maybe Text)
csdOnBehalfOfContentOwner
  = lens _csdOnBehalfOfContentOwner
      (\ s a -> s{_csdOnBehalfOfContentOwner = a})

-- | The id parameter specifies the YouTube channelSection ID for the
-- resource that is being deleted. In a channelSection resource, the id
-- property specifies the YouTube channelSection ID.
csdId :: Lens' ChannelSectionsDelete Text
csdId = lens _csdId (\ s a -> s{_csdId = a})

instance GoogleRequest ChannelSectionsDelete where
        type Rs ChannelSectionsDelete = ()
        type Scopes ChannelSectionsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient ChannelSectionsDelete{..}
          = go (Just _csdId) _csdOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy ChannelSectionsDeleteResource)
                      mempty

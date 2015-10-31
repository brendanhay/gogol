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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an item from a group.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.delete@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.Delete
    (
    -- * REST Resource
      GroupItemsDeleteResource

    -- * Creating a Request
    , groupItemsDelete
    , GroupItemsDelete

    -- * Request Lenses
    , gidOnBehalfOfContentOwner
    , gidId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.delete@ method which the
-- 'GroupItemsDelete' request conforms to.
type GroupItemsDeleteResource =
     "youtube" :>
       "analytics" :>
         "v1" :>
           "groupItems" :>
             QueryParam "id" Text :>
               QueryParam "onBehalfOfContentOwner" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an item from a group.
--
-- /See:/ 'groupItemsDelete' smart constructor.
data GroupItemsDelete = GroupItemsDelete
    { _gidOnBehalfOfContentOwner :: !(Maybe Text)
    , _gidId                     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gidOnBehalfOfContentOwner'
--
-- * 'gidId'
groupItemsDelete
    :: Text -- ^ 'gidId'
    -> GroupItemsDelete
groupItemsDelete pGidId_ =
    GroupItemsDelete
    { _gidOnBehalfOfContentOwner = Nothing
    , _gidId = pGidId_
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
gidOnBehalfOfContentOwner :: Lens' GroupItemsDelete (Maybe Text)
gidOnBehalfOfContentOwner
  = lens _gidOnBehalfOfContentOwner
      (\ s a -> s{_gidOnBehalfOfContentOwner = a})

-- | The id parameter specifies the YouTube group item ID for the group that
-- is being deleted.
gidId :: Lens' GroupItemsDelete Text
gidId = lens _gidId (\ s a -> s{_gidId = a})

instance GoogleRequest GroupItemsDelete where
        type Rs GroupItemsDelete = ()
        type Scopes GroupItemsDelete =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient GroupItemsDelete{..}
          = go (Just _gidId) _gidOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupItemsDeleteResource)
                      mempty

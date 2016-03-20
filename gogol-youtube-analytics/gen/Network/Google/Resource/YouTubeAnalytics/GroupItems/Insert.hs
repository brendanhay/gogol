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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a group item.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groupItems.insert@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.Insert
    (
    -- * REST Resource
      GroupItemsInsertResource

    -- * Creating a Request
    , groupItemsInsert
    , GroupItemsInsert

    -- * Request Lenses
    , giiPayload
    , giiOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groupItems.insert@ method which the
-- 'GroupItemsInsert' request conforms to.
type GroupItemsInsertResource =
     "youtube" :>
       "analytics" :>
         "v1" :>
           "groupItems" :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] GroupItem :> Post '[JSON] GroupItem

-- | Creates a group item.
--
-- /See:/ 'groupItemsInsert' smart constructor.
data GroupItemsInsert = GroupItemsInsert
    { _giiPayload                :: !GroupItem
    , _giiOnBehalfOfContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giiPayload'
--
-- * 'giiOnBehalfOfContentOwner'
groupItemsInsert
    :: GroupItem -- ^ 'giiPayload'
    -> GroupItemsInsert
groupItemsInsert pGiiPayload_ =
    GroupItemsInsert
    { _giiPayload = pGiiPayload_
    , _giiOnBehalfOfContentOwner = Nothing
    }

-- | Multipart request metadata.
giiPayload :: Lens' GroupItemsInsert GroupItem
giiPayload
  = lens _giiPayload (\ s a -> s{_giiPayload = a})

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
giiOnBehalfOfContentOwner :: Lens' GroupItemsInsert (Maybe Text)
giiOnBehalfOfContentOwner
  = lens _giiOnBehalfOfContentOwner
      (\ s a -> s{_giiOnBehalfOfContentOwner = a})

instance GoogleRequest GroupItemsInsert where
        type Rs GroupItemsInsert = GroupItem
        requestClient GroupItemsInsert{..}
          = go _giiOnBehalfOfContentOwner (Just AltJSON)
              _giiPayload
              youTubeAnalyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy GroupItemsInsertResource)
                      mempty

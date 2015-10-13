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
-- Module      : Network.Google.Resource.YouTubeAnalytics.GroupItems.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupItemsList@.
module Network.Google.Resource.YouTubeAnalytics.GroupItems.List
    (
    -- * REST Resource
      GroupItemsListResource

    -- * Creating a Request
    , groupItemsList'
    , GroupItemsList'

    -- * Request Lenses
    , gilOnBehalfOfContentOwner
    , gilGroupId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupItemsList@ method which the
-- 'GroupItemsList'' request conforms to.
type GroupItemsListResource =
     "groupItems" :>
       QueryParam "groupId" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] GroupItemListResponse

-- | Returns a collection of group items that match the API request
-- parameters.
--
-- /See:/ 'groupItemsList'' smart constructor.
data GroupItemsList' = GroupItemsList'
    { _gilOnBehalfOfContentOwner :: !(Maybe Text)
    , _gilGroupId                :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gilOnBehalfOfContentOwner'
--
-- * 'gilGroupId'
groupItemsList'
    :: Text -- ^ 'groupId'
    -> GroupItemsList'
groupItemsList' pGilGroupId_ =
    GroupItemsList'
    { _gilOnBehalfOfContentOwner = Nothing
    , _gilGroupId = pGilGroupId_
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
gilOnBehalfOfContentOwner :: Lens' GroupItemsList' (Maybe Text)
gilOnBehalfOfContentOwner
  = lens _gilOnBehalfOfContentOwner
      (\ s a -> s{_gilOnBehalfOfContentOwner = a})

-- | The id parameter specifies the unique ID of the group for which you want
-- to retrieve group items.
gilGroupId :: Lens' GroupItemsList' Text
gilGroupId
  = lens _gilGroupId (\ s a -> s{_gilGroupId = a})

instance GoogleRequest GroupItemsList' where
        type Rs GroupItemsList' = GroupItemListResponse
        requestClient GroupItemsList'{..}
          = go (Just _gilGroupId) _gilOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupItemsListResource)
                      mempty

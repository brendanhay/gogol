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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a group.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupsDelete@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Delete
    (
    -- * REST Resource
      GroupsDeleteResource

    -- * Creating a Request
    , groupsDelete'
    , GroupsDelete'

    -- * Request Lenses
    , gdOnBehalfOfContentOwner
    , gdId
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupsDelete@ method which the
-- 'GroupsDelete'' request conforms to.
type GroupsDeleteResource =
     "groups" :>
       QueryParam "id" Text :>
         QueryParam "onBehalfOfContentOwner" Text :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a group.
--
-- /See:/ 'groupsDelete'' smart constructor.
data GroupsDelete' = GroupsDelete'
    { _gdOnBehalfOfContentOwner :: !(Maybe Text)
    , _gdId                     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdOnBehalfOfContentOwner'
--
-- * 'gdId'
groupsDelete'
    :: Text -- ^ 'id'
    -> GroupsDelete'
groupsDelete' pGdId_ =
    GroupsDelete'
    { _gdOnBehalfOfContentOwner = Nothing
    , _gdId = pGdId_
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
gdOnBehalfOfContentOwner :: Lens' GroupsDelete' (Maybe Text)
gdOnBehalfOfContentOwner
  = lens _gdOnBehalfOfContentOwner
      (\ s a -> s{_gdOnBehalfOfContentOwner = a})

-- | The id parameter specifies the YouTube group ID for the group that is
-- being deleted.
gdId :: Lens' GroupsDelete' Text
gdId = lens _gdId (\ s a -> s{_gdId = a})

instance GoogleRequest GroupsDelete' where
        type Rs GroupsDelete' = ()
        requestClient GroupsDelete'{..}
          = go (Just _gdId) _gdOnBehalfOfContentOwner
              (Just AltJSON)
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsDeleteResource)
                      mempty

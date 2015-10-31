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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @youtubeAnalytics.groups.update@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate
    , GroupsUpdate

    -- * Request Lenses
    , guPayload
    , guOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @youtubeAnalytics.groups.update@ method which the
-- 'GroupsUpdate' request conforms to.
type GroupsUpdateResource =
     "youtube" :>
       "analytics" :>
         "v1" :>
           "groups" :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Modifies a group. For example, you could change a group\'s title.
--
-- /See:/ 'groupsUpdate' smart constructor.
data GroupsUpdate = GroupsUpdate
    { _guPayload                :: !Group
    , _guOnBehalfOfContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guPayload'
--
-- * 'guOnBehalfOfContentOwner'
groupsUpdate
    :: Group -- ^ 'guPayload'
    -> GroupsUpdate
groupsUpdate pGuPayload_ =
    GroupsUpdate
    { _guPayload = pGuPayload_
    , _guOnBehalfOfContentOwner = Nothing
    }

-- | Multipart request metadata.
guPayload :: Lens' GroupsUpdate Group
guPayload
  = lens _guPayload (\ s a -> s{_guPayload = a})

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
guOnBehalfOfContentOwner :: Lens' GroupsUpdate (Maybe Text)
guOnBehalfOfContentOwner
  = lens _guOnBehalfOfContentOwner
      (\ s a -> s{_guOnBehalfOfContentOwner = a})

instance GoogleRequest GroupsUpdate where
        type Rs GroupsUpdate = Group
        type Scopes GroupsUpdate =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient GroupsUpdate{..}
          = go _guOnBehalfOfContentOwner (Just AltJSON)
              _guPayload
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsUpdateResource)
                      mempty

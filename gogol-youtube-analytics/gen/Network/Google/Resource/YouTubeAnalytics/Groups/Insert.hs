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
-- Module      : Network.Google.Resource.YouTubeAnalytics.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a group.
--
-- /See:/ <http://developers.google.com/youtube/analytics/ YouTube Analytics API Reference> for @YouTubeAnalyticsGroupsInsert@.
module Network.Google.Resource.YouTubeAnalytics.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert'
    , GroupsInsert'

    -- * Request Lenses
    , giPayload
    , giOnBehalfOfContentOwner
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types

-- | A resource alias for @YouTubeAnalyticsGroupsInsert@ method which the
-- 'GroupsInsert'' request conforms to.
type GroupsInsertResource =
     "groups" :>
       QueryParam "onBehalfOfContentOwner" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Group :> Post '[JSON] Group

-- | Creates a group.
--
-- /See:/ 'groupsInsert'' smart constructor.
data GroupsInsert' = GroupsInsert'
    { _giPayload                :: !Group
    , _giOnBehalfOfContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giPayload'
--
-- * 'giOnBehalfOfContentOwner'
groupsInsert'
    :: Group -- ^ 'payload'
    -> GroupsInsert'
groupsInsert' pGiPayload_ =
    GroupsInsert'
    { _giPayload = pGiPayload_
    , _giOnBehalfOfContentOwner = Nothing
    }

-- | Multipart request metadata.
giPayload :: Lens' GroupsInsert' Group
giPayload
  = lens _giPayload (\ s a -> s{_giPayload = a})

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
giOnBehalfOfContentOwner :: Lens' GroupsInsert' (Maybe Text)
giOnBehalfOfContentOwner
  = lens _giOnBehalfOfContentOwner
      (\ s a -> s{_giOnBehalfOfContentOwner = a})

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Group
        requestClient GroupsInsert'{..}
          = go _giOnBehalfOfContentOwner (Just AltJSON)
              _giPayload
              youTubeAnalyticsService
          where go
                  = buildClient (Proxy :: Proxy GroupsInsertResource)
                      mempty

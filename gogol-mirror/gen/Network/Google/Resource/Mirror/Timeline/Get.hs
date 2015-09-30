{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Timeline.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a single timeline item by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineGet@.
module Network.Google.Resource.Mirror.Timeline.Get
    (
    -- * REST Resource
      TimelineGetResource

    -- * Creating a Request
    , timelineGet'
    , TimelineGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgId
    , tgOauthToken
    , tgFields
    , tgAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineGet@ which the
-- 'TimelineGet'' request conforms to.
type TimelineGetResource =
     "timeline" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] TimelineItem

-- | Gets a single timeline item by ID.
--
-- /See:/ 'timelineGet'' smart constructor.
data TimelineGet' = TimelineGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgId          :: !Text
    , _tgOauthToken  :: !(Maybe Text)
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgId'
--
-- * 'tgOauthToken'
--
-- * 'tgFields'
--
-- * 'tgAlt'
timelineGet'
    :: Text -- ^ 'id'
    -> TimelineGet'
timelineGet' pTgId_ =
    TimelineGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgId = pTgId_
    , _tgOauthToken = Nothing
    , _tgFields = Nothing
    , _tgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TimelineGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TimelineGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TimelineGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TimelineGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | The ID of the timeline item.
tgId :: Lens' TimelineGet' Text
tgId = lens _tgId (\ s a -> s{_tgId = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TimelineGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TimelineGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TimelineGet' Alt
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TimelineGet' where
        type Rs TimelineGet' = TimelineItem
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineGet'{..}
          = go _tgQuotaUser (Just _tgPrettyPrint) _tgUserIp
              _tgKey
              _tgId
              _tgOauthToken
              _tgFields
              (Just _tgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineGetResource)
                      r
                      u

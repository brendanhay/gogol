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
-- Module      : Network.Google.Resource.Mirror.Timeline.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new item into the timeline.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineInsert@.
module Network.Google.Resource.Mirror.Timeline.Insert
    (
    -- * REST Resource
      TimelineInsertResource

    -- * Creating a Request
    , timelineInsert'
    , TimelineInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIp
    , tiKey
    , tiOauthToken
    , tiFields
    , tiAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineInsert@ which the
-- 'TimelineInsert'' request conforms to.
type TimelineInsertResource =
     "timeline" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] TimelineItem

-- | Inserts a new item into the timeline.
--
-- /See:/ 'timelineInsert'' smart constructor.
data TimelineInsert' = TimelineInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiOauthToken  :: !(Maybe Text)
    , _tiFields      :: !(Maybe Text)
    , _tiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiOauthToken'
--
-- * 'tiFields'
--
-- * 'tiAlt'
timelineInsert'
    :: TimelineInsert'
timelineInsert' =
    TimelineInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiOauthToken = Nothing
    , _tiFields = Nothing
    , _tiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TimelineInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TimelineInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIp :: Lens' TimelineInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TimelineInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TimelineInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TimelineInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Data format for the response.
tiAlt :: Lens' TimelineInsert' Alt
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TimelineInsert' where
        type Rs TimelineInsert' = TimelineItem
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiUserIp
              _tiKey
              _tiOauthToken
              _tiFields
              (Just _tiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineInsertResource)
                      r
                      u

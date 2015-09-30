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
-- Module      : Network.Google.Resource.Mirror.Timeline.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a timeline item in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineUpdate@.
module Network.Google.Resource.Mirror.Timeline.Update
    (
    -- * REST Resource
      TimelineUpdateResource

    -- * Creating a Request
    , timelineUpdate'
    , TimelineUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIp
    , tuKey
    , tuId
    , tuOauthToken
    , tuFields
    , tuAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineUpdate@ which the
-- 'TimelineUpdate'' request conforms to.
type TimelineUpdateResource =
     "timeline" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Put '[JSON] TimelineItem

-- | Updates a timeline item in place.
--
-- /See:/ 'timelineUpdate'' smart constructor.
data TimelineUpdate' = TimelineUpdate'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuUserIp      :: !(Maybe Text)
    , _tuKey         :: !(Maybe Text)
    , _tuId          :: !Text
    , _tuOauthToken  :: !(Maybe Text)
    , _tuFields      :: !(Maybe Text)
    , _tuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuId'
--
-- * 'tuOauthToken'
--
-- * 'tuFields'
--
-- * 'tuAlt'
timelineUpdate'
    :: Text -- ^ 'id'
    -> TimelineUpdate'
timelineUpdate' pTuId_ =
    TimelineUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuId = pTuId_
    , _tuOauthToken = Nothing
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TimelineUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TimelineUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TimelineUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TimelineUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | The ID of the timeline item.
tuId :: Lens' TimelineUpdate' Text
tuId = lens _tuId (\ s a -> s{_tuId = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TimelineUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TimelineUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TimelineUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TimelineUpdate' where
        type Rs TimelineUpdate' = TimelineItem
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIp
              _tuKey
              _tuId
              _tuOauthToken
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineUpdateResource)
                      r
                      u

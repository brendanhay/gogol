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
-- Module      : Network.Google.Resource.Mirror.Timeline.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineDelete@.
module Network.Google.Resource.Mirror.Timeline.Delete
    (
    -- * REST Resource
      TimelineDeleteResource

    -- * Creating a Request
    , timelineDelete'
    , TimelineDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdId
    , tdOauthToken
    , tdFields
    , tdAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineDelete@ which the
-- 'TimelineDelete'' request conforms to.
type TimelineDeleteResource =
     "timeline" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a timeline item.
--
-- /See:/ 'timelineDelete'' smart constructor.
data TimelineDelete' = TimelineDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdId          :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdId'
--
-- * 'tdOauthToken'
--
-- * 'tdFields'
--
-- * 'tdAlt'
timelineDelete'
    :: Text -- ^ 'id'
    -> TimelineDelete'
timelineDelete' pTdId_ =
    TimelineDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdId = pTdId_
    , _tdOauthToken = Nothing
    , _tdFields = Nothing
    , _tdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TimelineDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TimelineDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TimelineDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TimelineDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | The ID of the timeline item.
tdId :: Lens' TimelineDelete' Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TimelineDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TimelineDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TimelineDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TimelineDelete' where
        type Rs TimelineDelete' = ()
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineDelete'{..}
          = go _tdQuotaUser (Just _tdPrettyPrint) _tdUserIp
              _tdKey
              _tdId
              _tdOauthToken
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineDeleteResource)
                      r
                      u

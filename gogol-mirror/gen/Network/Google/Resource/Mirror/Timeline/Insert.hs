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
    , tiUserIP
    , tiMedia
    , tiKey
    , tiOAuthToken
    , tiTimelineItem
    , tiFields
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
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     MultipartRelated '[JSON] TimelineItem Body :>
                       Post '[JSON] TimelineItem

-- | Inserts a new item into the timeline.
--
-- /See:/ 'timelineInsert'' smart constructor.
data TimelineInsert' = TimelineInsert'
    { _tiQuotaUser    :: !(Maybe Text)
    , _tiPrettyPrint  :: !Bool
    , _tiUserIP       :: !(Maybe Text)
    , _tiMedia        :: !Body
    , _tiKey          :: !(Maybe Key)
    , _tiOAuthToken   :: !(Maybe OAuthToken)
    , _tiTimelineItem :: !TimelineItem
    , _tiFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIP'
--
-- * 'tiMedia'
--
-- * 'tiKey'
--
-- * 'tiOAuthToken'
--
-- * 'tiTimelineItem'
--
-- * 'tiFields'
timelineInsert'
    :: Body -- ^ 'media'
    -> TimelineItem -- ^ 'TimelineItem'
    -> TimelineInsert'
timelineInsert' pTiMedia_ pTiTimelineItem_ =
    TimelineInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIP = Nothing
    , _tiMedia = pTiMedia_
    , _tiKey = Nothing
    , _tiOAuthToken = Nothing
    , _tiTimelineItem = pTiTimelineItem_
    , _tiFields = Nothing
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
tiUserIP :: Lens' TimelineInsert' (Maybe Text)
tiUserIP = lens _tiUserIP (\ s a -> s{_tiUserIP = a})

tiMedia :: Lens' TimelineInsert' Body
tiMedia = lens _tiMedia (\ s a -> s{_tiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TimelineInsert' (Maybe Key)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TimelineInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Multipart request metadata.
tiTimelineItem :: Lens' TimelineInsert' TimelineItem
tiTimelineItem
  = lens _tiTimelineItem
      (\ s a -> s{_tiTimelineItem = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TimelineInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

instance GoogleAuth TimelineInsert' where
        authKey = tiKey . _Just
        authToken = tiOAuthToken . _Just

instance GoogleRequest TimelineInsert' where
        type Rs TimelineInsert' = TimelineItem
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineInsert'{..}
          = go _tiMedia _tiQuotaUser (Just _tiPrettyPrint)
              _tiUserIP
              _tiFields
              _tiKey
              _tiOAuthToken
              (Just AltJSON)
              _tiTimelineItem
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineInsertResource)
                      r
                      u

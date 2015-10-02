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
    , tuUserIP
    , tuMedia
    , tuKey
    , tuId
    , tuOAuthToken
    , tuTimelineItem
    , tuFields
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
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       MultipartRelated '[JSON] TimelineItem Body :>
                         Put '[JSON] TimelineItem

-- | Updates a timeline item in place.
--
-- /See:/ 'timelineUpdate'' smart constructor.
data TimelineUpdate' = TimelineUpdate'
    { _tuQuotaUser    :: !(Maybe Text)
    , _tuPrettyPrint  :: !Bool
    , _tuUserIP       :: !(Maybe Text)
    , _tuMedia        :: !Body
    , _tuKey          :: !(Maybe Key)
    , _tuId           :: !Text
    , _tuOAuthToken   :: !(Maybe OAuthToken)
    , _tuTimelineItem :: !TimelineItem
    , _tuFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIP'
--
-- * 'tuMedia'
--
-- * 'tuKey'
--
-- * 'tuId'
--
-- * 'tuOAuthToken'
--
-- * 'tuTimelineItem'
--
-- * 'tuFields'
timelineUpdate'
    :: Body -- ^ 'media'
    -> Text -- ^ 'id'
    -> TimelineItem -- ^ 'TimelineItem'
    -> TimelineUpdate'
timelineUpdate' pTuMedia_ pTuId_ pTuTimelineItem_ =
    TimelineUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIP = Nothing
    , _tuMedia = pTuMedia_
    , _tuKey = Nothing
    , _tuId = pTuId_
    , _tuOAuthToken = Nothing
    , _tuTimelineItem = pTuTimelineItem_
    , _tuFields = Nothing
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
tuUserIP :: Lens' TimelineUpdate' (Maybe Text)
tuUserIP = lens _tuUserIP (\ s a -> s{_tuUserIP = a})

tuMedia :: Lens' TimelineUpdate' Body
tuMedia = lens _tuMedia (\ s a -> s{_tuMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TimelineUpdate' (Maybe Key)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | The ID of the timeline item.
tuId :: Lens' TimelineUpdate' Text
tuId = lens _tuId (\ s a -> s{_tuId = a})

-- | OAuth 2.0 token for the current user.
tuOAuthToken :: Lens' TimelineUpdate' (Maybe OAuthToken)
tuOAuthToken
  = lens _tuOAuthToken (\ s a -> s{_tuOAuthToken = a})

-- | Multipart request metadata.
tuTimelineItem :: Lens' TimelineUpdate' TimelineItem
tuTimelineItem
  = lens _tuTimelineItem
      (\ s a -> s{_tuTimelineItem = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TimelineUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

instance GoogleAuth TimelineUpdate' where
        authKey = tuKey . _Just
        authToken = tuOAuthToken . _Just

instance GoogleRequest TimelineUpdate' where
        type Rs TimelineUpdate' = TimelineItem
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIP
              _tuMedia
              _tuKey
              _tuId
              _tuOAuthToken
              _tuFields
              (Just AltJSON)
              _tuTimelineItem
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineUpdateResource)
                      r
                      u

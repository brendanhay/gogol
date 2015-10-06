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
    , tuPayload
    , tuMedia
    , tuKey
    , tuId
    , tuOAuthToken
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
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       MultipartRelated '[JSON] TimelineItem Stream :>
                         Put '[JSON] TimelineItem

-- | Updates a timeline item in place.
--
-- /See:/ 'timelineUpdate'' smart constructor.
data TimelineUpdate' = TimelineUpdate'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuUserIP      :: !(Maybe Text)
    , _tuPayload     :: !TimelineItem
    , _tuMedia       :: !Stream
    , _tuKey         :: !(Maybe AuthKey)
    , _tuId          :: !Text
    , _tuOAuthToken  :: !(Maybe OAuthToken)
    , _tuFields      :: !(Maybe Text)
    }

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
-- * 'tuPayload'
--
-- * 'tuMedia'
--
-- * 'tuKey'
--
-- * 'tuId'
--
-- * 'tuOAuthToken'
--
-- * 'tuFields'
timelineUpdate'
    :: TimelineItem -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> Text -- ^ 'id'
    -> TimelineUpdate'
timelineUpdate' pTuPayload_ pTuMedia_ pTuId_ =
    TimelineUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIP = Nothing
    , _tuPayload = pTuPayload_
    , _tuMedia = pTuMedia_
    , _tuKey = Nothing
    , _tuId = pTuId_
    , _tuOAuthToken = Nothing
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

-- | Multipart request metadata.
tuPayload :: Lens' TimelineUpdate' TimelineItem
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

tuMedia :: Lens' TimelineUpdate' Stream
tuMedia = lens _tuMedia (\ s a -> s{_tuMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TimelineUpdate' (Maybe AuthKey)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | The ID of the timeline item.
tuId :: Lens' TimelineUpdate' Text
tuId = lens _tuId (\ s a -> s{_tuId = a})

-- | OAuth 2.0 token for the current user.
tuOAuthToken :: Lens' TimelineUpdate' (Maybe OAuthToken)
tuOAuthToken
  = lens _tuOAuthToken (\ s a -> s{_tuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TimelineUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

instance GoogleAuth TimelineUpdate' where
        _AuthKey = tuKey . _Just
        _AuthToken = tuOAuthToken . _Just

instance GoogleRequest TimelineUpdate' where
        type Rs TimelineUpdate' = TimelineItem
        request = requestWith mirrorRequest
        requestWith rq TimelineUpdate'{..}
          = go _tuId _tuQuotaUser (Just _tuPrettyPrint)
              _tuUserIP
              _tuFields
              _tuKey
              _tuOAuthToken
              (Just AltJSON)
              _tuPayload
              _tuMedia
          where go
                  = clientBuild (Proxy :: Proxy TimelineUpdateResource)
                      rq

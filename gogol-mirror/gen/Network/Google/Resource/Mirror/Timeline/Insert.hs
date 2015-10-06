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
    , tiPayload
    , tiMedia
    , tiKey
    , tiOAuthToken
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
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     MultipartRelated '[JSON] TimelineItem Stream :>
                       Post '[JSON] TimelineItem

-- | Inserts a new item into the timeline.
--
-- /See:/ 'timelineInsert'' smart constructor.
data TimelineInsert' = TimelineInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIP      :: !(Maybe Text)
    , _tiPayload     :: !TimelineItem
    , _tiMedia       :: !Stream
    , _tiKey         :: !(Maybe AuthKey)
    , _tiOAuthToken  :: !(Maybe OAuthToken)
    , _tiFields      :: !(Maybe Text)
    }

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
-- * 'tiPayload'
--
-- * 'tiMedia'
--
-- * 'tiKey'
--
-- * 'tiOAuthToken'
--
-- * 'tiFields'
timelineInsert'
    :: TimelineItem -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> TimelineInsert'
timelineInsert' pTiPayload_ pTiMedia_ =
    TimelineInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIP = Nothing
    , _tiPayload = pTiPayload_
    , _tiMedia = pTiMedia_
    , _tiKey = Nothing
    , _tiOAuthToken = Nothing
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

-- | Multipart request metadata.
tiPayload :: Lens' TimelineInsert' TimelineItem
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

tiMedia :: Lens' TimelineInsert' Stream
tiMedia = lens _tiMedia (\ s a -> s{_tiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TimelineInsert' (Maybe AuthKey)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TimelineInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TimelineInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

instance GoogleAuth TimelineInsert' where
        _AuthKey = tiKey . _Just
        _AuthToken = tiOAuthToken . _Just

instance GoogleRequest TimelineInsert' where
        type Rs TimelineInsert' = TimelineItem
        request = requestWith mirrorRequest
        requestWith rq TimelineInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiUserIP
              _tiFields
              _tiKey
              _tiOAuthToken
              (Just AltJSON)
              _tiPayload
              _tiMedia
          where go
                  = clientBuild (Proxy :: Proxy TimelineInsertResource)
                      rq

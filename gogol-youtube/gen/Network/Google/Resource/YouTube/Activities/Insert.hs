{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Activities.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Posts a bulletin for a specific channel. (The user submitting the
-- request must be authorized to act on the channel\'s behalf.) Note: Even
-- though an activity resource can contain information about actions like a
-- user rating a video or marking a video as a favorite, you need to use
-- other API methods to generate those activity resources. For example, you
-- would use the API\'s videos.rate() method to rate a video and the
-- playlistItems.insert() method to mark a video as a favorite.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeActivitiesInsert@.
module Network.Google.Resource.YouTube.Activities.Insert
    (
    -- * REST Resource
      ActivitiesInsertResource

    -- * Creating a Request
    , activitiesInsert'
    , ActivitiesInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPart
    , aiPrettyPrint
    , aiUserIP
    , aiPayload
    , aiKey
    , aiOAuthToken
    , aiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeActivitiesInsert@ which the
-- 'ActivitiesInsert'' request conforms to.
type ActivitiesInsertResource =
     "activities" :>
       QueryParam "part" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Activity :> Post '[JSON] Activity

-- | Posts a bulletin for a specific channel. (The user submitting the
-- request must be authorized to act on the channel\'s behalf.) Note: Even
-- though an activity resource can contain information about actions like a
-- user rating a video or marking a video as a favorite, you need to use
-- other API methods to generate those activity resources. For example, you
-- would use the API\'s videos.rate() method to rate a video and the
-- playlistItems.insert() method to mark a video as a favorite.
--
-- /See:/ 'activitiesInsert'' smart constructor.
data ActivitiesInsert' = ActivitiesInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPart        :: !Text
    , _aiPrettyPrint :: !Bool
    , _aiUserIP      :: !(Maybe Text)
    , _aiPayload     :: !Activity
    , _aiKey         :: !(Maybe Key)
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPart'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIP'
--
-- * 'aiPayload'
--
-- * 'aiKey'
--
-- * 'aiOAuthToken'
--
-- * 'aiFields'
activitiesInsert'
    :: Text -- ^ 'part'
    -> Activity -- ^ 'payload'
    -> ActivitiesInsert'
activitiesInsert' pAiPart_ pAiPayload_ =
    ActivitiesInsert'
    { _aiQuotaUser = Nothing
    , _aiPart = pAiPart_
    , _aiPrettyPrint = True
    , _aiUserIP = Nothing
    , _aiPayload = pAiPayload_
    , _aiKey = Nothing
    , _aiOAuthToken = Nothing
    , _aiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' ActivitiesInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | The part parameter serves two purposes in this operation. It identifies
-- the properties that the write operation will set as well as the
-- properties that the API response will include.
aiPart :: Lens' ActivitiesInsert' Text
aiPart = lens _aiPart (\ s a -> s{_aiPart = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' ActivitiesInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIP :: Lens' ActivitiesInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | Multipart request metadata.
aiPayload :: Lens' ActivitiesInsert' Activity
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ActivitiesInsert' (Maybe Key)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' ActivitiesInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ActivitiesInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth ActivitiesInsert' where
        authKey = aiKey . _Just
        authToken = aiOAuthToken . _Just

instance GoogleRequest ActivitiesInsert' where
        type Rs ActivitiesInsert' = Activity
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u ActivitiesInsert'{..}
          = go (Just _aiPart) _aiQuotaUser
              (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesInsertResource)
                      r
                      u

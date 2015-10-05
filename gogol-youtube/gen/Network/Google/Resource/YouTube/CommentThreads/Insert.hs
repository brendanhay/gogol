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
-- Module      : Network.Google.Resource.YouTube.CommentThreads.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new top-level comment. To add a reply to an existing comment,
-- use the comments.insert method instead.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentThreadsInsert@.
module Network.Google.Resource.YouTube.CommentThreads.Insert
    (
    -- * REST Resource
      CommentThreadsInsertResource

    -- * Creating a Request
    , commentThreadsInsert'
    , CommentThreadsInsert'

    -- * Request Lenses
    , ctiQuotaUser
    , ctiPart
    , ctiPrettyPrint
    , ctiUserIP
    , ctiPayload
    , ctiKey
    , ctiOAuthToken
    , ctiFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentThreadsInsert@ which the
-- 'CommentThreadsInsert'' request conforms to.
type CommentThreadsInsertResource =
     "commentThreads" :>
       QueryParam "part" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CommentThread :>
                         Post '[JSON] CommentThread

-- | Creates a new top-level comment. To add a reply to an existing comment,
-- use the comments.insert method instead.
--
-- /See:/ 'commentThreadsInsert'' smart constructor.
data CommentThreadsInsert' = CommentThreadsInsert'
    { _ctiQuotaUser   :: !(Maybe Text)
    , _ctiPart        :: !Text
    , _ctiPrettyPrint :: !Bool
    , _ctiUserIP      :: !(Maybe Text)
    , _ctiPayload     :: !CommentThread
    , _ctiKey         :: !(Maybe Key)
    , _ctiOAuthToken  :: !(Maybe OAuthToken)
    , _ctiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctiQuotaUser'
--
-- * 'ctiPart'
--
-- * 'ctiPrettyPrint'
--
-- * 'ctiUserIP'
--
-- * 'ctiPayload'
--
-- * 'ctiKey'
--
-- * 'ctiOAuthToken'
--
-- * 'ctiFields'
commentThreadsInsert'
    :: Text -- ^ 'part'
    -> CommentThread -- ^ 'payload'
    -> CommentThreadsInsert'
commentThreadsInsert' pCtiPart_ pCtiPayload_ =
    CommentThreadsInsert'
    { _ctiQuotaUser = Nothing
    , _ctiPart = pCtiPart_
    , _ctiPrettyPrint = True
    , _ctiUserIP = Nothing
    , _ctiPayload = pCtiPayload_
    , _ctiKey = Nothing
    , _ctiOAuthToken = Nothing
    , _ctiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctiQuotaUser :: Lens' CommentThreadsInsert' (Maybe Text)
ctiQuotaUser
  = lens _ctiQuotaUser (\ s a -> s{_ctiQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
ctiPart :: Lens' CommentThreadsInsert' Text
ctiPart = lens _ctiPart (\ s a -> s{_ctiPart = a})

-- | Returns response with indentations and line breaks.
ctiPrettyPrint :: Lens' CommentThreadsInsert' Bool
ctiPrettyPrint
  = lens _ctiPrettyPrint
      (\ s a -> s{_ctiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctiUserIP :: Lens' CommentThreadsInsert' (Maybe Text)
ctiUserIP
  = lens _ctiUserIP (\ s a -> s{_ctiUserIP = a})

-- | Multipart request metadata.
ctiPayload :: Lens' CommentThreadsInsert' CommentThread
ctiPayload
  = lens _ctiPayload (\ s a -> s{_ctiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctiKey :: Lens' CommentThreadsInsert' (Maybe Key)
ctiKey = lens _ctiKey (\ s a -> s{_ctiKey = a})

-- | OAuth 2.0 token for the current user.
ctiOAuthToken :: Lens' CommentThreadsInsert' (Maybe OAuthToken)
ctiOAuthToken
  = lens _ctiOAuthToken
      (\ s a -> s{_ctiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctiFields :: Lens' CommentThreadsInsert' (Maybe Text)
ctiFields
  = lens _ctiFields (\ s a -> s{_ctiFields = a})

instance GoogleAuth CommentThreadsInsert' where
        authKey = ctiKey . _Just
        authToken = ctiOAuthToken . _Just

instance GoogleRequest CommentThreadsInsert' where
        type Rs CommentThreadsInsert' = CommentThread
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentThreadsInsert'{..}
          = go (Just _ctiPart) _ctiQuotaUser
              (Just _ctiPrettyPrint)
              _ctiUserIP
              _ctiFields
              _ctiKey
              _ctiOAuthToken
              (Just AltJSON)
              _ctiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentThreadsInsertResource)
                      r
                      u

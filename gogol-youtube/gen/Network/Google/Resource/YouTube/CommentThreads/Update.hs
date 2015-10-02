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
-- Module      : Network.Google.Resource.YouTube.CommentThreads.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the top-level comment in a comment thread.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentThreadsUpdate@.
module Network.Google.Resource.YouTube.CommentThreads.Update
    (
    -- * REST Resource
      CommentThreadsUpdateResource

    -- * Creating a Request
    , commentThreadsUpdate'
    , CommentThreadsUpdate'

    -- * Request Lenses
    , ctuQuotaUser
    , ctuPart
    , ctuPrettyPrint
    , ctuUserIP
    , ctuKey
    , ctuCommentThread
    , ctuOAuthToken
    , ctuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentThreadsUpdate@ which the
-- 'CommentThreadsUpdate'' request conforms to.
type CommentThreadsUpdateResource =
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
                         Put '[JSON] CommentThread

-- | Modifies the top-level comment in a comment thread.
--
-- /See:/ 'commentThreadsUpdate'' smart constructor.
data CommentThreadsUpdate' = CommentThreadsUpdate'
    { _ctuQuotaUser     :: !(Maybe Text)
    , _ctuPart          :: !Text
    , _ctuPrettyPrint   :: !Bool
    , _ctuUserIP        :: !(Maybe Text)
    , _ctuKey           :: !(Maybe Key)
    , _ctuCommentThread :: !CommentThread
    , _ctuOAuthToken    :: !(Maybe OAuthToken)
    , _ctuFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctuQuotaUser'
--
-- * 'ctuPart'
--
-- * 'ctuPrettyPrint'
--
-- * 'ctuUserIP'
--
-- * 'ctuKey'
--
-- * 'ctuCommentThread'
--
-- * 'ctuOAuthToken'
--
-- * 'ctuFields'
commentThreadsUpdate'
    :: Text -- ^ 'part'
    -> CommentThread -- ^ 'CommentThread'
    -> CommentThreadsUpdate'
commentThreadsUpdate' pCtuPart_ pCtuCommentThread_ =
    CommentThreadsUpdate'
    { _ctuQuotaUser = Nothing
    , _ctuPart = pCtuPart_
    , _ctuPrettyPrint = True
    , _ctuUserIP = Nothing
    , _ctuKey = Nothing
    , _ctuCommentThread = pCtuCommentThread_
    , _ctuOAuthToken = Nothing
    , _ctuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctuQuotaUser :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuQuotaUser
  = lens _ctuQuotaUser (\ s a -> s{_ctuQuotaUser = a})

-- | The part parameter specifies a comma-separated list of commentThread
-- resource properties that the API response will include. You must at
-- least include the snippet part in the parameter value since that part
-- contains all of the properties that the API request can update.
ctuPart :: Lens' CommentThreadsUpdate' Text
ctuPart = lens _ctuPart (\ s a -> s{_ctuPart = a})

-- | Returns response with indentations and line breaks.
ctuPrettyPrint :: Lens' CommentThreadsUpdate' Bool
ctuPrettyPrint
  = lens _ctuPrettyPrint
      (\ s a -> s{_ctuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctuUserIP :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuUserIP
  = lens _ctuUserIP (\ s a -> s{_ctuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctuKey :: Lens' CommentThreadsUpdate' (Maybe Key)
ctuKey = lens _ctuKey (\ s a -> s{_ctuKey = a})

-- | Multipart request metadata.
ctuCommentThread :: Lens' CommentThreadsUpdate' CommentThread
ctuCommentThread
  = lens _ctuCommentThread
      (\ s a -> s{_ctuCommentThread = a})

-- | OAuth 2.0 token for the current user.
ctuOAuthToken :: Lens' CommentThreadsUpdate' (Maybe OAuthToken)
ctuOAuthToken
  = lens _ctuOAuthToken
      (\ s a -> s{_ctuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctuFields :: Lens' CommentThreadsUpdate' (Maybe Text)
ctuFields
  = lens _ctuFields (\ s a -> s{_ctuFields = a})

instance GoogleAuth CommentThreadsUpdate' where
        authKey = ctuKey . _Just
        authToken = ctuOAuthToken . _Just

instance GoogleRequest CommentThreadsUpdate' where
        type Rs CommentThreadsUpdate' = CommentThread
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentThreadsUpdate'{..}
          = go (Just _ctuPart) _ctuQuotaUser
              (Just _ctuPrettyPrint)
              _ctuUserIP
              _ctuFields
              _ctuKey
              _ctuOAuthToken
              (Just AltJSON)
              _ctuCommentThread
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentThreadsUpdateResource)
                      r
                      u

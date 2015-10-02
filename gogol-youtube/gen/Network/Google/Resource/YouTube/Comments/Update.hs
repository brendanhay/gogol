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
-- Module      : Network.Google.Resource.YouTube.Comments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsUpdate@.
module Network.Google.Resource.YouTube.Comments.Update
    (
    -- * REST Resource
      CommentsUpdateResource

    -- * Creating a Request
    , commentsUpdate'
    , CommentsUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPart
    , cuPrettyPrint
    , cuUserIP
    , cuKey
    , cuOAuthToken
    , cuComment
    , cuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsUpdate@ which the
-- 'CommentsUpdate'' request conforms to.
type CommentsUpdateResource =
     "comments" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Comment :> Put '[JSON] Comment

-- | Modifies a comment.
--
-- /See:/ 'commentsUpdate'' smart constructor.
data CommentsUpdate' = CommentsUpdate'
    { _cuQuotaUser   :: !(Maybe Text)
    , _cuPart        :: !Text
    , _cuPrettyPrint :: !Bool
    , _cuUserIP      :: !(Maybe Text)
    , _cuKey         :: !(Maybe Key)
    , _cuOAuthToken  :: !(Maybe OAuthToken)
    , _cuComment     :: !Comment
    , _cuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPart'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuKey'
--
-- * 'cuOAuthToken'
--
-- * 'cuComment'
--
-- * 'cuFields'
commentsUpdate'
    :: Text -- ^ 'part'
    -> Comment -- ^ 'Comment'
    -> CommentsUpdate'
commentsUpdate' pCuPart_ pCuComment_ =
    CommentsUpdate'
    { _cuQuotaUser = Nothing
    , _cuPart = pCuPart_
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuKey = Nothing
    , _cuOAuthToken = Nothing
    , _cuComment = pCuComment_
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' CommentsUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. You must at least include the snippet part in the parameter
-- value since that part contains all of the properties that the API
-- request can update.
cuPart :: Lens' CommentsUpdate' Text
cuPart = lens _cuPart (\ s a -> s{_cuPart = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CommentsUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' CommentsUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CommentsUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CommentsUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Multipart request metadata.
cuComment :: Lens' CommentsUpdate' Comment
cuComment
  = lens _cuComment (\ s a -> s{_cuComment = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CommentsUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth CommentsUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest CommentsUpdate' where
        type Rs CommentsUpdate' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsUpdate'{..}
          = go _cuQuotaUser (Just _cuPart)
              (Just _cuPrettyPrint)
              _cuUserIP
              _cuKey
              _cuOAuthToken
              _cuFields
              (Just AltJSON)
              _cuComment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsUpdateResource)
                      r
                      u

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
-- Module      : Network.Google.Resource.YouTube.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsInsert@.
module Network.Google.Resource.YouTube.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , cQuotaUser
    , cPart
    , cPrettyPrint
    , cUserIP
    , cPayload
    , cKey
    , cOAuthToken
    , cFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsInsert@ which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "comments" :>
       QueryParam "part" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Creates a reply to an existing comment. Note: To create a top-level
-- comment, use the commentThreads.insert method.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPart        :: !Text
    , _cPrettyPrint :: !Bool
    , _cUserIP      :: !(Maybe Text)
    , _cPayload     :: !Comment
    , _cKey         :: !(Maybe Key)
    , _cOAuthToken  :: !(Maybe OAuthToken)
    , _cFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPart'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIP'
--
-- * 'cPayload'
--
-- * 'cKey'
--
-- * 'cOAuthToken'
--
-- * 'cFields'
commentsInsert'
    :: Text -- ^ 'part'
    -> Comment -- ^ 'payload'
    -> CommentsInsert'
commentsInsert' pCPart_ pCPayload_ =
    CommentsInsert'
    { _cQuotaUser = Nothing
    , _cPart = pCPart_
    , _cPrettyPrint = True
    , _cUserIP = Nothing
    , _cPayload = pCPayload_
    , _cKey = Nothing
    , _cOAuthToken = Nothing
    , _cFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CommentsInsert' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | The part parameter identifies the properties that the API response will
-- include. Set the parameter value to snippet. The snippet part has a
-- quota cost of 2 units.
cPart :: Lens' CommentsInsert' Text
cPart = lens _cPart (\ s a -> s{_cPart = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CommentsInsert' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIP :: Lens' CommentsInsert' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | Multipart request metadata.
cPayload :: Lens' CommentsInsert' Comment
cPayload = lens _cPayload (\ s a -> s{_cPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CommentsInsert' (Maybe Key)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' CommentsInsert' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CommentsInsert' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth CommentsInsert' where
        authKey = cKey . _Just
        authToken = cOAuthToken . _Just

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsInsert'{..}
          = go (Just _cPart) _cQuotaUser (Just _cPrettyPrint)
              _cUserIP
              _cFields
              _cKey
              _cOAuthToken
              (Just AltJSON)
              _cPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsInsertResource)
                      r
                      u

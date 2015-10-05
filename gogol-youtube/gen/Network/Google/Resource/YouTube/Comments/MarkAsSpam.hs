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
-- Module      : Network.Google.Resource.YouTube.Comments.MarkAsSpam
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsMarkAsSpam@.
module Network.Google.Resource.YouTube.Comments.MarkAsSpam
    (
    -- * REST Resource
      CommentsMarkAsSpamResource

    -- * Creating a Request
    , commentsMarkAsSpam'
    , CommentsMarkAsSpam'

    -- * Request Lenses
    , cmasQuotaUser
    , cmasPrettyPrint
    , cmasUserIP
    , cmasKey
    , cmasId
    , cmasOAuthToken
    , cmasFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsMarkAsSpam@ which the
-- 'CommentsMarkAsSpam'' request conforms to.
type CommentsMarkAsSpamResource =
     "comments" :>
       "markAsSpam" :>
         QueryParam "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Expresses the caller\'s opinion that one or more comments should be
-- flagged as spam.
--
-- /See:/ 'commentsMarkAsSpam'' smart constructor.
data CommentsMarkAsSpam' = CommentsMarkAsSpam'
    { _cmasQuotaUser   :: !(Maybe Text)
    , _cmasPrettyPrint :: !Bool
    , _cmasUserIP      :: !(Maybe Text)
    , _cmasKey         :: !(Maybe AuthKey)
    , _cmasId          :: !Text
    , _cmasOAuthToken  :: !(Maybe OAuthToken)
    , _cmasFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsMarkAsSpam'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmasQuotaUser'
--
-- * 'cmasPrettyPrint'
--
-- * 'cmasUserIP'
--
-- * 'cmasKey'
--
-- * 'cmasId'
--
-- * 'cmasOAuthToken'
--
-- * 'cmasFields'
commentsMarkAsSpam'
    :: Text -- ^ 'id'
    -> CommentsMarkAsSpam'
commentsMarkAsSpam' pCmasId_ =
    CommentsMarkAsSpam'
    { _cmasQuotaUser = Nothing
    , _cmasPrettyPrint = True
    , _cmasUserIP = Nothing
    , _cmasKey = Nothing
    , _cmasId = pCmasId_
    , _cmasOAuthToken = Nothing
    , _cmasFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cmasQuotaUser :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasQuotaUser
  = lens _cmasQuotaUser
      (\ s a -> s{_cmasQuotaUser = a})

-- | Returns response with indentations and line breaks.
cmasPrettyPrint :: Lens' CommentsMarkAsSpam' Bool
cmasPrettyPrint
  = lens _cmasPrettyPrint
      (\ s a -> s{_cmasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cmasUserIP :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasUserIP
  = lens _cmasUserIP (\ s a -> s{_cmasUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cmasKey :: Lens' CommentsMarkAsSpam' (Maybe AuthKey)
cmasKey = lens _cmasKey (\ s a -> s{_cmasKey = a})

-- | The id parameter specifies a comma-separated list of IDs of comments
-- that the caller believes should be classified as spam.
cmasId :: Lens' CommentsMarkAsSpam' Text
cmasId = lens _cmasId (\ s a -> s{_cmasId = a})

-- | OAuth 2.0 token for the current user.
cmasOAuthToken :: Lens' CommentsMarkAsSpam' (Maybe OAuthToken)
cmasOAuthToken
  = lens _cmasOAuthToken
      (\ s a -> s{_cmasOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cmasFields :: Lens' CommentsMarkAsSpam' (Maybe Text)
cmasFields
  = lens _cmasFields (\ s a -> s{_cmasFields = a})

instance GoogleAuth CommentsMarkAsSpam' where
        authKey = cmasKey . _Just
        authToken = cmasOAuthToken . _Just

instance GoogleRequest CommentsMarkAsSpam' where
        type Rs CommentsMarkAsSpam' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsMarkAsSpam'{..}
          = go (Just _cmasId) _cmasQuotaUser
              (Just _cmasPrettyPrint)
              _cmasUserIP
              _cmasFields
              _cmasKey
              _cmasOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsMarkAsSpamResource)
                      r
                      u

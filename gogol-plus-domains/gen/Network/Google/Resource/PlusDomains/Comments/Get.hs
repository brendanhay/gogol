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
-- Module      : Network.Google.Resource.PlusDomains.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a comment.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCommentsGet@.
module Network.Google.Resource.PlusDomains.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cUserIP
    , cKey
    , cOAuthToken
    , cCommentId
    , cFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCommentsGet@ which the
-- 'CommentsGet'' request conforms to.
type CommentsGetResource =
     "comments" :>
       Capture "commentId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Comment

-- | Get a comment.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cUserIP      :: !(Maybe Text)
    , _cKey         :: !(Maybe AuthKey)
    , _cOAuthToken  :: !(Maybe OAuthToken)
    , _cCommentId   :: !Text
    , _cFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cUserIP'
--
-- * 'cKey'
--
-- * 'cOAuthToken'
--
-- * 'cCommentId'
--
-- * 'cFields'
commentsGet'
    :: Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCCommentId_ =
    CommentsGet'
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cUserIP = Nothing
    , _cKey = Nothing
    , _cOAuthToken = Nothing
    , _cCommentId = pCCommentId_
    , _cFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' CommentsGet' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' CommentsGet' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIP :: Lens' CommentsGet' (Maybe Text)
cUserIP = lens _cUserIP (\ s a -> s{_cUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' CommentsGet' (Maybe AuthKey)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | OAuth 2.0 token for the current user.
cOAuthToken :: Lens' CommentsGet' (Maybe OAuthToken)
cOAuthToken
  = lens _cOAuthToken (\ s a -> s{_cOAuthToken = a})

-- | The ID of the comment to get.
cCommentId :: Lens' CommentsGet' Text
cCommentId
  = lens _cCommentId (\ s a -> s{_cCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' CommentsGet' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

instance GoogleAuth CommentsGet' where
        authKey = cKey . _Just
        authToken = cOAuthToken . _Just

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWith plusDomainsRequest
        requestWith rq CommentsGet'{..}
          = go _cCommentId _cQuotaUser (Just _cPrettyPrint)
              _cUserIP
              _cFields
              _cKey
              _cOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CommentsGetResource) rq

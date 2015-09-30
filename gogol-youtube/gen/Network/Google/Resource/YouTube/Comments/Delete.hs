{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsDelete@.
module YouTube.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteAPI

    -- * Creating a Request
    , commentsDelete
    , CommentsDelete

    -- * Request Lenses
    , comoQuotaUser
    , comoPrettyPrint
    , comoUserIp
    , comoKey
    , comoId
    , comoOauthToken
    , comoFields
    , comoAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsDelete@ which the
-- 'CommentsDelete' request conforms to.
type CommentsDeleteAPI =
     "comments" :>
       QueryParam "id" Text :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete' smart constructor.
data CommentsDelete = CommentsDelete
    { _comoQuotaUser   :: !(Maybe Text)
    , _comoPrettyPrint :: !Bool
    , _comoUserIp      :: !(Maybe Text)
    , _comoKey         :: !(Maybe Text)
    , _comoId          :: !Text
    , _comoOauthToken  :: !(Maybe Text)
    , _comoFields      :: !(Maybe Text)
    , _comoAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comoQuotaUser'
--
-- * 'comoPrettyPrint'
--
-- * 'comoUserIp'
--
-- * 'comoKey'
--
-- * 'comoId'
--
-- * 'comoOauthToken'
--
-- * 'comoFields'
--
-- * 'comoAlt'
commentsDelete
    :: Text -- ^ 'id'
    -> CommentsDelete
commentsDelete pComoId_ =
    CommentsDelete
    { _comoQuotaUser = Nothing
    , _comoPrettyPrint = True
    , _comoUserIp = Nothing
    , _comoKey = Nothing
    , _comoId = pComoId_
    , _comoOauthToken = Nothing
    , _comoFields = Nothing
    , _comoAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comoQuotaUser :: Lens' CommentsDelete' (Maybe Text)
comoQuotaUser
  = lens _comoQuotaUser
      (\ s a -> s{_comoQuotaUser = a})

-- | Returns response with indentations and line breaks.
comoPrettyPrint :: Lens' CommentsDelete' Bool
comoPrettyPrint
  = lens _comoPrettyPrint
      (\ s a -> s{_comoPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comoUserIp :: Lens' CommentsDelete' (Maybe Text)
comoUserIp
  = lens _comoUserIp (\ s a -> s{_comoUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comoKey :: Lens' CommentsDelete' (Maybe Text)
comoKey = lens _comoKey (\ s a -> s{_comoKey = a})

-- | The id parameter specifies the comment ID for the resource that is being
-- deleted.
comoId :: Lens' CommentsDelete' Text
comoId = lens _comoId (\ s a -> s{_comoId = a})

-- | OAuth 2.0 token for the current user.
comoOauthToken :: Lens' CommentsDelete' (Maybe Text)
comoOauthToken
  = lens _comoOauthToken
      (\ s a -> s{_comoOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
comoFields :: Lens' CommentsDelete' (Maybe Text)
comoFields
  = lens _comoFields (\ s a -> s{_comoFields = a})

-- | Data format for the response.
comoAlt :: Lens' CommentsDelete' Text
comoAlt = lens _comoAlt (\ s a -> s{_comoAlt = a})

instance GoogleRequest CommentsDelete' where
        type Rs CommentsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsDelete{..}
          = go _comoQuotaUser _comoPrettyPrint _comoUserIp
              _comoKey
              (Just _comoId)
              _comoOauthToken
              _comoFields
              _comoAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsDeleteAPI)
                      r
                      u

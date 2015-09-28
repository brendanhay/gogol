{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a comment.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.delete@.
module Network.Google.API.YouTube.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteAPI

    -- * Creating a Request
    , commentsDelete'
    , CommentsDelete'

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddUserIp
    , cddKey
    , cddId
    , cddOauthToken
    , cddFields
    , cddAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.comments.delete which the
-- 'CommentsDelete'' request conforms to.
type CommentsDeleteAPI =
     "comments" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "id" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete'' smart constructor.
data CommentsDelete' = CommentsDelete'
    { _cddQuotaUser   :: !(Maybe Text)
    , _cddPrettyPrint :: !Bool
    , _cddUserIp      :: !(Maybe Text)
    , _cddKey         :: !(Maybe Text)
    , _cddId          :: !Text
    , _cddOauthToken  :: !(Maybe Text)
    , _cddFields      :: !(Maybe Text)
    , _cddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddUserIp'
--
-- * 'cddKey'
--
-- * 'cddId'
--
-- * 'cddOauthToken'
--
-- * 'cddFields'
--
-- * 'cddAlt'
commentsDelete'
    :: Text -- ^ 'id'
    -> CommentsDelete'
commentsDelete' pCddId_ =
    CommentsDelete'
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddUserIp = Nothing
    , _cddKey = Nothing
    , _cddId = pCddId_
    , _cddOauthToken = Nothing
    , _cddFields = Nothing
    , _cddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' CommentsDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' CommentsDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIp :: Lens' CommentsDelete' (Maybe Text)
cddUserIp
  = lens _cddUserIp (\ s a -> s{_cddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' CommentsDelete' (Maybe Text)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | The id parameter specifies the comment ID for the resource that is being
-- deleted.
cddId :: Lens' CommentsDelete' Text
cddId = lens _cddId (\ s a -> s{_cddId = a})

-- | OAuth 2.0 token for the current user.
cddOauthToken :: Lens' CommentsDelete' (Maybe Text)
cddOauthToken
  = lens _cddOauthToken
      (\ s a -> s{_cddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CommentsDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

-- | Data format for the response.
cddAlt :: Lens' CommentsDelete' Alt
cddAlt = lens _cddAlt (\ s a -> s{_cddAlt = a})

instance GoogleRequest CommentsDelete' where
        type Rs CommentsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsDelete'{..}
          = go _cddQuotaUser (Just _cddPrettyPrint) _cddUserIp
              _cddKey
              (Just _cddId)
              _cddOauthToken
              _cddFields
              (Just _cddAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsDeleteAPI)
                      r
                      u

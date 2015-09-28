{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Comments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing comment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.patch@.
module Network.Google.API.Drive.Comments.Patch
    (
    -- * REST Resource
      CommentsPatchAPI

    -- * Creating a Request
    , commentsPatch'
    , CommentsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIp
    , cpKey
    , cpFileId
    , cpOauthToken
    , cpCommentId
    , cpFields
    , cpAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.comments.patch which the
-- 'CommentsPatch'' request conforms to.
type CommentsPatchAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Comment

-- | Updates an existing comment. This method supports patch semantics.
--
-- /See:/ 'commentsPatch'' smart constructor.
data CommentsPatch' = CommentsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIp      :: !(Maybe Text)
    , _cpKey         :: !(Maybe Text)
    , _cpFileId      :: !Text
    , _cpOauthToken  :: !(Maybe Text)
    , _cpCommentId   :: !Text
    , _cpFields      :: !(Maybe Text)
    , _cpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIp'
--
-- * 'cpKey'
--
-- * 'cpFileId'
--
-- * 'cpOauthToken'
--
-- * 'cpCommentId'
--
-- * 'cpFields'
--
-- * 'cpAlt'
commentsPatch'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsPatch'
commentsPatch' pCpFileId_ pCpCommentId_ =
    CommentsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIp = Nothing
    , _cpKey = Nothing
    , _cpFileId = pCpFileId_
    , _cpOauthToken = Nothing
    , _cpCommentId = pCpCommentId_
    , _cpFields = Nothing
    , _cpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CommentsPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CommentsPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIp :: Lens' CommentsPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CommentsPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the file.
cpFileId :: Lens' CommentsPatch' Text
cpFileId = lens _cpFileId (\ s a -> s{_cpFileId = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CommentsPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | The ID of the comment.
cpCommentId :: Lens' CommentsPatch' Text
cpCommentId
  = lens _cpCommentId (\ s a -> s{_cpCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CommentsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CommentsPatch' Alt
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CommentsPatch' where
        type Rs CommentsPatch' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsPatch'{..}
          = go _cpQuotaUser (Just _cpPrettyPrint) _cpUserIp
              _cpKey
              _cpFileId
              _cpOauthToken
              _cpCommentId
              _cpFields
              (Just _cpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsPatchAPI) r
                      u

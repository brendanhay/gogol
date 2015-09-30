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
-- Module      : Network.Google.Resource.Drive.Comments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsDelete@.
module Network.Google.Resource.Drive.Comments.Delete
    (
    -- * REST Resource
      CommentsDeleteResource

    -- * Creating a Request
    , commentsDelete'
    , CommentsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdUserIp
    , cdKey
    , cdFileId
    , cdOauthToken
    , cdCommentId
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsDelete@ which the
-- 'CommentsDelete'' request conforms to.
type CommentsDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a comment.
--
-- /See:/ 'commentsDelete'' smart constructor.
data CommentsDelete' = CommentsDelete'
    { _cdQuotaUser   :: !(Maybe Text)
    , _cdPrettyPrint :: !Bool
    , _cdUserIp      :: !(Maybe Text)
    , _cdKey         :: !(Maybe Text)
    , _cdFileId      :: !Text
    , _cdOauthToken  :: !(Maybe Text)
    , _cdCommentId   :: !Text
    , _cdFields      :: !(Maybe Text)
    , _cdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUserIp'
--
-- * 'cdKey'
--
-- * 'cdFileId'
--
-- * 'cdOauthToken'
--
-- * 'cdCommentId'
--
-- * 'cdFields'
--
-- * 'cdAlt'
commentsDelete'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsDelete'
commentsDelete' pCdFileId_ pCdCommentId_ =
    CommentsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUserIp = Nothing
    , _cdKey = Nothing
    , _cdFileId = pCdFileId_
    , _cdOauthToken = Nothing
    , _cdCommentId = pCdCommentId_
    , _cdFields = Nothing
    , _cdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CommentsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CommentsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CommentsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CommentsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | The ID of the file.
cdFileId :: Lens' CommentsDelete' Text
cdFileId = lens _cdFileId (\ s a -> s{_cdFileId = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CommentsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | The ID of the comment.
cdCommentId :: Lens' CommentsDelete' Text
cdCommentId
  = lens _cdCommentId (\ s a -> s{_cdCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CommentsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CommentsDelete' Alt
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CommentsDelete' where
        type Rs CommentsDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsDelete'{..}
          = go _cdQuotaUser (Just _cdPrettyPrint) _cdUserIp
              _cdKey
              _cdFileId
              _cdOauthToken
              _cdCommentId
              _cdFields
              (Just _cdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsDeleteResource)
                      r
                      u

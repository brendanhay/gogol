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
-- Module      : Network.Google.Resource.Drive.Comments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a comment by ID.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsGet@.
module Network.Google.Resource.Drive.Comments.Get
    (
    -- * REST Resource
      CommentsGetResource

    -- * Creating a Request
    , commentsGet'
    , CommentsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIp
    , cgKey
    , cgFileId
    , cgOauthToken
    , cgCommentId
    , cgIncludeDeleted
    , cgFields
    , cgAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsGet@ which the
-- 'CommentsGet'' request conforms to.
type CommentsGetResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "includeDeleted" Bool :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Comment

-- | Gets a comment by ID.
--
-- /See:/ 'commentsGet'' smart constructor.
data CommentsGet' = CommentsGet'
    { _cgQuotaUser      :: !(Maybe Text)
    , _cgPrettyPrint    :: !Bool
    , _cgUserIp         :: !(Maybe Text)
    , _cgKey            :: !(Maybe Text)
    , _cgFileId         :: !Text
    , _cgOauthToken     :: !(Maybe Text)
    , _cgCommentId      :: !Text
    , _cgIncludeDeleted :: !Bool
    , _cgFields         :: !(Maybe Text)
    , _cgAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIp'
--
-- * 'cgKey'
--
-- * 'cgFileId'
--
-- * 'cgOauthToken'
--
-- * 'cgCommentId'
--
-- * 'cgIncludeDeleted'
--
-- * 'cgFields'
--
-- * 'cgAlt'
commentsGet'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsGet'
commentsGet' pCgFileId_ pCgCommentId_ =
    CommentsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIp = Nothing
    , _cgKey = Nothing
    , _cgFileId = pCgFileId_
    , _cgOauthToken = Nothing
    , _cgCommentId = pCgCommentId_
    , _cgIncludeDeleted = False
    , _cgFields = Nothing
    , _cgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' CommentsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CommentsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIp :: Lens' CommentsGet' (Maybe Text)
cgUserIp = lens _cgUserIp (\ s a -> s{_cgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CommentsGet' (Maybe Text)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | The ID of the file.
cgFileId :: Lens' CommentsGet' Text
cgFileId = lens _cgFileId (\ s a -> s{_cgFileId = a})

-- | OAuth 2.0 token for the current user.
cgOauthToken :: Lens' CommentsGet' (Maybe Text)
cgOauthToken
  = lens _cgOauthToken (\ s a -> s{_cgOauthToken = a})

-- | The ID of the comment.
cgCommentId :: Lens' CommentsGet' Text
cgCommentId
  = lens _cgCommentId (\ s a -> s{_cgCommentId = a})

-- | If set, this will succeed when retrieving a deleted comment, and will
-- include any deleted replies.
cgIncludeDeleted :: Lens' CommentsGet' Bool
cgIncludeDeleted
  = lens _cgIncludeDeleted
      (\ s a -> s{_cgIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CommentsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | Data format for the response.
cgAlt :: Lens' CommentsGet' Alt
cgAlt = lens _cgAlt (\ s a -> s{_cgAlt = a})

instance GoogleRequest CommentsGet' where
        type Rs CommentsGet' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIp
              _cgKey
              _cgFileId
              _cgOauthToken
              _cgCommentId
              (Just _cgIncludeDeleted)
              _cgFields
              (Just _cgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsGetResource)
                      r
                      u

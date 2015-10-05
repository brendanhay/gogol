{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Comments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing comment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsPatch@.
module Network.Google.Resource.Drive.Comments.Patch
    (
    -- * REST Resource
      CommentsPatchResource

    -- * Creating a Request
    , commentsPatch'
    , CommentsPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpUserIP
    , cpPayload
    , cpKey
    , cpFileId
    , cpOAuthToken
    , cpCommentId
    , cpFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsPatch@ which the
-- 'CommentsPatch'' request conforms to.
type CommentsPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Comment :> Patch '[JSON] Comment

-- | Updates an existing comment. This method supports patch semantics.
--
-- /See:/ 'commentsPatch'' smart constructor.
data CommentsPatch' = CommentsPatch'
    { _cpQuotaUser   :: !(Maybe Text)
    , _cpPrettyPrint :: !Bool
    , _cpUserIP      :: !(Maybe Text)
    , _cpPayload     :: !Comment
    , _cpKey         :: !(Maybe Key)
    , _cpFileId      :: !Text
    , _cpOAuthToken  :: !(Maybe OAuthToken)
    , _cpCommentId   :: !Text
    , _cpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUserIP'
--
-- * 'cpPayload'
--
-- * 'cpKey'
--
-- * 'cpFileId'
--
-- * 'cpOAuthToken'
--
-- * 'cpCommentId'
--
-- * 'cpFields'
commentsPatch'
    :: Comment -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> CommentsPatch'
commentsPatch' pCpPayload_ pCpFileId_ pCpCommentId_ =
    CommentsPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUserIP = Nothing
    , _cpPayload = pCpPayload_
    , _cpKey = Nothing
    , _cpFileId = pCpFileId_
    , _cpOAuthToken = Nothing
    , _cpCommentId = pCpCommentId_
    , _cpFields = Nothing
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
cpUserIP :: Lens' CommentsPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | Multipart request metadata.
cpPayload :: Lens' CommentsPatch' Comment
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CommentsPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | The ID of the file.
cpFileId :: Lens' CommentsPatch' Text
cpFileId = lens _cpFileId (\ s a -> s{_cpFileId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CommentsPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | The ID of the comment.
cpCommentId :: Lens' CommentsPatch' Text
cpCommentId
  = lens _cpCommentId (\ s a -> s{_cpCommentId = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CommentsPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CommentsPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CommentsPatch' where
        type Rs CommentsPatch' = Comment
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsPatch'{..}
          = go _cpFileId _cpCommentId _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsPatchResource)
                      r
                      u

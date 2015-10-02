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
-- Module      : Network.Google.Resource.YouTube.Comments.SetModerationStatus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the moderation status of one or more comments. The API request must
-- be authorized by the owner of the channel or video associated with the
-- comments.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsSetModerationStatus@.
module Network.Google.Resource.YouTube.Comments.SetModerationStatus
    (
    -- * REST Resource
      CommentsSetModerationStatusResource

    -- * Creating a Request
    , commentsSetModerationStatus'
    , CommentsSetModerationStatus'

    -- * Request Lenses
    , csmsQuotaUser
    , csmsPrettyPrint
    , csmsBanAuthor
    , csmsModerationStatus
    , csmsUserIP
    , csmsKey
    , csmsId
    , csmsOAuthToken
    , csmsFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsSetModerationStatus@ which the
-- 'CommentsSetModerationStatus'' request conforms to.
type CommentsSetModerationStatusResource =
     "comments" :>
       "setModerationStatus" :>
         QueryParam "banAuthor" Bool :>
           QueryParam "id" Text :>
             QueryParam "moderationStatus"
               YouTubeCommentsSetModerationStatusModerationStatus
               :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sets the moderation status of one or more comments. The API request must
-- be authorized by the owner of the channel or video associated with the
-- comments.
--
-- /See:/ 'commentsSetModerationStatus'' smart constructor.
data CommentsSetModerationStatus' = CommentsSetModerationStatus'
    { _csmsQuotaUser        :: !(Maybe Text)
    , _csmsPrettyPrint      :: !Bool
    , _csmsBanAuthor        :: !Bool
    , _csmsModerationStatus :: !YouTubeCommentsSetModerationStatusModerationStatus
    , _csmsUserIP           :: !(Maybe Text)
    , _csmsKey              :: !(Maybe Key)
    , _csmsId               :: !Text
    , _csmsOAuthToken       :: !(Maybe OAuthToken)
    , _csmsFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsSetModerationStatus'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csmsQuotaUser'
--
-- * 'csmsPrettyPrint'
--
-- * 'csmsBanAuthor'
--
-- * 'csmsModerationStatus'
--
-- * 'csmsUserIP'
--
-- * 'csmsKey'
--
-- * 'csmsId'
--
-- * 'csmsOAuthToken'
--
-- * 'csmsFields'
commentsSetModerationStatus'
    :: YouTubeCommentsSetModerationStatusModerationStatus -- ^ 'moderationStatus'
    -> Text -- ^ 'id'
    -> CommentsSetModerationStatus'
commentsSetModerationStatus' pCsmsModerationStatus_ pCsmsId_ =
    CommentsSetModerationStatus'
    { _csmsQuotaUser = Nothing
    , _csmsPrettyPrint = True
    , _csmsBanAuthor = False
    , _csmsModerationStatus = pCsmsModerationStatus_
    , _csmsUserIP = Nothing
    , _csmsKey = Nothing
    , _csmsId = pCsmsId_
    , _csmsOAuthToken = Nothing
    , _csmsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
csmsQuotaUser :: Lens' CommentsSetModerationStatus' (Maybe Text)
csmsQuotaUser
  = lens _csmsQuotaUser
      (\ s a -> s{_csmsQuotaUser = a})

-- | Returns response with indentations and line breaks.
csmsPrettyPrint :: Lens' CommentsSetModerationStatus' Bool
csmsPrettyPrint
  = lens _csmsPrettyPrint
      (\ s a -> s{_csmsPrettyPrint = a})

-- | The banAuthor parameter lets you indicate that you want to automatically
-- reject any additional comments written by the comment\'s author. Set the
-- parameter value to true to ban the author. Note: This parameter is only
-- valid if the moderationStatus parameter is also set to rejected.
csmsBanAuthor :: Lens' CommentsSetModerationStatus' Bool
csmsBanAuthor
  = lens _csmsBanAuthor
      (\ s a -> s{_csmsBanAuthor = a})

-- | Identifies the new moderation status of the specified comments.
csmsModerationStatus :: Lens' CommentsSetModerationStatus' YouTubeCommentsSetModerationStatusModerationStatus
csmsModerationStatus
  = lens _csmsModerationStatus
      (\ s a -> s{_csmsModerationStatus = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
csmsUserIP :: Lens' CommentsSetModerationStatus' (Maybe Text)
csmsUserIP
  = lens _csmsUserIP (\ s a -> s{_csmsUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csmsKey :: Lens' CommentsSetModerationStatus' (Maybe Key)
csmsKey = lens _csmsKey (\ s a -> s{_csmsKey = a})

-- | The id parameter specifies a comma-separated list of IDs that identify
-- the comments for which you are updating the moderation status.
csmsId :: Lens' CommentsSetModerationStatus' Text
csmsId = lens _csmsId (\ s a -> s{_csmsId = a})

-- | OAuth 2.0 token for the current user.
csmsOAuthToken :: Lens' CommentsSetModerationStatus' (Maybe OAuthToken)
csmsOAuthToken
  = lens _csmsOAuthToken
      (\ s a -> s{_csmsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csmsFields :: Lens' CommentsSetModerationStatus' (Maybe Text)
csmsFields
  = lens _csmsFields (\ s a -> s{_csmsFields = a})

instance GoogleAuth CommentsSetModerationStatus'
         where
        authKey = csmsKey . _Just
        authToken = csmsOAuthToken . _Just

instance GoogleRequest CommentsSetModerationStatus'
         where
        type Rs CommentsSetModerationStatus' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsSetModerationStatus'{..}
          = go (Just _csmsBanAuthor) (Just _csmsId)
              (Just _csmsModerationStatus)
              _csmsQuotaUser
              (Just _csmsPrettyPrint)
              _csmsUserIP
              _csmsFields
              _csmsKey
              _csmsOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsSetModerationStatusResource)
                      r
                      u

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new comment in reply to an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.comments.insert@.
module Network.Google.API.PlusDomains.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertAPI

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , comQuotaUser
    , comPrettyPrint
    , comUserIp
    , comActivityId
    , comKey
    , comOauthToken
    , comFields
    , comAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.comments.insert which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertAPI =
     "activities" :>
       Capture "activityId" Text :>
         "comments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Comment

-- | Create a new comment in reply to an activity.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _comQuotaUser   :: !(Maybe Text)
    , _comPrettyPrint :: !Bool
    , _comUserIp      :: !(Maybe Text)
    , _comActivityId  :: !Text
    , _comKey         :: !(Maybe Text)
    , _comOauthToken  :: !(Maybe Text)
    , _comFields      :: !(Maybe Text)
    , _comAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comQuotaUser'
--
-- * 'comPrettyPrint'
--
-- * 'comUserIp'
--
-- * 'comActivityId'
--
-- * 'comKey'
--
-- * 'comOauthToken'
--
-- * 'comFields'
--
-- * 'comAlt'
commentsInsert'
    :: Text -- ^ 'activityId'
    -> CommentsInsert'
commentsInsert' pComActivityId_ =
    CommentsInsert'
    { _comQuotaUser = Nothing
    , _comPrettyPrint = True
    , _comUserIp = Nothing
    , _comActivityId = pComActivityId_
    , _comKey = Nothing
    , _comOauthToken = Nothing
    , _comFields = Nothing
    , _comAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsInsert' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | Returns response with indentations and line breaks.
comPrettyPrint :: Lens' CommentsInsert' Bool
comPrettyPrint
  = lens _comPrettyPrint
      (\ s a -> s{_comPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comUserIp :: Lens' CommentsInsert' (Maybe Text)
comUserIp
  = lens _comUserIp (\ s a -> s{_comUserIp = a})

-- | The ID of the activity to reply to.
comActivityId :: Lens' CommentsInsert' Text
comActivityId
  = lens _comActivityId
      (\ s a -> s{_comActivityId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comKey :: Lens' CommentsInsert' (Maybe Text)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | OAuth 2.0 token for the current user.
comOauthToken :: Lens' CommentsInsert' (Maybe Text)
comOauthToken
  = lens _comOauthToken
      (\ s a -> s{_comOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsInsert' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

-- | Data format for the response.
comAlt :: Lens' CommentsInsert' Alt
comAlt = lens _comAlt (\ s a -> s{_comAlt = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CommentsInsert'{..}
          = go _comQuotaUser (Just _comPrettyPrint) _comUserIp
              _comActivityId
              _comKey
              _comOauthToken
              _comFields
              (Just _comAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsInsertAPI)
                      r
                      u

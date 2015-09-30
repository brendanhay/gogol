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
-- Module      : Network.Google.Resource.PlusDomains.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new comment in reply to an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCommentsInsert@.
module Network.Google.Resource.PlusDomains.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIp
    , ciActivityId
    , ciKey
    , ciOauthToken
    , ciFields
    , ciAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCommentsInsert@ which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
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
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIp      :: !(Maybe Text)
    , _ciActivityId  :: !Text
    , _ciKey         :: !(Maybe Text)
    , _ciOauthToken  :: !(Maybe Text)
    , _ciFields      :: !(Maybe Text)
    , _ciAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIp'
--
-- * 'ciActivityId'
--
-- * 'ciKey'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
commentsInsert'
    :: Text -- ^ 'activityId'
    -> CommentsInsert'
commentsInsert' pCiActivityId_ =
    CommentsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIp = Nothing
    , _ciActivityId = pCiActivityId_
    , _ciKey = Nothing
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CommentsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CommentsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' CommentsInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | The ID of the activity to reply to.
ciActivityId :: Lens' CommentsInsert' Text
ciActivityId
  = lens _ciActivityId (\ s a -> s{_ciActivityId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CommentsInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' CommentsInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CommentsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' CommentsInsert' Alt
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CommentsInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIp
              _ciActivityId
              _ciKey
              _ciOauthToken
              _ciFields
              (Just _ciAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsInsertResource)
                      r
                      u

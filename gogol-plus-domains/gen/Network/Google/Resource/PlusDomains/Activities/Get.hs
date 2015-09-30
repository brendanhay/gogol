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
-- Module      : Network.Google.Resource.PlusDomains.Activities.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsActivitiesGet@.
module Network.Google.Resource.PlusDomains.Activities.Get
    (
    -- * REST Resource
      ActivitiesGetResource

    -- * Creating a Request
    , activitiesGet'
    , ActivitiesGet'

    -- * Request Lenses
    , agQuotaUser
    , agPrettyPrint
    , agUserIp
    , agActivityId
    , agKey
    , agOauthToken
    , agFields
    , agAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsActivitiesGet@ which the
-- 'ActivitiesGet'' request conforms to.
type ActivitiesGetResource =
     "activities" :>
       Capture "activityId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Activity

-- | Get an activity.
--
-- /See:/ 'activitiesGet'' smart constructor.
data ActivitiesGet' = ActivitiesGet'
    { _agQuotaUser   :: !(Maybe Text)
    , _agPrettyPrint :: !Bool
    , _agUserIp      :: !(Maybe Text)
    , _agActivityId  :: !Text
    , _agKey         :: !(Maybe Text)
    , _agOauthToken  :: !(Maybe Text)
    , _agFields      :: !(Maybe Text)
    , _agAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agQuotaUser'
--
-- * 'agPrettyPrint'
--
-- * 'agUserIp'
--
-- * 'agActivityId'
--
-- * 'agKey'
--
-- * 'agOauthToken'
--
-- * 'agFields'
--
-- * 'agAlt'
activitiesGet'
    :: Text -- ^ 'activityId'
    -> ActivitiesGet'
activitiesGet' pAgActivityId_ =
    ActivitiesGet'
    { _agQuotaUser = Nothing
    , _agPrettyPrint = True
    , _agUserIp = Nothing
    , _agActivityId = pAgActivityId_
    , _agKey = Nothing
    , _agOauthToken = Nothing
    , _agFields = Nothing
    , _agAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agQuotaUser :: Lens' ActivitiesGet' (Maybe Text)
agQuotaUser
  = lens _agQuotaUser (\ s a -> s{_agQuotaUser = a})

-- | Returns response with indentations and line breaks.
agPrettyPrint :: Lens' ActivitiesGet' Bool
agPrettyPrint
  = lens _agPrettyPrint
      (\ s a -> s{_agPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agUserIp :: Lens' ActivitiesGet' (Maybe Text)
agUserIp = lens _agUserIp (\ s a -> s{_agUserIp = a})

-- | The ID of the activity to get.
agActivityId :: Lens' ActivitiesGet' Text
agActivityId
  = lens _agActivityId (\ s a -> s{_agActivityId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agKey :: Lens' ActivitiesGet' (Maybe Text)
agKey = lens _agKey (\ s a -> s{_agKey = a})

-- | OAuth 2.0 token for the current user.
agOauthToken :: Lens' ActivitiesGet' (Maybe Text)
agOauthToken
  = lens _agOauthToken (\ s a -> s{_agOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agFields :: Lens' ActivitiesGet' (Maybe Text)
agFields = lens _agFields (\ s a -> s{_agFields = a})

-- | Data format for the response.
agAlt :: Lens' ActivitiesGet' Alt
agAlt = lens _agAlt (\ s a -> s{_agAlt = a})

instance GoogleRequest ActivitiesGet' where
        type Rs ActivitiesGet' = Activity
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u ActivitiesGet'{..}
          = go _agQuotaUser (Just _agPrettyPrint) _agUserIp
              _agActivityId
              _agKey
              _agOauthToken
              _agFields
              (Just _agAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesGetResource)
                      r
                      u

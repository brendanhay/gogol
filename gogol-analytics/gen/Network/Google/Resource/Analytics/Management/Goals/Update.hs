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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsUpdate@.
module Network.Google.Resource.Analytics.Management.Goals.Update
    (
    -- * REST Resource
      ManagementGoalsUpdateResource

    -- * Creating a Request
    , managementGoalsUpdate'
    , ManagementGoalsUpdate'

    -- * Request Lenses
    , mguQuotaUser
    , mguPrettyPrint
    , mguWebPropertyId
    , mguGoalId
    , mguUserIp
    , mguProfileId
    , mguAccountId
    , mguKey
    , mguOauthToken
    , mguFields
    , mguAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsUpdate@ which the
-- 'ManagementGoalsUpdate'' request conforms to.
type ManagementGoalsUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     Capture "goalId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Put '[JSON] Goal

-- | Updates an existing view (profile).
--
-- /See:/ 'managementGoalsUpdate'' smart constructor.
data ManagementGoalsUpdate' = ManagementGoalsUpdate'
    { _mguQuotaUser     :: !(Maybe Text)
    , _mguPrettyPrint   :: !Bool
    , _mguWebPropertyId :: !Text
    , _mguGoalId        :: !Text
    , _mguUserIp        :: !(Maybe Text)
    , _mguProfileId     :: !Text
    , _mguAccountId     :: !Text
    , _mguKey           :: !(Maybe Text)
    , _mguOauthToken    :: !(Maybe Text)
    , _mguFields        :: !(Maybe Text)
    , _mguAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mguQuotaUser'
--
-- * 'mguPrettyPrint'
--
-- * 'mguWebPropertyId'
--
-- * 'mguGoalId'
--
-- * 'mguUserIp'
--
-- * 'mguProfileId'
--
-- * 'mguAccountId'
--
-- * 'mguKey'
--
-- * 'mguOauthToken'
--
-- * 'mguFields'
--
-- * 'mguAlt'
managementGoalsUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsUpdate'
managementGoalsUpdate' pMguWebPropertyId_ pMguGoalId_ pMguProfileId_ pMguAccountId_ =
    ManagementGoalsUpdate'
    { _mguQuotaUser = Nothing
    , _mguPrettyPrint = False
    , _mguWebPropertyId = pMguWebPropertyId_
    , _mguGoalId = pMguGoalId_
    , _mguUserIp = Nothing
    , _mguProfileId = pMguProfileId_
    , _mguAccountId = pMguAccountId_
    , _mguKey = Nothing
    , _mguOauthToken = Nothing
    , _mguFields = Nothing
    , _mguAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mguQuotaUser :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguQuotaUser
  = lens _mguQuotaUser (\ s a -> s{_mguQuotaUser = a})

-- | Returns response with indentations and line breaks.
mguPrettyPrint :: Lens' ManagementGoalsUpdate' Bool
mguPrettyPrint
  = lens _mguPrettyPrint
      (\ s a -> s{_mguPrettyPrint = a})

-- | Web property ID to update the goal.
mguWebPropertyId :: Lens' ManagementGoalsUpdate' Text
mguWebPropertyId
  = lens _mguWebPropertyId
      (\ s a -> s{_mguWebPropertyId = a})

-- | Index of the goal to be updated.
mguGoalId :: Lens' ManagementGoalsUpdate' Text
mguGoalId
  = lens _mguGoalId (\ s a -> s{_mguGoalId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mguUserIp :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguUserIp
  = lens _mguUserIp (\ s a -> s{_mguUserIp = a})

-- | View (Profile) ID to update the goal.
mguProfileId :: Lens' ManagementGoalsUpdate' Text
mguProfileId
  = lens _mguProfileId (\ s a -> s{_mguProfileId = a})

-- | Account ID to update the goal.
mguAccountId :: Lens' ManagementGoalsUpdate' Text
mguAccountId
  = lens _mguAccountId (\ s a -> s{_mguAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mguKey :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguKey = lens _mguKey (\ s a -> s{_mguKey = a})

-- | OAuth 2.0 token for the current user.
mguOauthToken :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguOauthToken
  = lens _mguOauthToken
      (\ s a -> s{_mguOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mguFields :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguFields
  = lens _mguFields (\ s a -> s{_mguFields = a})

-- | Data format for the response.
mguAlt :: Lens' ManagementGoalsUpdate' Alt
mguAlt = lens _mguAlt (\ s a -> s{_mguAlt = a})

instance GoogleRequest ManagementGoalsUpdate' where
        type Rs ManagementGoalsUpdate' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsUpdate'{..}
          = go _mguQuotaUser (Just _mguPrettyPrint)
              _mguWebPropertyId
              _mguGoalId
              _mguUserIp
              _mguProfileId
              _mguAccountId
              _mguKey
              _mguOauthToken
              _mguFields
              (Just _mguAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsUpdateResource)
                      r
                      u

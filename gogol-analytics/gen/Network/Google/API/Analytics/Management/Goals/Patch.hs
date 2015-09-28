{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Goals.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.goals.patch@.
module Network.Google.API.Analytics.Management.Goals.Patch
    (
    -- * REST Resource
      ManagementGoalsPatchAPI

    -- * Creating a Request
    , managementGoalsPatch'
    , ManagementGoalsPatch'

    -- * Request Lenses
    , mgpQuotaUser
    , mgpPrettyPrint
    , mgpWebPropertyId
    , mgpGoalId
    , mgpUserIp
    , mgpProfileId
    , mgpAccountId
    , mgpKey
    , mgpOauthToken
    , mgpFields
    , mgpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.goals.patch which the
-- 'ManagementGoalsPatch'' request conforms to.
type ManagementGoalsPatchAPI =
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
                                   QueryParam "alt" Alt :> Patch '[JSON] Goal

-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ 'managementGoalsPatch'' smart constructor.
data ManagementGoalsPatch' = ManagementGoalsPatch'
    { _mgpQuotaUser     :: !(Maybe Text)
    , _mgpPrettyPrint   :: !Bool
    , _mgpWebPropertyId :: !Text
    , _mgpGoalId        :: !Text
    , _mgpUserIp        :: !(Maybe Text)
    , _mgpProfileId     :: !Text
    , _mgpAccountId     :: !Text
    , _mgpKey           :: !(Maybe Text)
    , _mgpOauthToken    :: !(Maybe Text)
    , _mgpFields        :: !(Maybe Text)
    , _mgpAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgpQuotaUser'
--
-- * 'mgpPrettyPrint'
--
-- * 'mgpWebPropertyId'
--
-- * 'mgpGoalId'
--
-- * 'mgpUserIp'
--
-- * 'mgpProfileId'
--
-- * 'mgpAccountId'
--
-- * 'mgpKey'
--
-- * 'mgpOauthToken'
--
-- * 'mgpFields'
--
-- * 'mgpAlt'
managementGoalsPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsPatch'
managementGoalsPatch' pMgpWebPropertyId_ pMgpGoalId_ pMgpProfileId_ pMgpAccountId_ =
    ManagementGoalsPatch'
    { _mgpQuotaUser = Nothing
    , _mgpPrettyPrint = False
    , _mgpWebPropertyId = pMgpWebPropertyId_
    , _mgpGoalId = pMgpGoalId_
    , _mgpUserIp = Nothing
    , _mgpProfileId = pMgpProfileId_
    , _mgpAccountId = pMgpAccountId_
    , _mgpKey = Nothing
    , _mgpOauthToken = Nothing
    , _mgpFields = Nothing
    , _mgpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgpQuotaUser :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpQuotaUser
  = lens _mgpQuotaUser (\ s a -> s{_mgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgpPrettyPrint :: Lens' ManagementGoalsPatch' Bool
mgpPrettyPrint
  = lens _mgpPrettyPrint
      (\ s a -> s{_mgpPrettyPrint = a})

-- | Web property ID to update the goal.
mgpWebPropertyId :: Lens' ManagementGoalsPatch' Text
mgpWebPropertyId
  = lens _mgpWebPropertyId
      (\ s a -> s{_mgpWebPropertyId = a})

-- | Index of the goal to be updated.
mgpGoalId :: Lens' ManagementGoalsPatch' Text
mgpGoalId
  = lens _mgpGoalId (\ s a -> s{_mgpGoalId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgpUserIp :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpUserIp
  = lens _mgpUserIp (\ s a -> s{_mgpUserIp = a})

-- | View (Profile) ID to update the goal.
mgpProfileId :: Lens' ManagementGoalsPatch' Text
mgpProfileId
  = lens _mgpProfileId (\ s a -> s{_mgpProfileId = a})

-- | Account ID to update the goal.
mgpAccountId :: Lens' ManagementGoalsPatch' Text
mgpAccountId
  = lens _mgpAccountId (\ s a -> s{_mgpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgpKey :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpKey = lens _mgpKey (\ s a -> s{_mgpKey = a})

-- | OAuth 2.0 token for the current user.
mgpOauthToken :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpOauthToken
  = lens _mgpOauthToken
      (\ s a -> s{_mgpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgpFields :: Lens' ManagementGoalsPatch' (Maybe Text)
mgpFields
  = lens _mgpFields (\ s a -> s{_mgpFields = a})

-- | Data format for the response.
mgpAlt :: Lens' ManagementGoalsPatch' Alt
mgpAlt = lens _mgpAlt (\ s a -> s{_mgpAlt = a})

instance GoogleRequest ManagementGoalsPatch' where
        type Rs ManagementGoalsPatch' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsPatch'{..}
          = go _mgpQuotaUser (Just _mgpPrettyPrint)
              _mgpWebPropertyId
              _mgpGoalId
              _mgpUserIp
              _mgpProfileId
              _mgpAccountId
              _mgpKey
              _mgpOauthToken
              _mgpFields
              (Just _mgpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsPatchAPI)
                      r
                      u

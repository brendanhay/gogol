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
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a goal to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsGet@.
module Network.Google.Resource.Analytics.Management.Goals.Get
    (
    -- * REST Resource
      ManagementGoalsGetResource

    -- * Creating a Request
    , managementGoalsGet'
    , ManagementGoalsGet'

    -- * Request Lenses
    , mggQuotaUser
    , mggPrettyPrint
    , mggWebPropertyId
    , mggGoalId
    , mggUserIp
    , mggProfileId
    , mggAccountId
    , mggKey
    , mggOauthToken
    , mggFields
    , mggAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsGet@ which the
-- 'ManagementGoalsGet'' request conforms to.
type ManagementGoalsGetResource =
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
                                   QueryParam "alt" Alt :> Get '[JSON] Goal

-- | Gets a goal to which the user has access.
--
-- /See:/ 'managementGoalsGet'' smart constructor.
data ManagementGoalsGet' = ManagementGoalsGet'
    { _mggQuotaUser     :: !(Maybe Text)
    , _mggPrettyPrint   :: !Bool
    , _mggWebPropertyId :: !Text
    , _mggGoalId        :: !Text
    , _mggUserIp        :: !(Maybe Text)
    , _mggProfileId     :: !Text
    , _mggAccountId     :: !Text
    , _mggKey           :: !(Maybe Text)
    , _mggOauthToken    :: !(Maybe Text)
    , _mggFields        :: !(Maybe Text)
    , _mggAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mggQuotaUser'
--
-- * 'mggPrettyPrint'
--
-- * 'mggWebPropertyId'
--
-- * 'mggGoalId'
--
-- * 'mggUserIp'
--
-- * 'mggProfileId'
--
-- * 'mggAccountId'
--
-- * 'mggKey'
--
-- * 'mggOauthToken'
--
-- * 'mggFields'
--
-- * 'mggAlt'
managementGoalsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsGet'
managementGoalsGet' pMggWebPropertyId_ pMggGoalId_ pMggProfileId_ pMggAccountId_ =
    ManagementGoalsGet'
    { _mggQuotaUser = Nothing
    , _mggPrettyPrint = False
    , _mggWebPropertyId = pMggWebPropertyId_
    , _mggGoalId = pMggGoalId_
    , _mggUserIp = Nothing
    , _mggProfileId = pMggProfileId_
    , _mggAccountId = pMggAccountId_
    , _mggKey = Nothing
    , _mggOauthToken = Nothing
    , _mggFields = Nothing
    , _mggAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mggQuotaUser :: Lens' ManagementGoalsGet' (Maybe Text)
mggQuotaUser
  = lens _mggQuotaUser (\ s a -> s{_mggQuotaUser = a})

-- | Returns response with indentations and line breaks.
mggPrettyPrint :: Lens' ManagementGoalsGet' Bool
mggPrettyPrint
  = lens _mggPrettyPrint
      (\ s a -> s{_mggPrettyPrint = a})

-- | Web property ID to retrieve the goal for.
mggWebPropertyId :: Lens' ManagementGoalsGet' Text
mggWebPropertyId
  = lens _mggWebPropertyId
      (\ s a -> s{_mggWebPropertyId = a})

-- | Goal ID to retrieve the goal for.
mggGoalId :: Lens' ManagementGoalsGet' Text
mggGoalId
  = lens _mggGoalId (\ s a -> s{_mggGoalId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mggUserIp :: Lens' ManagementGoalsGet' (Maybe Text)
mggUserIp
  = lens _mggUserIp (\ s a -> s{_mggUserIp = a})

-- | View (Profile) ID to retrieve the goal for.
mggProfileId :: Lens' ManagementGoalsGet' Text
mggProfileId
  = lens _mggProfileId (\ s a -> s{_mggProfileId = a})

-- | Account ID to retrieve the goal for.
mggAccountId :: Lens' ManagementGoalsGet' Text
mggAccountId
  = lens _mggAccountId (\ s a -> s{_mggAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mggKey :: Lens' ManagementGoalsGet' (Maybe Text)
mggKey = lens _mggKey (\ s a -> s{_mggKey = a})

-- | OAuth 2.0 token for the current user.
mggOauthToken :: Lens' ManagementGoalsGet' (Maybe Text)
mggOauthToken
  = lens _mggOauthToken
      (\ s a -> s{_mggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mggFields :: Lens' ManagementGoalsGet' (Maybe Text)
mggFields
  = lens _mggFields (\ s a -> s{_mggFields = a})

-- | Data format for the response.
mggAlt :: Lens' ManagementGoalsGet' Alt
mggAlt = lens _mggAlt (\ s a -> s{_mggAlt = a})

instance GoogleRequest ManagementGoalsGet' where
        type Rs ManagementGoalsGet' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsGet'{..}
          = go _mggQuotaUser (Just _mggPrettyPrint)
              _mggWebPropertyId
              _mggGoalId
              _mggUserIp
              _mggProfileId
              _mggAccountId
              _mggKey
              _mggOauthToken
              _mggFields
              (Just _mggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsGetResource)
                      r
                      u

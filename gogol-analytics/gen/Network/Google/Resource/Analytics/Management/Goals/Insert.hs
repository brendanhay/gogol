{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Goals.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new goal.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsInsert@.
module Analytics.Management.Goals.Insert
    (
    -- * REST Resource
      ManagementGoalsInsertAPI

    -- * Creating a Request
    , managementGoalsInsert
    , ManagementGoalsInsert

    -- * Request Lenses
    , mgiQuotaUser
    , mgiPrettyPrint
    , mgiWebPropertyId
    , mgiUserIp
    , mgiProfileId
    , mgiAccountId
    , mgiKey
    , mgiOauthToken
    , mgiFields
    , mgiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsInsert@ which the
-- 'ManagementGoalsInsert' request conforms to.
type ManagementGoalsInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :> Post '[JSON] Goal

-- | Create a new goal.
--
-- /See:/ 'managementGoalsInsert' smart constructor.
data ManagementGoalsInsert = ManagementGoalsInsert
    { _mgiQuotaUser     :: !(Maybe Text)
    , _mgiPrettyPrint   :: !Bool
    , _mgiWebPropertyId :: !Text
    , _mgiUserIp        :: !(Maybe Text)
    , _mgiProfileId     :: !Text
    , _mgiAccountId     :: !Text
    , _mgiKey           :: !(Maybe Text)
    , _mgiOauthToken    :: !(Maybe Text)
    , _mgiFields        :: !(Maybe Text)
    , _mgiAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgiQuotaUser'
--
-- * 'mgiPrettyPrint'
--
-- * 'mgiWebPropertyId'
--
-- * 'mgiUserIp'
--
-- * 'mgiProfileId'
--
-- * 'mgiAccountId'
--
-- * 'mgiKey'
--
-- * 'mgiOauthToken'
--
-- * 'mgiFields'
--
-- * 'mgiAlt'
managementGoalsInsert
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsInsert
managementGoalsInsert pMgiWebPropertyId_ pMgiProfileId_ pMgiAccountId_ =
    ManagementGoalsInsert
    { _mgiQuotaUser = Nothing
    , _mgiPrettyPrint = False
    , _mgiWebPropertyId = pMgiWebPropertyId_
    , _mgiUserIp = Nothing
    , _mgiProfileId = pMgiProfileId_
    , _mgiAccountId = pMgiAccountId_
    , _mgiKey = Nothing
    , _mgiOauthToken = Nothing
    , _mgiFields = Nothing
    , _mgiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgiQuotaUser :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiQuotaUser
  = lens _mgiQuotaUser (\ s a -> s{_mgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgiPrettyPrint :: Lens' ManagementGoalsInsert' Bool
mgiPrettyPrint
  = lens _mgiPrettyPrint
      (\ s a -> s{_mgiPrettyPrint = a})

-- | Web property ID to create the goal for.
mgiWebPropertyId :: Lens' ManagementGoalsInsert' Text
mgiWebPropertyId
  = lens _mgiWebPropertyId
      (\ s a -> s{_mgiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgiUserIp :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiUserIp
  = lens _mgiUserIp (\ s a -> s{_mgiUserIp = a})

-- | View (Profile) ID to create the goal for.
mgiProfileId :: Lens' ManagementGoalsInsert' Text
mgiProfileId
  = lens _mgiProfileId (\ s a -> s{_mgiProfileId = a})

-- | Account ID to create the goal for.
mgiAccountId :: Lens' ManagementGoalsInsert' Text
mgiAccountId
  = lens _mgiAccountId (\ s a -> s{_mgiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgiKey :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiKey = lens _mgiKey (\ s a -> s{_mgiKey = a})

-- | OAuth 2.0 token for the current user.
mgiOauthToken :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiOauthToken
  = lens _mgiOauthToken
      (\ s a -> s{_mgiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgiFields :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiFields
  = lens _mgiFields (\ s a -> s{_mgiFields = a})

-- | Data format for the response.
mgiAlt :: Lens' ManagementGoalsInsert' Text
mgiAlt = lens _mgiAlt (\ s a -> s{_mgiAlt = a})

instance GoogleRequest ManagementGoalsInsert' where
        type Rs ManagementGoalsInsert' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsInsert{..}
          = go _mgiQuotaUser _mgiPrettyPrint _mgiWebPropertyId
              _mgiUserIp
              _mgiProfileId
              _mgiAccountId
              _mgiKey
              _mgiOauthToken
              _mgiFields
              _mgiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsInsertAPI)
                      r
                      u

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
module Network.Google.Resource.Analytics.Management.Goals.Insert
    (
    -- * REST Resource
      ManagementGoalsInsertResource

    -- * Creating a Request
    , managementGoalsInsert'
    , ManagementGoalsInsert'

    -- * Request Lenses
    , mgiQuotaUser
    , mgiPrettyPrint
    , mgiWebPropertyId
    , mgiUserIP
    , mgiProfileId
    , mgiAccountId
    , mgiKey
    , mgiGoal
    , mgiOAuthToken
    , mgiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsInsert@ which the
-- 'ManagementGoalsInsert'' request conforms to.
type ManagementGoalsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Goal :> Post '[JSON] Goal

-- | Create a new goal.
--
-- /See:/ 'managementGoalsInsert'' smart constructor.
data ManagementGoalsInsert' = ManagementGoalsInsert'
    { _mgiQuotaUser     :: !(Maybe Text)
    , _mgiPrettyPrint   :: !Bool
    , _mgiWebPropertyId :: !Text
    , _mgiUserIP        :: !(Maybe Text)
    , _mgiProfileId     :: !Text
    , _mgiAccountId     :: !Text
    , _mgiKey           :: !(Maybe Key)
    , _mgiGoal          :: !Goal
    , _mgiOAuthToken    :: !(Maybe OAuthToken)
    , _mgiFields        :: !(Maybe Text)
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
-- * 'mgiUserIP'
--
-- * 'mgiProfileId'
--
-- * 'mgiAccountId'
--
-- * 'mgiKey'
--
-- * 'mgiGoal'
--
-- * 'mgiOAuthToken'
--
-- * 'mgiFields'
managementGoalsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Goal -- ^ 'Goal'
    -> ManagementGoalsInsert'
managementGoalsInsert' pMgiWebPropertyId_ pMgiProfileId_ pMgiAccountId_ pMgiGoal_ =
    ManagementGoalsInsert'
    { _mgiQuotaUser = Nothing
    , _mgiPrettyPrint = False
    , _mgiWebPropertyId = pMgiWebPropertyId_
    , _mgiUserIP = Nothing
    , _mgiProfileId = pMgiProfileId_
    , _mgiAccountId = pMgiAccountId_
    , _mgiKey = Nothing
    , _mgiGoal = pMgiGoal_
    , _mgiOAuthToken = Nothing
    , _mgiFields = Nothing
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
mgiUserIP :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiUserIP
  = lens _mgiUserIP (\ s a -> s{_mgiUserIP = a})

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
mgiKey :: Lens' ManagementGoalsInsert' (Maybe Key)
mgiKey = lens _mgiKey (\ s a -> s{_mgiKey = a})

-- | Multipart request metadata.
mgiGoal :: Lens' ManagementGoalsInsert' Goal
mgiGoal = lens _mgiGoal (\ s a -> s{_mgiGoal = a})

-- | OAuth 2.0 token for the current user.
mgiOAuthToken :: Lens' ManagementGoalsInsert' (Maybe OAuthToken)
mgiOAuthToken
  = lens _mgiOAuthToken
      (\ s a -> s{_mgiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgiFields :: Lens' ManagementGoalsInsert' (Maybe Text)
mgiFields
  = lens _mgiFields (\ s a -> s{_mgiFields = a})

instance GoogleAuth ManagementGoalsInsert' where
        authKey = mgiKey . _Just
        authToken = mgiOAuthToken . _Just

instance GoogleRequest ManagementGoalsInsert' where
        type Rs ManagementGoalsInsert' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsInsert'{..}
          = go _mgiQuotaUser (Just _mgiPrettyPrint)
              _mgiWebPropertyId
              _mgiUserIP
              _mgiProfileId
              _mgiAccountId
              _mgiKey
              _mgiOAuthToken
              _mgiFields
              (Just AltJSON)
              _mgiGoal
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsInsertResource)
                      r
                      u

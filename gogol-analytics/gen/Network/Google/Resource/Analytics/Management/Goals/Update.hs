{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , mguUserIP
    , mguProFileId
    , mguPayload
    , mguAccountId
    , mguKey
    , mguOAuthToken
    , mguFields
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
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Goal :> Put '[JSON] Goal

-- | Updates an existing view (profile).
--
-- /See:/ 'managementGoalsUpdate'' smart constructor.
data ManagementGoalsUpdate' = ManagementGoalsUpdate'
    { _mguQuotaUser     :: !(Maybe Text)
    , _mguPrettyPrint   :: !Bool
    , _mguWebPropertyId :: !Text
    , _mguGoalId        :: !Text
    , _mguUserIP        :: !(Maybe Text)
    , _mguProFileId     :: !Text
    , _mguPayload       :: !Goal
    , _mguAccountId     :: !Text
    , _mguKey           :: !(Maybe Key)
    , _mguOAuthToken    :: !(Maybe OAuthToken)
    , _mguFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mguUserIP'
--
-- * 'mguProFileId'
--
-- * 'mguPayload'
--
-- * 'mguAccountId'
--
-- * 'mguKey'
--
-- * 'mguOAuthToken'
--
-- * 'mguFields'
managementGoalsUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Goal -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsUpdate'
managementGoalsUpdate' pMguWebPropertyId_ pMguGoalId_ pMguProFileId_ pMguPayload_ pMguAccountId_ =
    ManagementGoalsUpdate'
    { _mguQuotaUser = Nothing
    , _mguPrettyPrint = False
    , _mguWebPropertyId = pMguWebPropertyId_
    , _mguGoalId = pMguGoalId_
    , _mguUserIP = Nothing
    , _mguProFileId = pMguProFileId_
    , _mguPayload = pMguPayload_
    , _mguAccountId = pMguAccountId_
    , _mguKey = Nothing
    , _mguOAuthToken = Nothing
    , _mguFields = Nothing
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
mguUserIP :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguUserIP
  = lens _mguUserIP (\ s a -> s{_mguUserIP = a})

-- | View (Profile) ID to update the goal.
mguProFileId :: Lens' ManagementGoalsUpdate' Text
mguProFileId
  = lens _mguProFileId (\ s a -> s{_mguProFileId = a})

-- | Multipart request metadata.
mguPayload :: Lens' ManagementGoalsUpdate' Goal
mguPayload
  = lens _mguPayload (\ s a -> s{_mguPayload = a})

-- | Account ID to update the goal.
mguAccountId :: Lens' ManagementGoalsUpdate' Text
mguAccountId
  = lens _mguAccountId (\ s a -> s{_mguAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mguKey :: Lens' ManagementGoalsUpdate' (Maybe Key)
mguKey = lens _mguKey (\ s a -> s{_mguKey = a})

-- | OAuth 2.0 token for the current user.
mguOAuthToken :: Lens' ManagementGoalsUpdate' (Maybe OAuthToken)
mguOAuthToken
  = lens _mguOAuthToken
      (\ s a -> s{_mguOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mguFields :: Lens' ManagementGoalsUpdate' (Maybe Text)
mguFields
  = lens _mguFields (\ s a -> s{_mguFields = a})

instance GoogleAuth ManagementGoalsUpdate' where
        authKey = mguKey . _Just
        authToken = mguOAuthToken . _Just

instance GoogleRequest ManagementGoalsUpdate' where
        type Rs ManagementGoalsUpdate' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsUpdate'{..}
          = go _mguAccountId _mguWebPropertyId _mguProFileId
              _mguGoalId
              _mguQuotaUser
              (Just _mguPrettyPrint)
              _mguUserIP
              _mguFields
              _mguKey
              _mguOAuthToken
              (Just AltJSON)
              _mguPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsUpdateResource)
                      r
                      u

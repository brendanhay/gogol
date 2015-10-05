{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , mggUserIP
    , mggProFileId
    , mggAccountId
    , mggKey
    , mggOAuthToken
    , mggFields
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

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
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Get '[JSON] Goal

-- | Gets a goal to which the user has access.
--
-- /See:/ 'managementGoalsGet'' smart constructor.
data ManagementGoalsGet' = ManagementGoalsGet'
    { _mggQuotaUser :: !(Maybe Text)
    , _mggPrettyPrint :: !Bool
    , _mggWebPropertyId :: !Text
    , _mggGoalId :: !Text
    , _mggUserIP :: !(Maybe Text)
    , _mggProFileId :: !Text
    , _mggAccountId :: !Text
    , _mggKey :: !(Maybe Key)
    , _mggOAuthToken :: !(Maybe OAuthToken)
    , _mggFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mggUserIP'
--
-- * 'mggProFileId'
--
-- * 'mggAccountId'
--
-- * 'mggKey'
--
-- * 'mggOAuthToken'
--
-- * 'mggFields'
managementGoalsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'goalId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsGet'
managementGoalsGet' pMggWebPropertyId_ pMggGoalId_ pMggProFileId_ pMggAccountId_ = 
    ManagementGoalsGet'
    { _mggQuotaUser = Nothing
    , _mggPrettyPrint = False
    , _mggWebPropertyId = pMggWebPropertyId_
    , _mggGoalId = pMggGoalId_
    , _mggUserIP = Nothing
    , _mggProFileId = pMggProFileId_
    , _mggAccountId = pMggAccountId_
    , _mggKey = Nothing
    , _mggOAuthToken = Nothing
    , _mggFields = Nothing
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
mggUserIP :: Lens' ManagementGoalsGet' (Maybe Text)
mggUserIP
  = lens _mggUserIP (\ s a -> s{_mggUserIP = a})

-- | View (Profile) ID to retrieve the goal for.
mggProFileId :: Lens' ManagementGoalsGet' Text
mggProFileId
  = lens _mggProFileId (\ s a -> s{_mggProFileId = a})

-- | Account ID to retrieve the goal for.
mggAccountId :: Lens' ManagementGoalsGet' Text
mggAccountId
  = lens _mggAccountId (\ s a -> s{_mggAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mggKey :: Lens' ManagementGoalsGet' (Maybe Key)
mggKey = lens _mggKey (\ s a -> s{_mggKey = a})

-- | OAuth 2.0 token for the current user.
mggOAuthToken :: Lens' ManagementGoalsGet' (Maybe OAuthToken)
mggOAuthToken
  = lens _mggOAuthToken
      (\ s a -> s{_mggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mggFields :: Lens' ManagementGoalsGet' (Maybe Text)
mggFields
  = lens _mggFields (\ s a -> s{_mggFields = a})

instance GoogleAuth ManagementGoalsGet' where
        authKey = mggKey . _Just
        authToken = mggOAuthToken . _Just

instance GoogleRequest ManagementGoalsGet' where
        type Rs ManagementGoalsGet' = Goal
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsGet'{..}
          = go _mggAccountId _mggWebPropertyId _mggProFileId
              _mggGoalId
              _mggQuotaUser
              (Just _mggPrettyPrint)
              _mggUserIP
              _mggFields
              _mggKey
              _mggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsGetResource)
                      r
                      u

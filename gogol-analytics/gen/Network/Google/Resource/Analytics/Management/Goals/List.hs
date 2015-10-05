{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Goals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists goals to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementGoalsList@.
module Network.Google.Resource.Analytics.Management.Goals.List
    (
    -- * REST Resource
      ManagementGoalsListResource

    -- * Creating a Request
    , managementGoalsList'
    , ManagementGoalsList'

    -- * Request Lenses
    , mglQuotaUser
    , mglPrettyPrint
    , mglWebPropertyId
    , mglUserIP
    , mglProFileId
    , mglAccountId
    , mglKey
    , mglOAuthToken
    , mglStartIndex
    , mglMaxResults
    , mglFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementGoalsList@ which the
-- 'ManagementGoalsList'' request conforms to.
type ManagementGoalsListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "goals" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Goals

-- | Lists goals to which the user has access.
--
-- /See:/ 'managementGoalsList'' smart constructor.
data ManagementGoalsList' = ManagementGoalsList'
    { _mglQuotaUser     :: !(Maybe Text)
    , _mglPrettyPrint   :: !Bool
    , _mglWebPropertyId :: !Text
    , _mglUserIP        :: !(Maybe Text)
    , _mglProFileId     :: !Text
    , _mglAccountId     :: !Text
    , _mglKey           :: !(Maybe Key)
    , _mglOAuthToken    :: !(Maybe OAuthToken)
    , _mglStartIndex    :: !(Maybe Int32)
    , _mglMaxResults    :: !(Maybe Int32)
    , _mglFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementGoalsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mglQuotaUser'
--
-- * 'mglPrettyPrint'
--
-- * 'mglWebPropertyId'
--
-- * 'mglUserIP'
--
-- * 'mglProFileId'
--
-- * 'mglAccountId'
--
-- * 'mglKey'
--
-- * 'mglOAuthToken'
--
-- * 'mglStartIndex'
--
-- * 'mglMaxResults'
--
-- * 'mglFields'
managementGoalsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementGoalsList'
managementGoalsList' pMglWebPropertyId_ pMglProFileId_ pMglAccountId_ =
    ManagementGoalsList'
    { _mglQuotaUser = Nothing
    , _mglPrettyPrint = False
    , _mglWebPropertyId = pMglWebPropertyId_
    , _mglUserIP = Nothing
    , _mglProFileId = pMglProFileId_
    , _mglAccountId = pMglAccountId_
    , _mglKey = Nothing
    , _mglOAuthToken = Nothing
    , _mglStartIndex = Nothing
    , _mglMaxResults = Nothing
    , _mglFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mglQuotaUser :: Lens' ManagementGoalsList' (Maybe Text)
mglQuotaUser
  = lens _mglQuotaUser (\ s a -> s{_mglQuotaUser = a})

-- | Returns response with indentations and line breaks.
mglPrettyPrint :: Lens' ManagementGoalsList' Bool
mglPrettyPrint
  = lens _mglPrettyPrint
      (\ s a -> s{_mglPrettyPrint = a})

-- | Web property ID to retrieve goals for. Can either be a specific web
-- property ID or \'~all\', which refers to all the web properties that
-- user has access to.
mglWebPropertyId :: Lens' ManagementGoalsList' Text
mglWebPropertyId
  = lens _mglWebPropertyId
      (\ s a -> s{_mglWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mglUserIP :: Lens' ManagementGoalsList' (Maybe Text)
mglUserIP
  = lens _mglUserIP (\ s a -> s{_mglUserIP = a})

-- | View (Profile) ID to retrieve goals for. Can either be a specific view
-- (profile) ID or \'~all\', which refers to all the views (profiles) that
-- user has access to.
mglProFileId :: Lens' ManagementGoalsList' Text
mglProFileId
  = lens _mglProFileId (\ s a -> s{_mglProFileId = a})

-- | Account ID to retrieve goals for. Can either be a specific account ID or
-- \'~all\', which refers to all the accounts that user has access to.
mglAccountId :: Lens' ManagementGoalsList' Text
mglAccountId
  = lens _mglAccountId (\ s a -> s{_mglAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mglKey :: Lens' ManagementGoalsList' (Maybe Key)
mglKey = lens _mglKey (\ s a -> s{_mglKey = a})

-- | OAuth 2.0 token for the current user.
mglOAuthToken :: Lens' ManagementGoalsList' (Maybe OAuthToken)
mglOAuthToken
  = lens _mglOAuthToken
      (\ s a -> s{_mglOAuthToken = a})

-- | An index of the first goal to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mglStartIndex :: Lens' ManagementGoalsList' (Maybe Int32)
mglStartIndex
  = lens _mglStartIndex
      (\ s a -> s{_mglStartIndex = a})

-- | The maximum number of goals to include in this response.
mglMaxResults :: Lens' ManagementGoalsList' (Maybe Int32)
mglMaxResults
  = lens _mglMaxResults
      (\ s a -> s{_mglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mglFields :: Lens' ManagementGoalsList' (Maybe Text)
mglFields
  = lens _mglFields (\ s a -> s{_mglFields = a})

instance GoogleAuth ManagementGoalsList' where
        authKey = mglKey . _Just
        authToken = mglOAuthToken . _Just

instance GoogleRequest ManagementGoalsList' where
        type Rs ManagementGoalsList' = Goals
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementGoalsList'{..}
          = go _mglAccountId _mglWebPropertyId _mglProFileId
              _mglStartIndex
              _mglMaxResults
              _mglQuotaUser
              (Just _mglPrettyPrint)
              _mglUserIP
              _mglFields
              _mglKey
              _mglOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementGoalsListResource)
                      r
                      u

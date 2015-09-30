{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists experiments to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsList@.
module Analytics.Management.Experiments.List
    (
    -- * REST Resource
      ManagementExperimentsListAPI

    -- * Creating a Request
    , managementExperimentsList
    , ManagementExperimentsList

    -- * Request Lenses
    , melQuotaUser
    , melPrettyPrint
    , melWebPropertyId
    , melUserIp
    , melProfileId
    , melAccountId
    , melKey
    , melOauthToken
    , melStartIndex
    , melMaxResults
    , melFields
    , melAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsList@ which the
-- 'ManagementExperimentsList' request conforms to.
type ManagementExperimentsListAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         Get '[JSON] Experiments

-- | Lists experiments to which the user has access.
--
-- /See:/ 'managementExperimentsList' smart constructor.
data ManagementExperimentsList = ManagementExperimentsList
    { _melQuotaUser     :: !(Maybe Text)
    , _melPrettyPrint   :: !Bool
    , _melWebPropertyId :: !Text
    , _melUserIp        :: !(Maybe Text)
    , _melProfileId     :: !Text
    , _melAccountId     :: !Text
    , _melKey           :: !(Maybe Text)
    , _melOauthToken    :: !(Maybe Text)
    , _melStartIndex    :: !(Maybe Int32)
    , _melMaxResults    :: !(Maybe Int32)
    , _melFields        :: !(Maybe Text)
    , _melAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'melQuotaUser'
--
-- * 'melPrettyPrint'
--
-- * 'melWebPropertyId'
--
-- * 'melUserIp'
--
-- * 'melProfileId'
--
-- * 'melAccountId'
--
-- * 'melKey'
--
-- * 'melOauthToken'
--
-- * 'melStartIndex'
--
-- * 'melMaxResults'
--
-- * 'melFields'
--
-- * 'melAlt'
managementExperimentsList
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementExperimentsList
managementExperimentsList pMelWebPropertyId_ pMelProfileId_ pMelAccountId_ =
    ManagementExperimentsList
    { _melQuotaUser = Nothing
    , _melPrettyPrint = False
    , _melWebPropertyId = pMelWebPropertyId_
    , _melUserIp = Nothing
    , _melProfileId = pMelProfileId_
    , _melAccountId = pMelAccountId_
    , _melKey = Nothing
    , _melOauthToken = Nothing
    , _melStartIndex = Nothing
    , _melMaxResults = Nothing
    , _melFields = Nothing
    , _melAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
melQuotaUser :: Lens' ManagementExperimentsList' (Maybe Text)
melQuotaUser
  = lens _melQuotaUser (\ s a -> s{_melQuotaUser = a})

-- | Returns response with indentations and line breaks.
melPrettyPrint :: Lens' ManagementExperimentsList' Bool
melPrettyPrint
  = lens _melPrettyPrint
      (\ s a -> s{_melPrettyPrint = a})

-- | Web property ID to retrieve experiments for.
melWebPropertyId :: Lens' ManagementExperimentsList' Text
melWebPropertyId
  = lens _melWebPropertyId
      (\ s a -> s{_melWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
melUserIp :: Lens' ManagementExperimentsList' (Maybe Text)
melUserIp
  = lens _melUserIp (\ s a -> s{_melUserIp = a})

-- | View (Profile) ID to retrieve experiments for.
melProfileId :: Lens' ManagementExperimentsList' Text
melProfileId
  = lens _melProfileId (\ s a -> s{_melProfileId = a})

-- | Account ID to retrieve experiments for.
melAccountId :: Lens' ManagementExperimentsList' Text
melAccountId
  = lens _melAccountId (\ s a -> s{_melAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
melKey :: Lens' ManagementExperimentsList' (Maybe Text)
melKey = lens _melKey (\ s a -> s{_melKey = a})

-- | OAuth 2.0 token for the current user.
melOauthToken :: Lens' ManagementExperimentsList' (Maybe Text)
melOauthToken
  = lens _melOauthToken
      (\ s a -> s{_melOauthToken = a})

-- | An index of the first experiment to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
melStartIndex :: Lens' ManagementExperimentsList' (Maybe Int32)
melStartIndex
  = lens _melStartIndex
      (\ s a -> s{_melStartIndex = a})

-- | The maximum number of experiments to include in this response.
melMaxResults :: Lens' ManagementExperimentsList' (Maybe Int32)
melMaxResults
  = lens _melMaxResults
      (\ s a -> s{_melMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
melFields :: Lens' ManagementExperimentsList' (Maybe Text)
melFields
  = lens _melFields (\ s a -> s{_melFields = a})

-- | Data format for the response.
melAlt :: Lens' ManagementExperimentsList' Text
melAlt = lens _melAlt (\ s a -> s{_melAlt = a})

instance GoogleRequest ManagementExperimentsList'
         where
        type Rs ManagementExperimentsList' = Experiments
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsList{..}
          = go _melQuotaUser _melPrettyPrint _melWebPropertyId
              _melUserIp
              _melProfileId
              _melAccountId
              _melKey
              _melOauthToken
              _melStartIndex
              _melMaxResults
              _melFields
              _melAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsListAPI)
                      r
                      u

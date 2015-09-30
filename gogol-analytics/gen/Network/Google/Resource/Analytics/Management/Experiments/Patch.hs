{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing experiment. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsPatch@.
module Analytics.Management.Experiments.Patch
    (
    -- * REST Resource
      ManagementExperimentsPatchAPI

    -- * Creating a Request
    , managementExperimentsPatch
    , ManagementExperimentsPatch

    -- * Request Lenses
    , mepQuotaUser
    , mepPrettyPrint
    , mepWebPropertyId
    , mepUserIp
    , mepProfileId
    , mepAccountId
    , mepExperimentId
    , mepKey
    , mepOauthToken
    , mepFields
    , mepAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsPatch@ which the
-- 'ManagementExperimentsPatch' request conforms to.
type ManagementExperimentsPatchAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :>
                     Capture "experimentId" Text :>
                       Patch '[JSON] Experiment

-- | Update an existing experiment. This method supports patch semantics.
--
-- /See:/ 'managementExperimentsPatch' smart constructor.
data ManagementExperimentsPatch = ManagementExperimentsPatch
    { _mepQuotaUser     :: !(Maybe Text)
    , _mepPrettyPrint   :: !Bool
    , _mepWebPropertyId :: !Text
    , _mepUserIp        :: !(Maybe Text)
    , _mepProfileId     :: !Text
    , _mepAccountId     :: !Text
    , _mepExperimentId  :: !Text
    , _mepKey           :: !(Maybe Text)
    , _mepOauthToken    :: !(Maybe Text)
    , _mepFields        :: !(Maybe Text)
    , _mepAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mepQuotaUser'
--
-- * 'mepPrettyPrint'
--
-- * 'mepWebPropertyId'
--
-- * 'mepUserIp'
--
-- * 'mepProfileId'
--
-- * 'mepAccountId'
--
-- * 'mepExperimentId'
--
-- * 'mepKey'
--
-- * 'mepOauthToken'
--
-- * 'mepFields'
--
-- * 'mepAlt'
managementExperimentsPatch
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsPatch
managementExperimentsPatch pMepWebPropertyId_ pMepProfileId_ pMepAccountId_ pMepExperimentId_ =
    ManagementExperimentsPatch
    { _mepQuotaUser = Nothing
    , _mepPrettyPrint = False
    , _mepWebPropertyId = pMepWebPropertyId_
    , _mepUserIp = Nothing
    , _mepProfileId = pMepProfileId_
    , _mepAccountId = pMepAccountId_
    , _mepExperimentId = pMepExperimentId_
    , _mepKey = Nothing
    , _mepOauthToken = Nothing
    , _mepFields = Nothing
    , _mepAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mepQuotaUser :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepQuotaUser
  = lens _mepQuotaUser (\ s a -> s{_mepQuotaUser = a})

-- | Returns response with indentations and line breaks.
mepPrettyPrint :: Lens' ManagementExperimentsPatch' Bool
mepPrettyPrint
  = lens _mepPrettyPrint
      (\ s a -> s{_mepPrettyPrint = a})

-- | Web property ID of the experiment to update.
mepWebPropertyId :: Lens' ManagementExperimentsPatch' Text
mepWebPropertyId
  = lens _mepWebPropertyId
      (\ s a -> s{_mepWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mepUserIp :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepUserIp
  = lens _mepUserIp (\ s a -> s{_mepUserIp = a})

-- | View (Profile) ID of the experiment to update.
mepProfileId :: Lens' ManagementExperimentsPatch' Text
mepProfileId
  = lens _mepProfileId (\ s a -> s{_mepProfileId = a})

-- | Account ID of the experiment to update.
mepAccountId :: Lens' ManagementExperimentsPatch' Text
mepAccountId
  = lens _mepAccountId (\ s a -> s{_mepAccountId = a})

-- | Experiment ID of the experiment to update.
mepExperimentId :: Lens' ManagementExperimentsPatch' Text
mepExperimentId
  = lens _mepExperimentId
      (\ s a -> s{_mepExperimentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mepKey :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepKey = lens _mepKey (\ s a -> s{_mepKey = a})

-- | OAuth 2.0 token for the current user.
mepOauthToken :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepOauthToken
  = lens _mepOauthToken
      (\ s a -> s{_mepOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mepFields :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepFields
  = lens _mepFields (\ s a -> s{_mepFields = a})

-- | Data format for the response.
mepAlt :: Lens' ManagementExperimentsPatch' Text
mepAlt = lens _mepAlt (\ s a -> s{_mepAlt = a})

instance GoogleRequest ManagementExperimentsPatch'
         where
        type Rs ManagementExperimentsPatch' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsPatch{..}
          = go _mepQuotaUser _mepPrettyPrint _mepWebPropertyId
              _mepUserIp
              _mepProfileId
              _mepAccountId
              _mepExperimentId
              _mepKey
              _mepOauthToken
              _mepFields
              _mepAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsPatchAPI)
                      r
                      u

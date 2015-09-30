{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsInsert@.
module Analytics.Management.Experiments.Insert
    (
    -- * REST Resource
      ManagementExperimentsInsertAPI

    -- * Creating a Request
    , managementExperimentsInsert
    , ManagementExperimentsInsert

    -- * Request Lenses
    , meiQuotaUser
    , meiPrettyPrint
    , meiWebPropertyId
    , meiUserIp
    , meiProfileId
    , meiAccountId
    , meiKey
    , meiOauthToken
    , meiFields
    , meiAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsInsert@ which the
-- 'ManagementExperimentsInsert' request conforms to.
type ManagementExperimentsInsertAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :> Post '[JSON] Experiment

-- | Create a new experiment.
--
-- /See:/ 'managementExperimentsInsert' smart constructor.
data ManagementExperimentsInsert = ManagementExperimentsInsert
    { _meiQuotaUser     :: !(Maybe Text)
    , _meiPrettyPrint   :: !Bool
    , _meiWebPropertyId :: !Text
    , _meiUserIp        :: !(Maybe Text)
    , _meiProfileId     :: !Text
    , _meiAccountId     :: !Text
    , _meiKey           :: !(Maybe Text)
    , _meiOauthToken    :: !(Maybe Text)
    , _meiFields        :: !(Maybe Text)
    , _meiAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meiQuotaUser'
--
-- * 'meiPrettyPrint'
--
-- * 'meiWebPropertyId'
--
-- * 'meiUserIp'
--
-- * 'meiProfileId'
--
-- * 'meiAccountId'
--
-- * 'meiKey'
--
-- * 'meiOauthToken'
--
-- * 'meiFields'
--
-- * 'meiAlt'
managementExperimentsInsert
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementExperimentsInsert
managementExperimentsInsert pMeiWebPropertyId_ pMeiProfileId_ pMeiAccountId_ =
    ManagementExperimentsInsert
    { _meiQuotaUser = Nothing
    , _meiPrettyPrint = False
    , _meiWebPropertyId = pMeiWebPropertyId_
    , _meiUserIp = Nothing
    , _meiProfileId = pMeiProfileId_
    , _meiAccountId = pMeiAccountId_
    , _meiKey = Nothing
    , _meiOauthToken = Nothing
    , _meiFields = Nothing
    , _meiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
meiQuotaUser :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiQuotaUser
  = lens _meiQuotaUser (\ s a -> s{_meiQuotaUser = a})

-- | Returns response with indentations and line breaks.
meiPrettyPrint :: Lens' ManagementExperimentsInsert' Bool
meiPrettyPrint
  = lens _meiPrettyPrint
      (\ s a -> s{_meiPrettyPrint = a})

-- | Web property ID to create the experiment for.
meiWebPropertyId :: Lens' ManagementExperimentsInsert' Text
meiWebPropertyId
  = lens _meiWebPropertyId
      (\ s a -> s{_meiWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
meiUserIp :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiUserIp
  = lens _meiUserIp (\ s a -> s{_meiUserIp = a})

-- | View (Profile) ID to create the experiment for.
meiProfileId :: Lens' ManagementExperimentsInsert' Text
meiProfileId
  = lens _meiProfileId (\ s a -> s{_meiProfileId = a})

-- | Account ID to create the experiment for.
meiAccountId :: Lens' ManagementExperimentsInsert' Text
meiAccountId
  = lens _meiAccountId (\ s a -> s{_meiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
meiKey :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiKey = lens _meiKey (\ s a -> s{_meiKey = a})

-- | OAuth 2.0 token for the current user.
meiOauthToken :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiOauthToken
  = lens _meiOauthToken
      (\ s a -> s{_meiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
meiFields :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiFields
  = lens _meiFields (\ s a -> s{_meiFields = a})

-- | Data format for the response.
meiAlt :: Lens' ManagementExperimentsInsert' Text
meiAlt = lens _meiAlt (\ s a -> s{_meiAlt = a})

instance GoogleRequest ManagementExperimentsInsert'
         where
        type Rs ManagementExperimentsInsert' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsInsert{..}
          = go _meiQuotaUser _meiPrettyPrint _meiWebPropertyId
              _meiUserIp
              _meiProfileId
              _meiAccountId
              _meiKey
              _meiOauthToken
              _meiFields
              _meiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsInsertAPI)
                      r
                      u

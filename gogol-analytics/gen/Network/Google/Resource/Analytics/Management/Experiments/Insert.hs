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
module Network.Google.Resource.Analytics.Management.Experiments.Insert
    (
    -- * REST Resource
      ManagementExperimentsInsertResource

    -- * Creating a Request
    , managementExperimentsInsert'
    , ManagementExperimentsInsert'

    -- * Request Lenses
    , meiQuotaUser
    , meiPrettyPrint
    , meiWebPropertyId
    , meiUserIP
    , meiProfileId
    , meiExperiment
    , meiAccountId
    , meiKey
    , meiOAuthToken
    , meiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsInsert@ which the
-- 'ManagementExperimentsInsert'' request conforms to.
type ManagementExperimentsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Experiment :>
                                     Post '[JSON] Experiment

-- | Create a new experiment.
--
-- /See:/ 'managementExperimentsInsert'' smart constructor.
data ManagementExperimentsInsert' = ManagementExperimentsInsert'
    { _meiQuotaUser     :: !(Maybe Text)
    , _meiPrettyPrint   :: !Bool
    , _meiWebPropertyId :: !Text
    , _meiUserIP        :: !(Maybe Text)
    , _meiProfileId     :: !Text
    , _meiExperiment    :: !Experiment
    , _meiAccountId     :: !Text
    , _meiKey           :: !(Maybe Key)
    , _meiOAuthToken    :: !(Maybe OAuthToken)
    , _meiFields        :: !(Maybe Text)
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
-- * 'meiUserIP'
--
-- * 'meiProfileId'
--
-- * 'meiExperiment'
--
-- * 'meiAccountId'
--
-- * 'meiKey'
--
-- * 'meiOAuthToken'
--
-- * 'meiFields'
managementExperimentsInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Experiment -- ^ 'Experiment'
    -> Text -- ^ 'accountId'
    -> ManagementExperimentsInsert'
managementExperimentsInsert' pMeiWebPropertyId_ pMeiProfileId_ pMeiExperiment_ pMeiAccountId_ =
    ManagementExperimentsInsert'
    { _meiQuotaUser = Nothing
    , _meiPrettyPrint = False
    , _meiWebPropertyId = pMeiWebPropertyId_
    , _meiUserIP = Nothing
    , _meiProfileId = pMeiProfileId_
    , _meiExperiment = pMeiExperiment_
    , _meiAccountId = pMeiAccountId_
    , _meiKey = Nothing
    , _meiOAuthToken = Nothing
    , _meiFields = Nothing
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
meiUserIP :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiUserIP
  = lens _meiUserIP (\ s a -> s{_meiUserIP = a})

-- | View (Profile) ID to create the experiment for.
meiProfileId :: Lens' ManagementExperimentsInsert' Text
meiProfileId
  = lens _meiProfileId (\ s a -> s{_meiProfileId = a})

-- | Multipart request metadata.
meiExperiment :: Lens' ManagementExperimentsInsert' Experiment
meiExperiment
  = lens _meiExperiment
      (\ s a -> s{_meiExperiment = a})

-- | Account ID to create the experiment for.
meiAccountId :: Lens' ManagementExperimentsInsert' Text
meiAccountId
  = lens _meiAccountId (\ s a -> s{_meiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
meiKey :: Lens' ManagementExperimentsInsert' (Maybe Key)
meiKey = lens _meiKey (\ s a -> s{_meiKey = a})

-- | OAuth 2.0 token for the current user.
meiOAuthToken :: Lens' ManagementExperimentsInsert' (Maybe OAuthToken)
meiOAuthToken
  = lens _meiOAuthToken
      (\ s a -> s{_meiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
meiFields :: Lens' ManagementExperimentsInsert' (Maybe Text)
meiFields
  = lens _meiFields (\ s a -> s{_meiFields = a})

instance GoogleAuth ManagementExperimentsInsert'
         where
        authKey = meiKey . _Just
        authToken = meiOAuthToken . _Just

instance GoogleRequest ManagementExperimentsInsert'
         where
        type Rs ManagementExperimentsInsert' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsInsert'{..}
          = go _meiAccountId _meiWebPropertyId _meiProfileId
              _meiQuotaUser
              (Just _meiPrettyPrint)
              _meiUserIP
              _meiFields
              _meiKey
              _meiOAuthToken
              (Just AltJSON)
              _meiExperiment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsInsertResource)
                      r
                      u

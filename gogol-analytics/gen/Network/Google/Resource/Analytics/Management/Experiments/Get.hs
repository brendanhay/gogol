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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns an experiment to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsGet@.
module Network.Google.Resource.Analytics.Management.Experiments.Get
    (
    -- * REST Resource
      ManagementExperimentsGetResource

    -- * Creating a Request
    , managementExperimentsGet'
    , ManagementExperimentsGet'

    -- * Request Lenses
    , megQuotaUser
    , megPrettyPrint
    , megWebPropertyId
    , megUserIp
    , megProfileId
    , megAccountId
    , megExperimentId
    , megKey
    , megOauthToken
    , megFields
    , megAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsGet@ which the
-- 'ManagementExperimentsGet'' request conforms to.
type ManagementExperimentsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "experiments" :>
                     Capture "experimentId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     Get '[JSON] Experiment

-- | Returns an experiment to which the user has access.
--
-- /See:/ 'managementExperimentsGet'' smart constructor.
data ManagementExperimentsGet' = ManagementExperimentsGet'
    { _megQuotaUser     :: !(Maybe Text)
    , _megPrettyPrint   :: !Bool
    , _megWebPropertyId :: !Text
    , _megUserIp        :: !(Maybe Text)
    , _megProfileId     :: !Text
    , _megAccountId     :: !Text
    , _megExperimentId  :: !Text
    , _megKey           :: !(Maybe Text)
    , _megOauthToken    :: !(Maybe Text)
    , _megFields        :: !(Maybe Text)
    , _megAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'megQuotaUser'
--
-- * 'megPrettyPrint'
--
-- * 'megWebPropertyId'
--
-- * 'megUserIp'
--
-- * 'megProfileId'
--
-- * 'megAccountId'
--
-- * 'megExperimentId'
--
-- * 'megKey'
--
-- * 'megOauthToken'
--
-- * 'megFields'
--
-- * 'megAlt'
managementExperimentsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsGet'
managementExperimentsGet' pMegWebPropertyId_ pMegProfileId_ pMegAccountId_ pMegExperimentId_ =
    ManagementExperimentsGet'
    { _megQuotaUser = Nothing
    , _megPrettyPrint = False
    , _megWebPropertyId = pMegWebPropertyId_
    , _megUserIp = Nothing
    , _megProfileId = pMegProfileId_
    , _megAccountId = pMegAccountId_
    , _megExperimentId = pMegExperimentId_
    , _megKey = Nothing
    , _megOauthToken = Nothing
    , _megFields = Nothing
    , _megAlt = ALTJSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
megQuotaUser :: Lens' ManagementExperimentsGet' (Maybe Text)
megQuotaUser
  = lens _megQuotaUser (\ s a -> s{_megQuotaUser = a})

-- | Returns response with indentations and line breaks.
megPrettyPrint :: Lens' ManagementExperimentsGet' Bool
megPrettyPrint
  = lens _megPrettyPrint
      (\ s a -> s{_megPrettyPrint = a})

-- | Web property ID to retrieve the experiment for.
megWebPropertyId :: Lens' ManagementExperimentsGet' Text
megWebPropertyId
  = lens _megWebPropertyId
      (\ s a -> s{_megWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
megUserIp :: Lens' ManagementExperimentsGet' (Maybe Text)
megUserIp
  = lens _megUserIp (\ s a -> s{_megUserIp = a})

-- | View (Profile) ID to retrieve the experiment for.
megProfileId :: Lens' ManagementExperimentsGet' Text
megProfileId
  = lens _megProfileId (\ s a -> s{_megProfileId = a})

-- | Account ID to retrieve the experiment for.
megAccountId :: Lens' ManagementExperimentsGet' Text
megAccountId
  = lens _megAccountId (\ s a -> s{_megAccountId = a})

-- | Experiment ID to retrieve the experiment for.
megExperimentId :: Lens' ManagementExperimentsGet' Text
megExperimentId
  = lens _megExperimentId
      (\ s a -> s{_megExperimentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
megKey :: Lens' ManagementExperimentsGet' (Maybe Text)
megKey = lens _megKey (\ s a -> s{_megKey = a})

-- | OAuth 2.0 token for the current user.
megOauthToken :: Lens' ManagementExperimentsGet' (Maybe Text)
megOauthToken
  = lens _megOauthToken
      (\ s a -> s{_megOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
megFields :: Lens' ManagementExperimentsGet' (Maybe Text)
megFields
  = lens _megFields (\ s a -> s{_megFields = a})

-- | Data format for the response.
megAlt :: Lens' ManagementExperimentsGet' Alt
megAlt = lens _megAlt (\ s a -> s{_megAlt = a})

instance GoogleRequest ManagementExperimentsGet'
         where
        type Rs ManagementExperimentsGet' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsGet'{..}
          = go _megQuotaUser (Just _megPrettyPrint)
              _megWebPropertyId
              _megUserIp
              _megProfileId
              _megAccountId
              _megExperimentId
              _megKey
              _megOauthToken
              _megFields
              (Just _megAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsGetResource)
                      r
                      u

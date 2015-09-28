{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Experiments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.update@.
module Network.Google.API.Analytics.Management.Experiments.Update
    (
    -- * REST Resource
      ManagementExperimentsUpdateAPI

    -- * Creating a Request
    , managementExperimentsUpdate'
    , ManagementExperimentsUpdate'

    -- * Request Lenses
    , meuQuotaUser
    , meuPrettyPrint
    , meuWebPropertyId
    , meuUserIp
    , meuProfileId
    , meuAccountId
    , meuExperimentId
    , meuKey
    , meuOauthToken
    , meuFields
    , meuAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.experiments.update which the
-- 'ManagementExperimentsUpdate'' request conforms to.
type ManagementExperimentsUpdateAPI =
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
                                     Put '[JSON] Experiment

-- | Update an existing experiment.
--
-- /See:/ 'managementExperimentsUpdate'' smart constructor.
data ManagementExperimentsUpdate' = ManagementExperimentsUpdate'
    { _meuQuotaUser     :: !(Maybe Text)
    , _meuPrettyPrint   :: !Bool
    , _meuWebPropertyId :: !Text
    , _meuUserIp        :: !(Maybe Text)
    , _meuProfileId     :: !Text
    , _meuAccountId     :: !Text
    , _meuExperimentId  :: !Text
    , _meuKey           :: !(Maybe Text)
    , _meuOauthToken    :: !(Maybe Text)
    , _meuFields        :: !(Maybe Text)
    , _meuAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'meuQuotaUser'
--
-- * 'meuPrettyPrint'
--
-- * 'meuWebPropertyId'
--
-- * 'meuUserIp'
--
-- * 'meuProfileId'
--
-- * 'meuAccountId'
--
-- * 'meuExperimentId'
--
-- * 'meuKey'
--
-- * 'meuOauthToken'
--
-- * 'meuFields'
--
-- * 'meuAlt'
managementExperimentsUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsUpdate'
managementExperimentsUpdate' pMeuWebPropertyId_ pMeuProfileId_ pMeuAccountId_ pMeuExperimentId_ =
    ManagementExperimentsUpdate'
    { _meuQuotaUser = Nothing
    , _meuPrettyPrint = False
    , _meuWebPropertyId = pMeuWebPropertyId_
    , _meuUserIp = Nothing
    , _meuProfileId = pMeuProfileId_
    , _meuAccountId = pMeuAccountId_
    , _meuExperimentId = pMeuExperimentId_
    , _meuKey = Nothing
    , _meuOauthToken = Nothing
    , _meuFields = Nothing
    , _meuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
meuQuotaUser :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuQuotaUser
  = lens _meuQuotaUser (\ s a -> s{_meuQuotaUser = a})

-- | Returns response with indentations and line breaks.
meuPrettyPrint :: Lens' ManagementExperimentsUpdate' Bool
meuPrettyPrint
  = lens _meuPrettyPrint
      (\ s a -> s{_meuPrettyPrint = a})

-- | Web property ID of the experiment to update.
meuWebPropertyId :: Lens' ManagementExperimentsUpdate' Text
meuWebPropertyId
  = lens _meuWebPropertyId
      (\ s a -> s{_meuWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
meuUserIp :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuUserIp
  = lens _meuUserIp (\ s a -> s{_meuUserIp = a})

-- | View (Profile) ID of the experiment to update.
meuProfileId :: Lens' ManagementExperimentsUpdate' Text
meuProfileId
  = lens _meuProfileId (\ s a -> s{_meuProfileId = a})

-- | Account ID of the experiment to update.
meuAccountId :: Lens' ManagementExperimentsUpdate' Text
meuAccountId
  = lens _meuAccountId (\ s a -> s{_meuAccountId = a})

-- | Experiment ID of the experiment to update.
meuExperimentId :: Lens' ManagementExperimentsUpdate' Text
meuExperimentId
  = lens _meuExperimentId
      (\ s a -> s{_meuExperimentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
meuKey :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuKey = lens _meuKey (\ s a -> s{_meuKey = a})

-- | OAuth 2.0 token for the current user.
meuOauthToken :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuOauthToken
  = lens _meuOauthToken
      (\ s a -> s{_meuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
meuFields :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuFields
  = lens _meuFields (\ s a -> s{_meuFields = a})

-- | Data format for the response.
meuAlt :: Lens' ManagementExperimentsUpdate' Alt
meuAlt = lens _meuAlt (\ s a -> s{_meuAlt = a})

instance GoogleRequest ManagementExperimentsUpdate'
         where
        type Rs ManagementExperimentsUpdate' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsUpdate'{..}
          = go _meuQuotaUser (Just _meuPrettyPrint)
              _meuWebPropertyId
              _meuUserIp
              _meuProfileId
              _meuAccountId
              _meuExperimentId
              _meuKey
              _meuOauthToken
              _meuFields
              (Just _meuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsUpdateAPI)
                      r
                      u

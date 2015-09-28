{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Experiments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.experiments.delete@.
module Network.Google.API.Analytics.Management.Experiments.Delete
    (
    -- * REST Resource
      ManagementExperimentsDeleteAPI

    -- * Creating a Request
    , managementExperimentsDelete'
    , ManagementExperimentsDelete'

    -- * Request Lenses
    , medQuotaUser
    , medPrettyPrint
    , medWebPropertyId
    , medUserIp
    , medProfileId
    , medAccountId
    , medExperimentId
    , medKey
    , medOauthToken
    , medFields
    , medAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.experiments.delete which the
-- 'ManagementExperimentsDelete'' request conforms to.
type ManagementExperimentsDeleteAPI =
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
                                   QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete an experiment.
--
-- /See:/ 'managementExperimentsDelete'' smart constructor.
data ManagementExperimentsDelete' = ManagementExperimentsDelete'
    { _medQuotaUser     :: !(Maybe Text)
    , _medPrettyPrint   :: !Bool
    , _medWebPropertyId :: !Text
    , _medUserIp        :: !(Maybe Text)
    , _medProfileId     :: !Text
    , _medAccountId     :: !Text
    , _medExperimentId  :: !Text
    , _medKey           :: !(Maybe Text)
    , _medOauthToken    :: !(Maybe Text)
    , _medFields        :: !(Maybe Text)
    , _medAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementExperimentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'medQuotaUser'
--
-- * 'medPrettyPrint'
--
-- * 'medWebPropertyId'
--
-- * 'medUserIp'
--
-- * 'medProfileId'
--
-- * 'medAccountId'
--
-- * 'medExperimentId'
--
-- * 'medKey'
--
-- * 'medOauthToken'
--
-- * 'medFields'
--
-- * 'medAlt'
managementExperimentsDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsDelete'
managementExperimentsDelete' pMedWebPropertyId_ pMedProfileId_ pMedAccountId_ pMedExperimentId_ =
    ManagementExperimentsDelete'
    { _medQuotaUser = Nothing
    , _medPrettyPrint = False
    , _medWebPropertyId = pMedWebPropertyId_
    , _medUserIp = Nothing
    , _medProfileId = pMedProfileId_
    , _medAccountId = pMedAccountId_
    , _medExperimentId = pMedExperimentId_
    , _medKey = Nothing
    , _medOauthToken = Nothing
    , _medFields = Nothing
    , _medAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
medQuotaUser :: Lens' ManagementExperimentsDelete' (Maybe Text)
medQuotaUser
  = lens _medQuotaUser (\ s a -> s{_medQuotaUser = a})

-- | Returns response with indentations and line breaks.
medPrettyPrint :: Lens' ManagementExperimentsDelete' Bool
medPrettyPrint
  = lens _medPrettyPrint
      (\ s a -> s{_medPrettyPrint = a})

-- | Web property ID to which the experiment belongs
medWebPropertyId :: Lens' ManagementExperimentsDelete' Text
medWebPropertyId
  = lens _medWebPropertyId
      (\ s a -> s{_medWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
medUserIp :: Lens' ManagementExperimentsDelete' (Maybe Text)
medUserIp
  = lens _medUserIp (\ s a -> s{_medUserIp = a})

-- | View (Profile) ID to which the experiment belongs
medProfileId :: Lens' ManagementExperimentsDelete' Text
medProfileId
  = lens _medProfileId (\ s a -> s{_medProfileId = a})

-- | Account ID to which the experiment belongs
medAccountId :: Lens' ManagementExperimentsDelete' Text
medAccountId
  = lens _medAccountId (\ s a -> s{_medAccountId = a})

-- | ID of the experiment to delete
medExperimentId :: Lens' ManagementExperimentsDelete' Text
medExperimentId
  = lens _medExperimentId
      (\ s a -> s{_medExperimentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
medKey :: Lens' ManagementExperimentsDelete' (Maybe Text)
medKey = lens _medKey (\ s a -> s{_medKey = a})

-- | OAuth 2.0 token for the current user.
medOauthToken :: Lens' ManagementExperimentsDelete' (Maybe Text)
medOauthToken
  = lens _medOauthToken
      (\ s a -> s{_medOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
medFields :: Lens' ManagementExperimentsDelete' (Maybe Text)
medFields
  = lens _medFields (\ s a -> s{_medFields = a})

-- | Data format for the response.
medAlt :: Lens' ManagementExperimentsDelete' Alt
medAlt = lens _medAlt (\ s a -> s{_medAlt = a})

instance GoogleRequest ManagementExperimentsDelete'
         where
        type Rs ManagementExperimentsDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsDelete'{..}
          = go _medQuotaUser (Just _medPrettyPrint)
              _medWebPropertyId
              _medUserIp
              _medProfileId
              _medAccountId
              _medExperimentId
              _medKey
              _medOauthToken
              _medFields
              (Just _medAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsDeleteAPI)
                      r
                      u

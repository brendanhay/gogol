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
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsUpdate@.
module Network.Google.Resource.Analytics.Management.Experiments.Update
    (
    -- * REST Resource
      ManagementExperimentsUpdateResource

    -- * Creating a Request
    , managementExperimentsUpdate'
    , ManagementExperimentsUpdate'

    -- * Request Lenses
    , meuQuotaUser
    , meuPrettyPrint
    , meuWebPropertyId
    , meuUserIP
    , meuProFileId
    , meuPayload
    , meuAccountId
    , meuExperimentId
    , meuKey
    , meuOAuthToken
    , meuFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsUpdate@ which the
-- 'ManagementExperimentsUpdate'' request conforms to.
type ManagementExperimentsUpdateResource =
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
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Experiment :>
                                       Put '[JSON] Experiment

-- | Update an existing experiment.
--
-- /See:/ 'managementExperimentsUpdate'' smart constructor.
data ManagementExperimentsUpdate' = ManagementExperimentsUpdate'
    { _meuQuotaUser     :: !(Maybe Text)
    , _meuPrettyPrint   :: !Bool
    , _meuWebPropertyId :: !Text
    , _meuUserIP        :: !(Maybe Text)
    , _meuProFileId     :: !Text
    , _meuPayload       :: !Experiment
    , _meuAccountId     :: !Text
    , _meuExperimentId  :: !Text
    , _meuKey           :: !(Maybe Key)
    , _meuOAuthToken    :: !(Maybe OAuthToken)
    , _meuFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'meuUserIP'
--
-- * 'meuProFileId'
--
-- * 'meuPayload'
--
-- * 'meuAccountId'
--
-- * 'meuExperimentId'
--
-- * 'meuKey'
--
-- * 'meuOAuthToken'
--
-- * 'meuFields'
managementExperimentsUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Experiment -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsUpdate'
managementExperimentsUpdate' pMeuWebPropertyId_ pMeuProFileId_ pMeuPayload_ pMeuAccountId_ pMeuExperimentId_ =
    ManagementExperimentsUpdate'
    { _meuQuotaUser = Nothing
    , _meuPrettyPrint = False
    , _meuWebPropertyId = pMeuWebPropertyId_
    , _meuUserIP = Nothing
    , _meuProFileId = pMeuProFileId_
    , _meuPayload = pMeuPayload_
    , _meuAccountId = pMeuAccountId_
    , _meuExperimentId = pMeuExperimentId_
    , _meuKey = Nothing
    , _meuOAuthToken = Nothing
    , _meuFields = Nothing
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
meuUserIP :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuUserIP
  = lens _meuUserIP (\ s a -> s{_meuUserIP = a})

-- | View (Profile) ID of the experiment to update.
meuProFileId :: Lens' ManagementExperimentsUpdate' Text
meuProFileId
  = lens _meuProFileId (\ s a -> s{_meuProFileId = a})

-- | Multipart request metadata.
meuPayload :: Lens' ManagementExperimentsUpdate' Experiment
meuPayload
  = lens _meuPayload (\ s a -> s{_meuPayload = a})

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
meuKey :: Lens' ManagementExperimentsUpdate' (Maybe Key)
meuKey = lens _meuKey (\ s a -> s{_meuKey = a})

-- | OAuth 2.0 token for the current user.
meuOAuthToken :: Lens' ManagementExperimentsUpdate' (Maybe OAuthToken)
meuOAuthToken
  = lens _meuOAuthToken
      (\ s a -> s{_meuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
meuFields :: Lens' ManagementExperimentsUpdate' (Maybe Text)
meuFields
  = lens _meuFields (\ s a -> s{_meuFields = a})

instance GoogleAuth ManagementExperimentsUpdate'
         where
        authKey = meuKey . _Just
        authToken = meuOAuthToken . _Just

instance GoogleRequest ManagementExperimentsUpdate'
         where
        type Rs ManagementExperimentsUpdate' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsUpdate'{..}
          = go _meuAccountId _meuWebPropertyId _meuProFileId
              _meuExperimentId
              _meuQuotaUser
              (Just _meuPrettyPrint)
              _meuUserIP
              _meuFields
              _meuKey
              _meuOAuthToken
              (Just AltJSON)
              _meuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsUpdateResource)
                      r
                      u

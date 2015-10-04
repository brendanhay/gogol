{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Analytics.Management.Experiments.Patch
    (
    -- * REST Resource
      ManagementExperimentsPatchResource

    -- * Creating a Request
    , managementExperimentsPatch'
    , ManagementExperimentsPatch'

    -- * Request Lenses
    , mepQuotaUser
    , mepPrettyPrint
    , mepWebPropertyId
    , mepUserIP
    , mepProFileId
    , mepPayload
    , mepAccountId
    , mepExperimentId
    , mepKey
    , mepOAuthToken
    , mepFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsPatch@ which the
-- 'ManagementExperimentsPatch'' request conforms to.
type ManagementExperimentsPatchResource =
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
                                       Patch '[JSON] Experiment

-- | Update an existing experiment. This method supports patch semantics.
--
-- /See:/ 'managementExperimentsPatch'' smart constructor.
data ManagementExperimentsPatch' = ManagementExperimentsPatch'
    { _mepQuotaUser     :: !(Maybe Text)
    , _mepPrettyPrint   :: !Bool
    , _mepWebPropertyId :: !Text
    , _mepUserIP        :: !(Maybe Text)
    , _mepProFileId     :: !Text
    , _mepPayload       :: !Experiment
    , _mepAccountId     :: !Text
    , _mepExperimentId  :: !Text
    , _mepKey           :: !(Maybe Key)
    , _mepOAuthToken    :: !(Maybe OAuthToken)
    , _mepFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mepUserIP'
--
-- * 'mepProFileId'
--
-- * 'mepPayload'
--
-- * 'mepAccountId'
--
-- * 'mepExperimentId'
--
-- * 'mepKey'
--
-- * 'mepOAuthToken'
--
-- * 'mepFields'
managementExperimentsPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Experiment -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsPatch'
managementExperimentsPatch' pMepWebPropertyId_ pMepProFileId_ pMepPayload_ pMepAccountId_ pMepExperimentId_ =
    ManagementExperimentsPatch'
    { _mepQuotaUser = Nothing
    , _mepPrettyPrint = False
    , _mepWebPropertyId = pMepWebPropertyId_
    , _mepUserIP = Nothing
    , _mepProFileId = pMepProFileId_
    , _mepPayload = pMepPayload_
    , _mepAccountId = pMepAccountId_
    , _mepExperimentId = pMepExperimentId_
    , _mepKey = Nothing
    , _mepOAuthToken = Nothing
    , _mepFields = Nothing
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
mepUserIP :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepUserIP
  = lens _mepUserIP (\ s a -> s{_mepUserIP = a})

-- | View (Profile) ID of the experiment to update.
mepProFileId :: Lens' ManagementExperimentsPatch' Text
mepProFileId
  = lens _mepProFileId (\ s a -> s{_mepProFileId = a})

-- | Multipart request metadata.
mepPayload :: Lens' ManagementExperimentsPatch' Experiment
mepPayload
  = lens _mepPayload (\ s a -> s{_mepPayload = a})

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
mepKey :: Lens' ManagementExperimentsPatch' (Maybe Key)
mepKey = lens _mepKey (\ s a -> s{_mepKey = a})

-- | OAuth 2.0 token for the current user.
mepOAuthToken :: Lens' ManagementExperimentsPatch' (Maybe OAuthToken)
mepOAuthToken
  = lens _mepOAuthToken
      (\ s a -> s{_mepOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mepFields :: Lens' ManagementExperimentsPatch' (Maybe Text)
mepFields
  = lens _mepFields (\ s a -> s{_mepFields = a})

instance GoogleAuth ManagementExperimentsPatch' where
        authKey = mepKey . _Just
        authToken = mepOAuthToken . _Just

instance GoogleRequest ManagementExperimentsPatch'
         where
        type Rs ManagementExperimentsPatch' = Experiment
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsPatch'{..}
          = go _mepAccountId _mepWebPropertyId _mepProFileId
              _mepExperimentId
              _mepQuotaUser
              (Just _mepPrettyPrint)
              _mepUserIP
              _mepFields
              _mepKey
              _mepOAuthToken
              (Just AltJSON)
              _mepPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsPatchResource)
                      r
                      u

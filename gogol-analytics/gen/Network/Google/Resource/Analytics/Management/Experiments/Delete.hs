{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.Experiments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete an experiment.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementExperimentsDelete@.
module Network.Google.Resource.Analytics.Management.Experiments.Delete
    (
    -- * REST Resource
      ManagementExperimentsDeleteResource

    -- * Creating a Request
    , managementExperimentsDelete'
    , ManagementExperimentsDelete'

    -- * Request Lenses
    , medQuotaUser
    , medPrettyPrint
    , medWebPropertyId
    , medUserIP
    , medProFileId
    , medAccountId
    , medExperimentId
    , medKey
    , medOAuthToken
    , medFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsDelete@ which the
-- 'ManagementExperimentsDelete'' request conforms to.
type ManagementExperimentsDeleteResource =
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
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete an experiment.
--
-- /See:/ 'managementExperimentsDelete'' smart constructor.
data ManagementExperimentsDelete' = ManagementExperimentsDelete'
    { _medQuotaUser     :: !(Maybe Text)
    , _medPrettyPrint   :: !Bool
    , _medWebPropertyId :: !Text
    , _medUserIP        :: !(Maybe Text)
    , _medProFileId     :: !Text
    , _medAccountId     :: !Text
    , _medExperimentId  :: !Text
    , _medKey           :: !(Maybe Key)
    , _medOAuthToken    :: !(Maybe OAuthToken)
    , _medFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'medUserIP'
--
-- * 'medProFileId'
--
-- * 'medAccountId'
--
-- * 'medExperimentId'
--
-- * 'medKey'
--
-- * 'medOAuthToken'
--
-- * 'medFields'
managementExperimentsDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'experimentId'
    -> ManagementExperimentsDelete'
managementExperimentsDelete' pMedWebPropertyId_ pMedProFileId_ pMedAccountId_ pMedExperimentId_ =
    ManagementExperimentsDelete'
    { _medQuotaUser = Nothing
    , _medPrettyPrint = False
    , _medWebPropertyId = pMedWebPropertyId_
    , _medUserIP = Nothing
    , _medProFileId = pMedProFileId_
    , _medAccountId = pMedAccountId_
    , _medExperimentId = pMedExperimentId_
    , _medKey = Nothing
    , _medOAuthToken = Nothing
    , _medFields = Nothing
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
medUserIP :: Lens' ManagementExperimentsDelete' (Maybe Text)
medUserIP
  = lens _medUserIP (\ s a -> s{_medUserIP = a})

-- | View (Profile) ID to which the experiment belongs
medProFileId :: Lens' ManagementExperimentsDelete' Text
medProFileId
  = lens _medProFileId (\ s a -> s{_medProFileId = a})

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
medKey :: Lens' ManagementExperimentsDelete' (Maybe Key)
medKey = lens _medKey (\ s a -> s{_medKey = a})

-- | OAuth 2.0 token for the current user.
medOAuthToken :: Lens' ManagementExperimentsDelete' (Maybe OAuthToken)
medOAuthToken
  = lens _medOAuthToken
      (\ s a -> s{_medOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
medFields :: Lens' ManagementExperimentsDelete' (Maybe Text)
medFields
  = lens _medFields (\ s a -> s{_medFields = a})

instance GoogleAuth ManagementExperimentsDelete'
         where
        authKey = medKey . _Just
        authToken = medOAuthToken . _Just

instance GoogleRequest ManagementExperimentsDelete'
         where
        type Rs ManagementExperimentsDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementExperimentsDelete'{..}
          = go _medAccountId _medWebPropertyId _medProFileId
              _medExperimentId
              _medQuotaUser
              (Just _medPrettyPrint)
              _medUserIP
              _medFields
              _medKey
              _medOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementExperimentsDeleteResource)
                      r
                      u

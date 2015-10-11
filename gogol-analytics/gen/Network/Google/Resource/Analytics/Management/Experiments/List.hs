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
module Network.Google.Resource.Analytics.Management.Experiments.List
    (
    -- * REST Resource
      ManagementExperimentsListResource

    -- * Creating a Request
    , managementExperimentsList'
    , ManagementExperimentsList'

    -- * Request Lenses
    , melQuotaUser
    , melPrettyPrint
    , melWebPropertyId
    , melUserIP
    , melProFileId
    , melAccountId
    , melKey
    , melOAuthToken
    , melStartIndex
    , melMaxResults
    , melFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementExperimentsList@ method which the
-- 'ManagementExperimentsList'' request conforms to.
type ManagementExperimentsListResource =
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   Header "Authorization" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Experiments

-- | Lists experiments to which the user has access.
--
-- /See:/ 'managementExperimentsList'' smart constructor.
data ManagementExperimentsList' = ManagementExperimentsList'
    { _melQuotaUser     :: !(Maybe Text)
    , _melPrettyPrint   :: !Bool
    , _melWebPropertyId :: !Text
    , _melUserIP        :: !(Maybe Text)
    , _melProFileId     :: !Text
    , _melAccountId     :: !Text
    , _melKey           :: !(Maybe AuthKey)
    , _melOAuthToken    :: !(Maybe OAuthToken)
    , _melStartIndex    :: !(Maybe Int32)
    , _melMaxResults    :: !(Maybe Int32)
    , _melFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'melUserIP'
--
-- * 'melProFileId'
--
-- * 'melAccountId'
--
-- * 'melKey'
--
-- * 'melOAuthToken'
--
-- * 'melStartIndex'
--
-- * 'melMaxResults'
--
-- * 'melFields'
managementExperimentsList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementExperimentsList'
managementExperimentsList' pMelWebPropertyId_ pMelProFileId_ pMelAccountId_ =
    ManagementExperimentsList'
    { _melQuotaUser = Nothing
    , _melPrettyPrint = False
    , _melWebPropertyId = pMelWebPropertyId_
    , _melUserIP = Nothing
    , _melProFileId = pMelProFileId_
    , _melAccountId = pMelAccountId_
    , _melKey = Nothing
    , _melOAuthToken = Nothing
    , _melStartIndex = Nothing
    , _melMaxResults = Nothing
    , _melFields = Nothing
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
melUserIP :: Lens' ManagementExperimentsList' (Maybe Text)
melUserIP
  = lens _melUserIP (\ s a -> s{_melUserIP = a})

-- | View (Profile) ID to retrieve experiments for.
melProFileId :: Lens' ManagementExperimentsList' Text
melProFileId
  = lens _melProFileId (\ s a -> s{_melProFileId = a})

-- | Account ID to retrieve experiments for.
melAccountId :: Lens' ManagementExperimentsList' Text
melAccountId
  = lens _melAccountId (\ s a -> s{_melAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
melKey :: Lens' ManagementExperimentsList' (Maybe AuthKey)
melKey = lens _melKey (\ s a -> s{_melKey = a})

-- | OAuth 2.0 token for the current user.
melOAuthToken :: Lens' ManagementExperimentsList' (Maybe OAuthToken)
melOAuthToken
  = lens _melOAuthToken
      (\ s a -> s{_melOAuthToken = a})

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

instance GoogleAuth ManagementExperimentsList' where
        _AuthKey = melKey . _Just
        _AuthToken = melOAuthToken . _Just

instance GoogleRequest ManagementExperimentsList'
         where
        type Rs ManagementExperimentsList' = Experiments
        request = requestWith analyticsRequest
        requestWith rq ManagementExperimentsList'{..}
          = go _melAccountId _melWebPropertyId _melProFileId
              _melStartIndex
              _melMaxResults
              _melQuotaUser
              (Just _melPrettyPrint)
              _melUserIP
              _melFields
              _melKey
              _melOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementExperimentsListResource)
                      rq

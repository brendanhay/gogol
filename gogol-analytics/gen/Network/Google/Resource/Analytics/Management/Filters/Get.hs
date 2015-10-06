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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a filters to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersGet@.
module Network.Google.Resource.Analytics.Management.Filters.Get
    (
    -- * REST Resource
      ManagementFiltersGetResource

    -- * Creating a Request
    , managementFiltersGet'
    , ManagementFiltersGet'

    -- * Request Lenses
    , mfgQuotaUser
    , mfgPrettyPrint
    , mfgFilterId
    , mfgUserIP
    , mfgAccountId
    , mfgKey
    , mfgOAuthToken
    , mfgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersGet@ which the
-- 'ManagementFiltersGet'' request conforms to.
type ManagementFiltersGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Filter

-- | Returns a filters to which the user has access.
--
-- /See:/ 'managementFiltersGet'' smart constructor.
data ManagementFiltersGet' = ManagementFiltersGet'
    { _mfgQuotaUser   :: !(Maybe Text)
    , _mfgPrettyPrint :: !Bool
    , _mfgFilterId    :: !Text
    , _mfgUserIP      :: !(Maybe Text)
    , _mfgAccountId   :: !Text
    , _mfgKey         :: !(Maybe AuthKey)
    , _mfgOAuthToken  :: !(Maybe OAuthToken)
    , _mfgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfgQuotaUser'
--
-- * 'mfgPrettyPrint'
--
-- * 'mfgFilterId'
--
-- * 'mfgUserIP'
--
-- * 'mfgAccountId'
--
-- * 'mfgKey'
--
-- * 'mfgOAuthToken'
--
-- * 'mfgFields'
managementFiltersGet'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersGet'
managementFiltersGet' pMfgFilterId_ pMfgAccountId_ =
    ManagementFiltersGet'
    { _mfgQuotaUser = Nothing
    , _mfgPrettyPrint = False
    , _mfgFilterId = pMfgFilterId_
    , _mfgUserIP = Nothing
    , _mfgAccountId = pMfgAccountId_
    , _mfgKey = Nothing
    , _mfgOAuthToken = Nothing
    , _mfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfgQuotaUser :: Lens' ManagementFiltersGet' (Maybe Text)
mfgQuotaUser
  = lens _mfgQuotaUser (\ s a -> s{_mfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfgPrettyPrint :: Lens' ManagementFiltersGet' Bool
mfgPrettyPrint
  = lens _mfgPrettyPrint
      (\ s a -> s{_mfgPrettyPrint = a})

-- | Filter ID to retrieve filters for.
mfgFilterId :: Lens' ManagementFiltersGet' Text
mfgFilterId
  = lens _mfgFilterId (\ s a -> s{_mfgFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfgUserIP :: Lens' ManagementFiltersGet' (Maybe Text)
mfgUserIP
  = lens _mfgUserIP (\ s a -> s{_mfgUserIP = a})

-- | Account ID to retrieve filters for.
mfgAccountId :: Lens' ManagementFiltersGet' Text
mfgAccountId
  = lens _mfgAccountId (\ s a -> s{_mfgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfgKey :: Lens' ManagementFiltersGet' (Maybe AuthKey)
mfgKey = lens _mfgKey (\ s a -> s{_mfgKey = a})

-- | OAuth 2.0 token for the current user.
mfgOAuthToken :: Lens' ManagementFiltersGet' (Maybe OAuthToken)
mfgOAuthToken
  = lens _mfgOAuthToken
      (\ s a -> s{_mfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfgFields :: Lens' ManagementFiltersGet' (Maybe Text)
mfgFields
  = lens _mfgFields (\ s a -> s{_mfgFields = a})

instance GoogleAuth ManagementFiltersGet' where
        _AuthKey = mfgKey . _Just
        _AuthToken = mfgOAuthToken . _Just

instance GoogleRequest ManagementFiltersGet' where
        type Rs ManagementFiltersGet' = Filter
        request = requestWith analyticsRequest
        requestWith rq ManagementFiltersGet'{..}
          = go _mfgAccountId _mfgFilterId _mfgQuotaUser
              (Just _mfgPrettyPrint)
              _mfgUserIP
              _mfgFields
              _mfgKey
              _mfgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementFiltersGetResource)
                      rq

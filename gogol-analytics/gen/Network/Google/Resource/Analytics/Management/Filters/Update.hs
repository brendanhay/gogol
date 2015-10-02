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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing filter.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersUpdate@.
module Network.Google.Resource.Analytics.Management.Filters.Update
    (
    -- * REST Resource
      ManagementFiltersUpdateResource

    -- * Creating a Request
    , managementFiltersUpdate'
    , ManagementFiltersUpdate'

    -- * Request Lenses
    , mfuQuotaUser
    , mfuPrettyPrint
    , mfuFilterId
    , mfuUserIP
    , mfuAccountId
    , mfuKey
    , mfuFilter
    , mfuOAuthToken
    , mfuFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersUpdate@ which the
-- 'ManagementFiltersUpdate'' request conforms to.
type ManagementFiltersUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Filter :> Put '[JSON] Filter

-- | Updates an existing filter.
--
-- /See:/ 'managementFiltersUpdate'' smart constructor.
data ManagementFiltersUpdate' = ManagementFiltersUpdate'
    { _mfuQuotaUser   :: !(Maybe Text)
    , _mfuPrettyPrint :: !Bool
    , _mfuFilterId    :: !Text
    , _mfuUserIP      :: !(Maybe Text)
    , _mfuAccountId   :: !Text
    , _mfuKey         :: !(Maybe Key)
    , _mfuFilter      :: !Filter
    , _mfuOAuthToken  :: !(Maybe OAuthToken)
    , _mfuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfuQuotaUser'
--
-- * 'mfuPrettyPrint'
--
-- * 'mfuFilterId'
--
-- * 'mfuUserIP'
--
-- * 'mfuAccountId'
--
-- * 'mfuKey'
--
-- * 'mfuFilter'
--
-- * 'mfuOAuthToken'
--
-- * 'mfuFields'
managementFiltersUpdate'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> Filter -- ^ 'Filter'
    -> ManagementFiltersUpdate'
managementFiltersUpdate' pMfuFilterId_ pMfuAccountId_ pMfuFilter_ =
    ManagementFiltersUpdate'
    { _mfuQuotaUser = Nothing
    , _mfuPrettyPrint = False
    , _mfuFilterId = pMfuFilterId_
    , _mfuUserIP = Nothing
    , _mfuAccountId = pMfuAccountId_
    , _mfuKey = Nothing
    , _mfuFilter = pMfuFilter_
    , _mfuOAuthToken = Nothing
    , _mfuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfuQuotaUser :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuQuotaUser
  = lens _mfuQuotaUser (\ s a -> s{_mfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfuPrettyPrint :: Lens' ManagementFiltersUpdate' Bool
mfuPrettyPrint
  = lens _mfuPrettyPrint
      (\ s a -> s{_mfuPrettyPrint = a})

-- | ID of the filter to be updated.
mfuFilterId :: Lens' ManagementFiltersUpdate' Text
mfuFilterId
  = lens _mfuFilterId (\ s a -> s{_mfuFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfuUserIP :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuUserIP
  = lens _mfuUserIP (\ s a -> s{_mfuUserIP = a})

-- | Account ID to which the filter belongs.
mfuAccountId :: Lens' ManagementFiltersUpdate' Text
mfuAccountId
  = lens _mfuAccountId (\ s a -> s{_mfuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfuKey :: Lens' ManagementFiltersUpdate' (Maybe Key)
mfuKey = lens _mfuKey (\ s a -> s{_mfuKey = a})

-- | Multipart request metadata.
mfuFilter :: Lens' ManagementFiltersUpdate' Filter
mfuFilter
  = lens _mfuFilter (\ s a -> s{_mfuFilter = a})

-- | OAuth 2.0 token for the current user.
mfuOAuthToken :: Lens' ManagementFiltersUpdate' (Maybe OAuthToken)
mfuOAuthToken
  = lens _mfuOAuthToken
      (\ s a -> s{_mfuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfuFields :: Lens' ManagementFiltersUpdate' (Maybe Text)
mfuFields
  = lens _mfuFields (\ s a -> s{_mfuFields = a})

instance GoogleAuth ManagementFiltersUpdate' where
        authKey = mfuKey . _Just
        authToken = mfuOAuthToken . _Just

instance GoogleRequest ManagementFiltersUpdate' where
        type Rs ManagementFiltersUpdate' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersUpdate'{..}
          = go _mfuAccountId _mfuFilterId _mfuQuotaUser
              (Just _mfuPrettyPrint)
              _mfuUserIP
              _mfuFields
              _mfuKey
              _mfuOAuthToken
              (Just AltJSON)
              _mfuFilter
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersUpdateResource)
                      r
                      u

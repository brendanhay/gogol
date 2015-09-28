{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Analytics.Management.Filters.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing filter. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.patch@.
module Network.Google.API.Analytics.Management.Filters.Patch
    (
    -- * REST Resource
      ManagementFiltersPatchAPI

    -- * Creating a Request
    , managementFiltersPatch'
    , ManagementFiltersPatch'

    -- * Request Lenses
    , mfpQuotaUser
    , mfpPrettyPrint
    , mfpFilterId
    , mfpUserIp
    , mfpAccountId
    , mfpKey
    , mfpOauthToken
    , mfpFields
    , mfpAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for analytics.management.filters.patch which the
-- 'ManagementFiltersPatch'' request conforms to.
type ManagementFiltersPatchAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "filters" :>
             Capture "filterId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Patch '[JSON] Filter

-- | Updates an existing filter. This method supports patch semantics.
--
-- /See:/ 'managementFiltersPatch'' smart constructor.
data ManagementFiltersPatch' = ManagementFiltersPatch'
    { _mfpQuotaUser   :: !(Maybe Text)
    , _mfpPrettyPrint :: !Bool
    , _mfpFilterId    :: !Text
    , _mfpUserIp      :: !(Maybe Text)
    , _mfpAccountId   :: !Text
    , _mfpKey         :: !(Maybe Text)
    , _mfpOauthToken  :: !(Maybe Text)
    , _mfpFields      :: !(Maybe Text)
    , _mfpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementFiltersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfpQuotaUser'
--
-- * 'mfpPrettyPrint'
--
-- * 'mfpFilterId'
--
-- * 'mfpUserIp'
--
-- * 'mfpAccountId'
--
-- * 'mfpKey'
--
-- * 'mfpOauthToken'
--
-- * 'mfpFields'
--
-- * 'mfpAlt'
managementFiltersPatch'
    :: Text -- ^ 'filterId'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersPatch'
managementFiltersPatch' pMfpFilterId_ pMfpAccountId_ =
    ManagementFiltersPatch'
    { _mfpQuotaUser = Nothing
    , _mfpPrettyPrint = False
    , _mfpFilterId = pMfpFilterId_
    , _mfpUserIp = Nothing
    , _mfpAccountId = pMfpAccountId_
    , _mfpKey = Nothing
    , _mfpOauthToken = Nothing
    , _mfpFields = Nothing
    , _mfpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mfpQuotaUser :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpQuotaUser
  = lens _mfpQuotaUser (\ s a -> s{_mfpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mfpPrettyPrint :: Lens' ManagementFiltersPatch' Bool
mfpPrettyPrint
  = lens _mfpPrettyPrint
      (\ s a -> s{_mfpPrettyPrint = a})

-- | ID of the filter to be updated.
mfpFilterId :: Lens' ManagementFiltersPatch' Text
mfpFilterId
  = lens _mfpFilterId (\ s a -> s{_mfpFilterId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mfpUserIp :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpUserIp
  = lens _mfpUserIp (\ s a -> s{_mfpUserIp = a})

-- | Account ID to which the filter belongs.
mfpAccountId :: Lens' ManagementFiltersPatch' Text
mfpAccountId
  = lens _mfpAccountId (\ s a -> s{_mfpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfpKey :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpKey = lens _mfpKey (\ s a -> s{_mfpKey = a})

-- | OAuth 2.0 token for the current user.
mfpOauthToken :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpOauthToken
  = lens _mfpOauthToken
      (\ s a -> s{_mfpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfpFields :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpFields
  = lens _mfpFields (\ s a -> s{_mfpFields = a})

-- | Data format for the response.
mfpAlt :: Lens' ManagementFiltersPatch' Alt
mfpAlt = lens _mfpAlt (\ s a -> s{_mfpAlt = a})

instance GoogleRequest ManagementFiltersPatch' where
        type Rs ManagementFiltersPatch' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersPatch'{..}
          = go _mfpQuotaUser (Just _mfpPrettyPrint)
              _mfpFilterId
              _mfpUserIp
              _mfpAccountId
              _mfpKey
              _mfpOauthToken
              _mfpFields
              (Just _mfpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersPatchAPI)
                      r
                      u

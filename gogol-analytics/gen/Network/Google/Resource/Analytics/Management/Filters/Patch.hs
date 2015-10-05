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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing filter. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementFiltersPatch@.
module Network.Google.Resource.Analytics.Management.Filters.Patch
    (
    -- * REST Resource
      ManagementFiltersPatchResource

    -- * Creating a Request
    , managementFiltersPatch'
    , ManagementFiltersPatch'

    -- * Request Lenses
    , mfpQuotaUser
    , mfpPrettyPrint
    , mfpFilterId
    , mfpUserIP
    , mfpPayload
    , mfpAccountId
    , mfpKey
    , mfpOAuthToken
    , mfpFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementFiltersPatch@ which the
-- 'ManagementFiltersPatch'' request conforms to.
type ManagementFiltersPatchResource =
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
                             ReqBody '[JSON] Filter :> Patch '[JSON] Filter

-- | Updates an existing filter. This method supports patch semantics.
--
-- /See:/ 'managementFiltersPatch'' smart constructor.
data ManagementFiltersPatch' = ManagementFiltersPatch'
    { _mfpQuotaUser   :: !(Maybe Text)
    , _mfpPrettyPrint :: !Bool
    , _mfpFilterId    :: !Text
    , _mfpUserIP      :: !(Maybe Text)
    , _mfpPayload     :: !Filter
    , _mfpAccountId   :: !Text
    , _mfpKey         :: !(Maybe Key)
    , _mfpOAuthToken  :: !(Maybe OAuthToken)
    , _mfpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'mfpUserIP'
--
-- * 'mfpPayload'
--
-- * 'mfpAccountId'
--
-- * 'mfpKey'
--
-- * 'mfpOAuthToken'
--
-- * 'mfpFields'
managementFiltersPatch'
    :: Text -- ^ 'filterId'
    -> Filter -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementFiltersPatch'
managementFiltersPatch' pMfpFilterId_ pMfpPayload_ pMfpAccountId_ =
    ManagementFiltersPatch'
    { _mfpQuotaUser = Nothing
    , _mfpPrettyPrint = False
    , _mfpFilterId = pMfpFilterId_
    , _mfpUserIP = Nothing
    , _mfpPayload = pMfpPayload_
    , _mfpAccountId = pMfpAccountId_
    , _mfpKey = Nothing
    , _mfpOAuthToken = Nothing
    , _mfpFields = Nothing
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
mfpUserIP :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpUserIP
  = lens _mfpUserIP (\ s a -> s{_mfpUserIP = a})

-- | Multipart request metadata.
mfpPayload :: Lens' ManagementFiltersPatch' Filter
mfpPayload
  = lens _mfpPayload (\ s a -> s{_mfpPayload = a})

-- | Account ID to which the filter belongs.
mfpAccountId :: Lens' ManagementFiltersPatch' Text
mfpAccountId
  = lens _mfpAccountId (\ s a -> s{_mfpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mfpKey :: Lens' ManagementFiltersPatch' (Maybe Key)
mfpKey = lens _mfpKey (\ s a -> s{_mfpKey = a})

-- | OAuth 2.0 token for the current user.
mfpOAuthToken :: Lens' ManagementFiltersPatch' (Maybe OAuthToken)
mfpOAuthToken
  = lens _mfpOAuthToken
      (\ s a -> s{_mfpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mfpFields :: Lens' ManagementFiltersPatch' (Maybe Text)
mfpFields
  = lens _mfpFields (\ s a -> s{_mfpFields = a})

instance GoogleAuth ManagementFiltersPatch' where
        authKey = mfpKey . _Just
        authToken = mfpOAuthToken . _Just

instance GoogleRequest ManagementFiltersPatch' where
        type Rs ManagementFiltersPatch' = Filter
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementFiltersPatch'{..}
          = go _mfpAccountId _mfpFilterId _mfpQuotaUser
              (Just _mfpPrettyPrint)
              _mfpUserIP
              _mfpFields
              _mfpKey
              _mfpOAuthToken
              (Just AltJSON)
              _mfpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementFiltersPatchResource)
                      r
                      u

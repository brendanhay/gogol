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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesPatch@.
module Network.Google.Resource.Analytics.Management.ProFiles.Patch
    (
    -- * REST Resource
      ManagementProFilesPatchResource

    -- * Creating a Request
    , managementProFilesPatch'
    , ManagementProFilesPatch'

    -- * Request Lenses
    , mpfpQuotaUser
    , mpfpPrettyPrint
    , mpfpWebPropertyId
    , mpfpUserIP
    , mpfpProFileId
    , mpfpPayload
    , mpfpAccountId
    , mpfpKey
    , mpfpOAuthToken
    , mpfpFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesPatch@ which the
-- 'ManagementProFilesPatch'' request conforms to.
type ManagementProFilesPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] ProFile :>
                                   Patch '[JSON] ProFile

-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ 'managementProFilesPatch'' smart constructor.
data ManagementProFilesPatch' = ManagementProFilesPatch'
    { _mpfpQuotaUser     :: !(Maybe Text)
    , _mpfpPrettyPrint   :: !Bool
    , _mpfpWebPropertyId :: !Text
    , _mpfpUserIP        :: !(Maybe Text)
    , _mpfpProFileId     :: !Text
    , _mpfpPayload       :: !ProFile
    , _mpfpAccountId     :: !Text
    , _mpfpKey           :: !(Maybe Key)
    , _mpfpOAuthToken    :: !(Maybe OAuthToken)
    , _mpfpFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfpQuotaUser'
--
-- * 'mpfpPrettyPrint'
--
-- * 'mpfpWebPropertyId'
--
-- * 'mpfpUserIP'
--
-- * 'mpfpProFileId'
--
-- * 'mpfpPayload'
--
-- * 'mpfpAccountId'
--
-- * 'mpfpKey'
--
-- * 'mpfpOAuthToken'
--
-- * 'mpfpFields'
managementProFilesPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFile -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesPatch'
managementProFilesPatch' pMpfpWebPropertyId_ pMpfpProFileId_ pMpfpPayload_ pMpfpAccountId_ =
    ManagementProFilesPatch'
    { _mpfpQuotaUser = Nothing
    , _mpfpPrettyPrint = False
    , _mpfpWebPropertyId = pMpfpWebPropertyId_
    , _mpfpUserIP = Nothing
    , _mpfpProFileId = pMpfpProFileId_
    , _mpfpPayload = pMpfpPayload_
    , _mpfpAccountId = pMpfpAccountId_
    , _mpfpKey = Nothing
    , _mpfpOAuthToken = Nothing
    , _mpfpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfpQuotaUser :: Lens' ManagementProFilesPatch' (Maybe Text)
mpfpQuotaUser
  = lens _mpfpQuotaUser
      (\ s a -> s{_mpfpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfpPrettyPrint :: Lens' ManagementProFilesPatch' Bool
mpfpPrettyPrint
  = lens _mpfpPrettyPrint
      (\ s a -> s{_mpfpPrettyPrint = a})

-- | Web property ID to which the view (profile) belongs
mpfpWebPropertyId :: Lens' ManagementProFilesPatch' Text
mpfpWebPropertyId
  = lens _mpfpWebPropertyId
      (\ s a -> s{_mpfpWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfpUserIP :: Lens' ManagementProFilesPatch' (Maybe Text)
mpfpUserIP
  = lens _mpfpUserIP (\ s a -> s{_mpfpUserIP = a})

-- | ID of the view (profile) to be updated.
mpfpProFileId :: Lens' ManagementProFilesPatch' Text
mpfpProFileId
  = lens _mpfpProFileId
      (\ s a -> s{_mpfpProFileId = a})

-- | Multipart request metadata.
mpfpPayload :: Lens' ManagementProFilesPatch' ProFile
mpfpPayload
  = lens _mpfpPayload (\ s a -> s{_mpfpPayload = a})

-- | Account ID to which the view (profile) belongs
mpfpAccountId :: Lens' ManagementProFilesPatch' Text
mpfpAccountId
  = lens _mpfpAccountId
      (\ s a -> s{_mpfpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfpKey :: Lens' ManagementProFilesPatch' (Maybe Key)
mpfpKey = lens _mpfpKey (\ s a -> s{_mpfpKey = a})

-- | OAuth 2.0 token for the current user.
mpfpOAuthToken :: Lens' ManagementProFilesPatch' (Maybe OAuthToken)
mpfpOAuthToken
  = lens _mpfpOAuthToken
      (\ s a -> s{_mpfpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfpFields :: Lens' ManagementProFilesPatch' (Maybe Text)
mpfpFields
  = lens _mpfpFields (\ s a -> s{_mpfpFields = a})

instance GoogleAuth ManagementProFilesPatch' where
        authKey = mpfpKey . _Just
        authToken = mpfpOAuthToken . _Just

instance GoogleRequest ManagementProFilesPatch' where
        type Rs ManagementProFilesPatch' = ProFile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProFilesPatch'{..}
          = go _mpfpAccountId _mpfpWebPropertyId _mpfpProFileId
              _mpfpQuotaUser
              (Just _mpfpPrettyPrint)
              _mpfpUserIP
              _mpfpFields
              _mpfpKey
              _mpfpOAuthToken
              (Just AltJSON)
              _mpfpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProFilesPatchResource)
                      r
                      u

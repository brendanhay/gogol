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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesUpdate@.
module Network.Google.Resource.Analytics.Management.ProFiles.Update
    (
    -- * REST Resource
      ManagementProFilesUpdateResource

    -- * Creating a Request
    , managementProFilesUpdate'
    , ManagementProFilesUpdate'

    -- * Request Lenses
    , mpfuQuotaUser
    , mpfuPrettyPrint
    , mpfuWebPropertyId
    , mpfuUserIP
    , mpfuProFileId
    , mpfuPayload
    , mpfuAccountId
    , mpfuKey
    , mpfuOAuthToken
    , mpfuFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesUpdate@ which the
-- 'ManagementProFilesUpdate'' request conforms to.
type ManagementProFilesUpdateResource =
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
                                 ReqBody '[OctetStream] ProFile :>
                                   Put '[JSON] ProFile

-- | Updates an existing view (profile).
--
-- /See:/ 'managementProFilesUpdate'' smart constructor.
data ManagementProFilesUpdate' = ManagementProFilesUpdate'
    { _mpfuQuotaUser     :: !(Maybe Text)
    , _mpfuPrettyPrint   :: !Bool
    , _mpfuWebPropertyId :: !Text
    , _mpfuUserIP        :: !(Maybe Text)
    , _mpfuProFileId     :: !Text
    , _mpfuPayload       :: !ProFile
    , _mpfuAccountId     :: !Text
    , _mpfuKey           :: !(Maybe Key)
    , _mpfuOAuthToken    :: !(Maybe OAuthToken)
    , _mpfuFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuQuotaUser'
--
-- * 'mpfuPrettyPrint'
--
-- * 'mpfuWebPropertyId'
--
-- * 'mpfuUserIP'
--
-- * 'mpfuProFileId'
--
-- * 'mpfuPayload'
--
-- * 'mpfuAccountId'
--
-- * 'mpfuKey'
--
-- * 'mpfuOAuthToken'
--
-- * 'mpfuFields'
managementProFilesUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFile -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesUpdate'
managementProFilesUpdate' pMpfuWebPropertyId_ pMpfuProFileId_ pMpfuPayload_ pMpfuAccountId_ =
    ManagementProFilesUpdate'
    { _mpfuQuotaUser = Nothing
    , _mpfuPrettyPrint = False
    , _mpfuWebPropertyId = pMpfuWebPropertyId_
    , _mpfuUserIP = Nothing
    , _mpfuProFileId = pMpfuProFileId_
    , _mpfuPayload = pMpfuPayload_
    , _mpfuAccountId = pMpfuAccountId_
    , _mpfuKey = Nothing
    , _mpfuOAuthToken = Nothing
    , _mpfuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfuQuotaUser :: Lens' ManagementProFilesUpdate' (Maybe Text)
mpfuQuotaUser
  = lens _mpfuQuotaUser
      (\ s a -> s{_mpfuQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfuPrettyPrint :: Lens' ManagementProFilesUpdate' Bool
mpfuPrettyPrint
  = lens _mpfuPrettyPrint
      (\ s a -> s{_mpfuPrettyPrint = a})

-- | Web property ID to which the view (profile) belongs
mpfuWebPropertyId :: Lens' ManagementProFilesUpdate' Text
mpfuWebPropertyId
  = lens _mpfuWebPropertyId
      (\ s a -> s{_mpfuWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfuUserIP :: Lens' ManagementProFilesUpdate' (Maybe Text)
mpfuUserIP
  = lens _mpfuUserIP (\ s a -> s{_mpfuUserIP = a})

-- | ID of the view (profile) to be updated.
mpfuProFileId :: Lens' ManagementProFilesUpdate' Text
mpfuProFileId
  = lens _mpfuProFileId
      (\ s a -> s{_mpfuProFileId = a})

-- | Multipart request metadata.
mpfuPayload :: Lens' ManagementProFilesUpdate' ProFile
mpfuPayload
  = lens _mpfuPayload (\ s a -> s{_mpfuPayload = a})

-- | Account ID to which the view (profile) belongs
mpfuAccountId :: Lens' ManagementProFilesUpdate' Text
mpfuAccountId
  = lens _mpfuAccountId
      (\ s a -> s{_mpfuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfuKey :: Lens' ManagementProFilesUpdate' (Maybe Key)
mpfuKey = lens _mpfuKey (\ s a -> s{_mpfuKey = a})

-- | OAuth 2.0 token for the current user.
mpfuOAuthToken :: Lens' ManagementProFilesUpdate' (Maybe OAuthToken)
mpfuOAuthToken
  = lens _mpfuOAuthToken
      (\ s a -> s{_mpfuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfuFields :: Lens' ManagementProFilesUpdate' (Maybe Text)
mpfuFields
  = lens _mpfuFields (\ s a -> s{_mpfuFields = a})

instance GoogleAuth ManagementProFilesUpdate' where
        authKey = mpfuKey . _Just
        authToken = mpfuOAuthToken . _Just

instance GoogleRequest ManagementProFilesUpdate'
         where
        type Rs ManagementProFilesUpdate' = ProFile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProFilesUpdate'{..}
          = go _mpfuAccountId _mpfuWebPropertyId _mpfuProFileId
              _mpfuQuotaUser
              (Just _mpfuPrettyPrint)
              _mpfuUserIP
              _mpfuFields
              _mpfuKey
              _mpfuOAuthToken
              (Just AltJSON)
              _mpfuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProFilesUpdateResource)
                      r
                      u

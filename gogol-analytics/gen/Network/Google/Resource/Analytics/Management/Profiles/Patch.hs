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
-- Module      : Network.Google.Resource.Analytics.Management.Profiles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfilesPatch@.
module Network.Google.Resource.Analytics.Management.Profiles.Patch
    (
    -- * REST Resource
      ManagementProfilesPatchResource

    -- * Creating a Request
    , managementProfilesPatch'
    , ManagementProfilesPatch'

    -- * Request Lenses
    , mppQuotaUser
    , mppPrettyPrint
    , mppWebPropertyId
    , mppUserIP
    , mppProfileId
    , mppPayload
    , mppAccountId
    , mppKey
    , mppOAuthToken
    , mppFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfilesPatch@ which the
-- 'ManagementProfilesPatch'' request conforms to.
type ManagementProfilesPatchResource =
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
                                 ReqBody '[JSON] Profile :>
                                   Patch '[JSON] Profile

-- | Updates an existing view (profile). This method supports patch
-- semantics.
--
-- /See:/ 'managementProfilesPatch'' smart constructor.
data ManagementProfilesPatch' = ManagementProfilesPatch'
    { _mppQuotaUser     :: !(Maybe Text)
    , _mppPrettyPrint   :: !Bool
    , _mppWebPropertyId :: !Text
    , _mppUserIP        :: !(Maybe Text)
    , _mppProfileId     :: !Text
    , _mppPayload       :: !Profile
    , _mppAccountId     :: !Text
    , _mppKey           :: !(Maybe Key)
    , _mppOAuthToken    :: !(Maybe OAuthToken)
    , _mppFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mppQuotaUser'
--
-- * 'mppPrettyPrint'
--
-- * 'mppWebPropertyId'
--
-- * 'mppUserIP'
--
-- * 'mppProfileId'
--
-- * 'mppPayload'
--
-- * 'mppAccountId'
--
-- * 'mppKey'
--
-- * 'mppOAuthToken'
--
-- * 'mppFields'
managementProfilesPatch'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Profile -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProfilesPatch'
managementProfilesPatch' pMppWebPropertyId_ pMppProfileId_ pMppPayload_ pMppAccountId_ =
    ManagementProfilesPatch'
    { _mppQuotaUser = Nothing
    , _mppPrettyPrint = False
    , _mppWebPropertyId = pMppWebPropertyId_
    , _mppUserIP = Nothing
    , _mppProfileId = pMppProfileId_
    , _mppPayload = pMppPayload_
    , _mppAccountId = pMppAccountId_
    , _mppKey = Nothing
    , _mppOAuthToken = Nothing
    , _mppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mppQuotaUser :: Lens' ManagementProfilesPatch' (Maybe Text)
mppQuotaUser
  = lens _mppQuotaUser (\ s a -> s{_mppQuotaUser = a})

-- | Returns response with indentations and line breaks.
mppPrettyPrint :: Lens' ManagementProfilesPatch' Bool
mppPrettyPrint
  = lens _mppPrettyPrint
      (\ s a -> s{_mppPrettyPrint = a})

-- | Web property ID to which the view (profile) belongs
mppWebPropertyId :: Lens' ManagementProfilesPatch' Text
mppWebPropertyId
  = lens _mppWebPropertyId
      (\ s a -> s{_mppWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mppUserIP :: Lens' ManagementProfilesPatch' (Maybe Text)
mppUserIP
  = lens _mppUserIP (\ s a -> s{_mppUserIP = a})

-- | ID of the view (profile) to be updated.
mppProfileId :: Lens' ManagementProfilesPatch' Text
mppProfileId
  = lens _mppProfileId (\ s a -> s{_mppProfileId = a})

-- | Multipart request metadata.
mppPayload :: Lens' ManagementProfilesPatch' Profile
mppPayload
  = lens _mppPayload (\ s a -> s{_mppPayload = a})

-- | Account ID to which the view (profile) belongs
mppAccountId :: Lens' ManagementProfilesPatch' Text
mppAccountId
  = lens _mppAccountId (\ s a -> s{_mppAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mppKey :: Lens' ManagementProfilesPatch' (Maybe Key)
mppKey = lens _mppKey (\ s a -> s{_mppKey = a})

-- | OAuth 2.0 token for the current user.
mppOAuthToken :: Lens' ManagementProfilesPatch' (Maybe OAuthToken)
mppOAuthToken
  = lens _mppOAuthToken
      (\ s a -> s{_mppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mppFields :: Lens' ManagementProfilesPatch' (Maybe Text)
mppFields
  = lens _mppFields (\ s a -> s{_mppFields = a})

instance GoogleAuth ManagementProfilesPatch' where
        authKey = mppKey . _Just
        authToken = mppOAuthToken . _Just

instance GoogleRequest ManagementProfilesPatch' where
        type Rs ManagementProfilesPatch' = Profile
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u ManagementProfilesPatch'{..}
          = go _mppAccountId _mppWebPropertyId _mppProfileId
              _mppQuotaUser
              (Just _mppPrettyPrint)
              _mppUserIP
              _mppFields
              _mppKey
              _mppOAuthToken
              (Just AltJSON)
              _mppPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManagementProfilesPatchResource)
                      r
                      u

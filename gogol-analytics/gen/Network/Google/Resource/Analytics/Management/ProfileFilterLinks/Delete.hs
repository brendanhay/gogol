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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileFilterLinksDelete@.
module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Delete
    (
    -- * REST Resource
      ManagementProfileFilterLinksDeleteResource

    -- * Creating a Request
    , managementProfileFilterLinksDelete'
    , ManagementProfileFilterLinksDelete'

    -- * Request Lenses
    , mpfldQuotaUser
    , mpfldPrettyPrint
    , mpfldWebPropertyId
    , mpfldUserIP
    , mpfldProfileId
    , mpfldAccountId
    , mpfldKey
    , mpfldLinkId
    , mpfldOAuthToken
    , mpfldFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksDelete@ which the
-- 'ManagementProfileFilterLinksDelete'' request conforms to.
type ManagementProfileFilterLinksDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a profile filter link.
--
-- /See:/ 'managementProfileFilterLinksDelete'' smart constructor.
data ManagementProfileFilterLinksDelete' = ManagementProfileFilterLinksDelete'
    { _mpfldQuotaUser     :: !(Maybe Text)
    , _mpfldPrettyPrint   :: !Bool
    , _mpfldWebPropertyId :: !Text
    , _mpfldUserIP        :: !(Maybe Text)
    , _mpfldProfileId     :: !Text
    , _mpfldAccountId     :: !Text
    , _mpfldKey           :: !(Maybe Key)
    , _mpfldLinkId        :: !Text
    , _mpfldOAuthToken    :: !(Maybe OAuthToken)
    , _mpfldFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfldQuotaUser'
--
-- * 'mpfldPrettyPrint'
--
-- * 'mpfldWebPropertyId'
--
-- * 'mpfldUserIP'
--
-- * 'mpfldProfileId'
--
-- * 'mpfldAccountId'
--
-- * 'mpfldKey'
--
-- * 'mpfldLinkId'
--
-- * 'mpfldOAuthToken'
--
-- * 'mpfldFields'
managementProfileFilterLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileFilterLinksDelete'
managementProfileFilterLinksDelete' pMpfldWebPropertyId_ pMpfldProfileId_ pMpfldAccountId_ pMpfldLinkId_ =
    ManagementProfileFilterLinksDelete'
    { _mpfldQuotaUser = Nothing
    , _mpfldPrettyPrint = False
    , _mpfldWebPropertyId = pMpfldWebPropertyId_
    , _mpfldUserIP = Nothing
    , _mpfldProfileId = pMpfldProfileId_
    , _mpfldAccountId = pMpfldAccountId_
    , _mpfldKey = Nothing
    , _mpfldLinkId = pMpfldLinkId_
    , _mpfldOAuthToken = Nothing
    , _mpfldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfldQuotaUser :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldQuotaUser
  = lens _mpfldQuotaUser
      (\ s a -> s{_mpfldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfldPrettyPrint :: Lens' ManagementProfileFilterLinksDelete' Bool
mpfldPrettyPrint
  = lens _mpfldPrettyPrint
      (\ s a -> s{_mpfldPrettyPrint = a})

-- | Web property Id to which the profile filter link belongs.
mpfldWebPropertyId :: Lens' ManagementProfileFilterLinksDelete' Text
mpfldWebPropertyId
  = lens _mpfldWebPropertyId
      (\ s a -> s{_mpfldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfldUserIP :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldUserIP
  = lens _mpfldUserIP (\ s a -> s{_mpfldUserIP = a})

-- | Profile ID to which the filter link belongs.
mpfldProfileId :: Lens' ManagementProfileFilterLinksDelete' Text
mpfldProfileId
  = lens _mpfldProfileId
      (\ s a -> s{_mpfldProfileId = a})

-- | Account ID to which the profile filter link belongs.
mpfldAccountId :: Lens' ManagementProfileFilterLinksDelete' Text
mpfldAccountId
  = lens _mpfldAccountId
      (\ s a -> s{_mpfldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfldKey :: Lens' ManagementProfileFilterLinksDelete' (Maybe Key)
mpfldKey = lens _mpfldKey (\ s a -> s{_mpfldKey = a})

-- | ID of the profile filter link to delete.
mpfldLinkId :: Lens' ManagementProfileFilterLinksDelete' Text
mpfldLinkId
  = lens _mpfldLinkId (\ s a -> s{_mpfldLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfldOAuthToken :: Lens' ManagementProfileFilterLinksDelete' (Maybe OAuthToken)
mpfldOAuthToken
  = lens _mpfldOAuthToken
      (\ s a -> s{_mpfldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfldFields :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldFields
  = lens _mpfldFields (\ s a -> s{_mpfldFields = a})

instance GoogleAuth
         ManagementProfileFilterLinksDelete' where
        authKey = mpfldKey . _Just
        authToken = mpfldOAuthToken . _Just

instance GoogleRequest
         ManagementProfileFilterLinksDelete' where
        type Rs ManagementProfileFilterLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksDelete'{..}
          = go _mpfldAccountId _mpfldWebPropertyId
              _mpfldProfileId
              _mpfldLinkId
              _mpfldQuotaUser
              (Just _mpfldPrettyPrint)
              _mpfldUserIP
              _mpfldFields
              _mpfldKey
              _mpfldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksDeleteResource)
                      r
                      u

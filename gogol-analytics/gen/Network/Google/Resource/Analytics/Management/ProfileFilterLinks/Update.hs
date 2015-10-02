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
-- Module      : Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProfileFilterLinksUpdate@.
module Network.Google.Resource.Analytics.Management.ProfileFilterLinks.Update
    (
    -- * REST Resource
      ManagementProfileFilterLinksUpdateResource

    -- * Creating a Request
    , managementProfileFilterLinksUpdate'
    , ManagementProfileFilterLinksUpdate'

    -- * Request Lenses
    , mpfluQuotaUser
    , mpfluPrettyPrint
    , mpfluWebPropertyId
    , mpfluUserIP
    , mpfluProfileId
    , mpfluAccountId
    , mpfluKey
    , mpfluLinkId
    , mpfluOAuthToken
    , mpfluProfileFilterLink
    , mpfluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksUpdate@ which the
-- 'ManagementProfileFilterLinksUpdate'' request conforms to.
type ManagementProfileFilterLinksUpdateResource =
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
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ProfileFilterLink :>
                                       Put '[JSON] ProfileFilterLink

-- | Update an existing profile filter link.
--
-- /See:/ 'managementProfileFilterLinksUpdate'' smart constructor.
data ManagementProfileFilterLinksUpdate' = ManagementProfileFilterLinksUpdate'
    { _mpfluQuotaUser         :: !(Maybe Text)
    , _mpfluPrettyPrint       :: !Bool
    , _mpfluWebPropertyId     :: !Text
    , _mpfluUserIP            :: !(Maybe Text)
    , _mpfluProfileId         :: !Text
    , _mpfluAccountId         :: !Text
    , _mpfluKey               :: !(Maybe Key)
    , _mpfluLinkId            :: !Text
    , _mpfluOAuthToken        :: !(Maybe OAuthToken)
    , _mpfluProfileFilterLink :: !ProfileFilterLink
    , _mpfluFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProfileFilterLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfluQuotaUser'
--
-- * 'mpfluPrettyPrint'
--
-- * 'mpfluWebPropertyId'
--
-- * 'mpfluUserIP'
--
-- * 'mpfluProfileId'
--
-- * 'mpfluAccountId'
--
-- * 'mpfluKey'
--
-- * 'mpfluLinkId'
--
-- * 'mpfluOAuthToken'
--
-- * 'mpfluProfileFilterLink'
--
-- * 'mpfluFields'
managementProfileFilterLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ProfileFilterLink -- ^ 'ProfileFilterLink'
    -> ManagementProfileFilterLinksUpdate'
managementProfileFilterLinksUpdate' pMpfluWebPropertyId_ pMpfluProfileId_ pMpfluAccountId_ pMpfluLinkId_ pMpfluProfileFilterLink_ =
    ManagementProfileFilterLinksUpdate'
    { _mpfluQuotaUser = Nothing
    , _mpfluPrettyPrint = False
    , _mpfluWebPropertyId = pMpfluWebPropertyId_
    , _mpfluUserIP = Nothing
    , _mpfluProfileId = pMpfluProfileId_
    , _mpfluAccountId = pMpfluAccountId_
    , _mpfluKey = Nothing
    , _mpfluLinkId = pMpfluLinkId_
    , _mpfluOAuthToken = Nothing
    , _mpfluProfileFilterLink = pMpfluProfileFilterLink_
    , _mpfluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfluQuotaUser :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluQuotaUser
  = lens _mpfluQuotaUser
      (\ s a -> s{_mpfluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfluPrettyPrint :: Lens' ManagementProfileFilterLinksUpdate' Bool
mpfluPrettyPrint
  = lens _mpfluPrettyPrint
      (\ s a -> s{_mpfluPrettyPrint = a})

-- | Web property Id to which profile filter link belongs
mpfluWebPropertyId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluWebPropertyId
  = lens _mpfluWebPropertyId
      (\ s a -> s{_mpfluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfluUserIP :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluUserIP
  = lens _mpfluUserIP (\ s a -> s{_mpfluUserIP = a})

-- | Profile ID to which filter link belongs
mpfluProfileId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluProfileId
  = lens _mpfluProfileId
      (\ s a -> s{_mpfluProfileId = a})

-- | Account ID to which profile filter link belongs.
mpfluAccountId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluAccountId
  = lens _mpfluAccountId
      (\ s a -> s{_mpfluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfluKey :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Key)
mpfluKey = lens _mpfluKey (\ s a -> s{_mpfluKey = a})

-- | ID of the profile filter link to be updated.
mpfluLinkId :: Lens' ManagementProfileFilterLinksUpdate' Text
mpfluLinkId
  = lens _mpfluLinkId (\ s a -> s{_mpfluLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfluOAuthToken :: Lens' ManagementProfileFilterLinksUpdate' (Maybe OAuthToken)
mpfluOAuthToken
  = lens _mpfluOAuthToken
      (\ s a -> s{_mpfluOAuthToken = a})

-- | Multipart request metadata.
mpfluProfileFilterLink :: Lens' ManagementProfileFilterLinksUpdate' ProfileFilterLink
mpfluProfileFilterLink
  = lens _mpfluProfileFilterLink
      (\ s a -> s{_mpfluProfileFilterLink = a})

-- | Selector specifying which fields to include in a partial response.
mpfluFields :: Lens' ManagementProfileFilterLinksUpdate' (Maybe Text)
mpfluFields
  = lens _mpfluFields (\ s a -> s{_mpfluFields = a})

instance GoogleAuth
         ManagementProfileFilterLinksUpdate' where
        authKey = mpfluKey . _Just
        authToken = mpfluOAuthToken . _Just

instance GoogleRequest
         ManagementProfileFilterLinksUpdate' where
        type Rs ManagementProfileFilterLinksUpdate' =
             ProfileFilterLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksUpdate'{..}
          = go _mpfluAccountId _mpfluWebPropertyId
              _mpfluProfileId
              _mpfluLinkId
              _mpfluQuotaUser
              (Just _mpfluPrettyPrint)
              _mpfluUserIP
              _mpfluFields
              _mpfluKey
              _mpfluOAuthToken
              (Just AltJSON)
              _mpfluProfileFilterLink
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksUpdateResource)
                      r
                      u

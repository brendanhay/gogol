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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileUserLinksDelete@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Delete
    (
    -- * REST Resource
      ManagementProFileUserLinksDeleteResource

    -- * Creating a Request
    , managementProFileUserLinksDelete'
    , ManagementProFileUserLinksDelete'

    -- * Request Lenses
    , mpfuldQuotaUser
    , mpfuldPrettyPrint
    , mpfuldWebPropertyId
    , mpfuldUserIP
    , mpfuldProFileId
    , mpfuldAccountId
    , mpfuldKey
    , mpfuldLinkId
    , mpfuldOAuthToken
    , mpfuldFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileUserLinksDelete@ which the
-- 'ManagementProFileUserLinksDelete'' request conforms to.
type ManagementProFileUserLinksDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the given view (profile).
--
-- /See:/ 'managementProFileUserLinksDelete'' smart constructor.
data ManagementProFileUserLinksDelete' = ManagementProFileUserLinksDelete'
    { _mpfuldQuotaUser     :: !(Maybe Text)
    , _mpfuldPrettyPrint   :: !Bool
    , _mpfuldWebPropertyId :: !Text
    , _mpfuldUserIP        :: !(Maybe Text)
    , _mpfuldProFileId     :: !Text
    , _mpfuldAccountId     :: !Text
    , _mpfuldKey           :: !(Maybe Key)
    , _mpfuldLinkId        :: !Text
    , _mpfuldOAuthToken    :: !(Maybe OAuthToken)
    , _mpfuldFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuldQuotaUser'
--
-- * 'mpfuldPrettyPrint'
--
-- * 'mpfuldWebPropertyId'
--
-- * 'mpfuldUserIP'
--
-- * 'mpfuldProFileId'
--
-- * 'mpfuldAccountId'
--
-- * 'mpfuldKey'
--
-- * 'mpfuldLinkId'
--
-- * 'mpfuldOAuthToken'
--
-- * 'mpfuldFields'
managementProFileUserLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProFileUserLinksDelete'
managementProFileUserLinksDelete' pMpfuldWebPropertyId_ pMpfuldProFileId_ pMpfuldAccountId_ pMpfuldLinkId_ =
    ManagementProFileUserLinksDelete'
    { _mpfuldQuotaUser = Nothing
    , _mpfuldPrettyPrint = False
    , _mpfuldWebPropertyId = pMpfuldWebPropertyId_
    , _mpfuldUserIP = Nothing
    , _mpfuldProFileId = pMpfuldProFileId_
    , _mpfuldAccountId = pMpfuldAccountId_
    , _mpfuldKey = Nothing
    , _mpfuldLinkId = pMpfuldLinkId_
    , _mpfuldOAuthToken = Nothing
    , _mpfuldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfuldQuotaUser :: Lens' ManagementProFileUserLinksDelete' (Maybe Text)
mpfuldQuotaUser
  = lens _mpfuldQuotaUser
      (\ s a -> s{_mpfuldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfuldPrettyPrint :: Lens' ManagementProFileUserLinksDelete' Bool
mpfuldPrettyPrint
  = lens _mpfuldPrettyPrint
      (\ s a -> s{_mpfuldPrettyPrint = a})

-- | Web Property ID to delete the user link for.
mpfuldWebPropertyId :: Lens' ManagementProFileUserLinksDelete' Text
mpfuldWebPropertyId
  = lens _mpfuldWebPropertyId
      (\ s a -> s{_mpfuldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfuldUserIP :: Lens' ManagementProFileUserLinksDelete' (Maybe Text)
mpfuldUserIP
  = lens _mpfuldUserIP (\ s a -> s{_mpfuldUserIP = a})

-- | View (Profile) ID to delete the user link for.
mpfuldProFileId :: Lens' ManagementProFileUserLinksDelete' Text
mpfuldProFileId
  = lens _mpfuldProFileId
      (\ s a -> s{_mpfuldProFileId = a})

-- | Account ID to delete the user link for.
mpfuldAccountId :: Lens' ManagementProFileUserLinksDelete' Text
mpfuldAccountId
  = lens _mpfuldAccountId
      (\ s a -> s{_mpfuldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfuldKey :: Lens' ManagementProFileUserLinksDelete' (Maybe Key)
mpfuldKey
  = lens _mpfuldKey (\ s a -> s{_mpfuldKey = a})

-- | Link ID to delete the user link for.
mpfuldLinkId :: Lens' ManagementProFileUserLinksDelete' Text
mpfuldLinkId
  = lens _mpfuldLinkId (\ s a -> s{_mpfuldLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfuldOAuthToken :: Lens' ManagementProFileUserLinksDelete' (Maybe OAuthToken)
mpfuldOAuthToken
  = lens _mpfuldOAuthToken
      (\ s a -> s{_mpfuldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfuldFields :: Lens' ManagementProFileUserLinksDelete' (Maybe Text)
mpfuldFields
  = lens _mpfuldFields (\ s a -> s{_mpfuldFields = a})

instance GoogleAuth ManagementProFileUserLinksDelete'
         where
        authKey = mpfuldKey . _Just
        authToken = mpfuldOAuthToken . _Just

instance GoogleRequest
         ManagementProFileUserLinksDelete' where
        type Rs ManagementProFileUserLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileUserLinksDelete'{..}
          = go _mpfuldAccountId _mpfuldWebPropertyId
              _mpfuldProFileId
              _mpfuldLinkId
              _mpfuldQuotaUser
              (Just _mpfuldPrettyPrint)
              _mpfuldUserIP
              _mpfuldFields
              _mpfuldKey
              _mpfuldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileUserLinksDeleteResource)
                      r
                      u

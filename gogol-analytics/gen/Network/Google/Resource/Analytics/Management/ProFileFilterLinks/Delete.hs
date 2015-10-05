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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksDelete@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Delete
    (
    -- * REST Resource
      ManagementProFileFilterLinksDeleteResource

    -- * Creating a Request
    , managementProFileFilterLinksDelete'
    , ManagementProFileFilterLinksDelete'

    -- * Request Lenses
    , mpffldQuotaUser
    , mpffldPrettyPrint
    , mpffldWebPropertyId
    , mpffldUserIP
    , mpffldProFileId
    , mpffldAccountId
    , mpffldKey
    , mpffldLinkId
    , mpffldOAuthToken
    , mpffldFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksDelete@ which the
-- 'ManagementProFileFilterLinksDelete'' request conforms to.
type ManagementProFileFilterLinksDeleteResource =
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
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a profile filter link.
--
-- /See:/ 'managementProFileFilterLinksDelete'' smart constructor.
data ManagementProFileFilterLinksDelete' = ManagementProFileFilterLinksDelete'
    { _mpffldQuotaUser     :: !(Maybe Text)
    , _mpffldPrettyPrint   :: !Bool
    , _mpffldWebPropertyId :: !Text
    , _mpffldUserIP        :: !(Maybe Text)
    , _mpffldProFileId     :: !Text
    , _mpffldAccountId     :: !Text
    , _mpffldKey           :: !(Maybe AuthKey)
    , _mpffldLinkId        :: !Text
    , _mpffldOAuthToken    :: !(Maybe OAuthToken)
    , _mpffldFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffldQuotaUser'
--
-- * 'mpffldPrettyPrint'
--
-- * 'mpffldWebPropertyId'
--
-- * 'mpffldUserIP'
--
-- * 'mpffldProFileId'
--
-- * 'mpffldAccountId'
--
-- * 'mpffldKey'
--
-- * 'mpffldLinkId'
--
-- * 'mpffldOAuthToken'
--
-- * 'mpffldFields'
managementProFileFilterLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProFileFilterLinksDelete'
managementProFileFilterLinksDelete' pMpffldWebPropertyId_ pMpffldProFileId_ pMpffldAccountId_ pMpffldLinkId_ =
    ManagementProFileFilterLinksDelete'
    { _mpffldQuotaUser = Nothing
    , _mpffldPrettyPrint = False
    , _mpffldWebPropertyId = pMpffldWebPropertyId_
    , _mpffldUserIP = Nothing
    , _mpffldProFileId = pMpffldProFileId_
    , _mpffldAccountId = pMpffldAccountId_
    , _mpffldKey = Nothing
    , _mpffldLinkId = pMpffldLinkId_
    , _mpffldOAuthToken = Nothing
    , _mpffldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpffldQuotaUser :: Lens' ManagementProFileFilterLinksDelete' (Maybe Text)
mpffldQuotaUser
  = lens _mpffldQuotaUser
      (\ s a -> s{_mpffldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpffldPrettyPrint :: Lens' ManagementProFileFilterLinksDelete' Bool
mpffldPrettyPrint
  = lens _mpffldPrettyPrint
      (\ s a -> s{_mpffldPrettyPrint = a})

-- | Web property Id to which the profile filter link belongs.
mpffldWebPropertyId :: Lens' ManagementProFileFilterLinksDelete' Text
mpffldWebPropertyId
  = lens _mpffldWebPropertyId
      (\ s a -> s{_mpffldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpffldUserIP :: Lens' ManagementProFileFilterLinksDelete' (Maybe Text)
mpffldUserIP
  = lens _mpffldUserIP (\ s a -> s{_mpffldUserIP = a})

-- | Profile ID to which the filter link belongs.
mpffldProFileId :: Lens' ManagementProFileFilterLinksDelete' Text
mpffldProFileId
  = lens _mpffldProFileId
      (\ s a -> s{_mpffldProFileId = a})

-- | Account ID to which the profile filter link belongs.
mpffldAccountId :: Lens' ManagementProFileFilterLinksDelete' Text
mpffldAccountId
  = lens _mpffldAccountId
      (\ s a -> s{_mpffldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpffldKey :: Lens' ManagementProFileFilterLinksDelete' (Maybe AuthKey)
mpffldKey
  = lens _mpffldKey (\ s a -> s{_mpffldKey = a})

-- | ID of the profile filter link to delete.
mpffldLinkId :: Lens' ManagementProFileFilterLinksDelete' Text
mpffldLinkId
  = lens _mpffldLinkId (\ s a -> s{_mpffldLinkId = a})

-- | OAuth 2.0 token for the current user.
mpffldOAuthToken :: Lens' ManagementProFileFilterLinksDelete' (Maybe OAuthToken)
mpffldOAuthToken
  = lens _mpffldOAuthToken
      (\ s a -> s{_mpffldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpffldFields :: Lens' ManagementProFileFilterLinksDelete' (Maybe Text)
mpffldFields
  = lens _mpffldFields (\ s a -> s{_mpffldFields = a})

instance GoogleAuth
         ManagementProFileFilterLinksDelete' where
        authKey = mpffldKey . _Just
        authToken = mpffldOAuthToken . _Just

instance GoogleRequest
         ManagementProFileFilterLinksDelete' where
        type Rs ManagementProFileFilterLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProFileFilterLinksDelete'{..}
          = go _mpffldAccountId _mpffldWebPropertyId
              _mpffldProFileId
              _mpffldLinkId
              _mpffldQuotaUser
              (Just _mpffldPrettyPrint)
              _mpffldUserIP
              _mpffldFields
              _mpffldKey
              _mpffldOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksDeleteResource)
                      r
                      u

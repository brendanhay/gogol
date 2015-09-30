{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Analytics.Management.ProfileFilterLinks.Delete
    (
    -- * REST Resource
      ManagementProfileFilterLinksDeleteAPI

    -- * Creating a Request
    , managementProfileFilterLinksDelete
    , ManagementProfileFilterLinksDelete

    -- * Request Lenses
    , mpfldQuotaUser
    , mpfldPrettyPrint
    , mpfldWebPropertyId
    , mpfldUserIp
    , mpfldProfileId
    , mpfldAccountId
    , mpfldKey
    , mpfldLinkId
    , mpfldOauthToken
    , mpfldFields
    , mpfldAlt
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProfileFilterLinksDelete@ which the
-- 'ManagementProfileFilterLinksDelete' request conforms to.
type ManagementProfileFilterLinksDeleteAPI =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     Capture "linkId" Text :> Delete '[JSON] ()

-- | Delete a profile filter link.
--
-- /See:/ 'managementProfileFilterLinksDelete' smart constructor.
data ManagementProfileFilterLinksDelete = ManagementProfileFilterLinksDelete
    { _mpfldQuotaUser     :: !(Maybe Text)
    , _mpfldPrettyPrint   :: !Bool
    , _mpfldWebPropertyId :: !Text
    , _mpfldUserIp        :: !(Maybe Text)
    , _mpfldProfileId     :: !Text
    , _mpfldAccountId     :: !Text
    , _mpfldKey           :: !(Maybe Text)
    , _mpfldLinkId        :: !Text
    , _mpfldOauthToken    :: !(Maybe Text)
    , _mpfldFields        :: !(Maybe Text)
    , _mpfldAlt           :: !Text
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
-- * 'mpfldUserIp'
--
-- * 'mpfldProfileId'
--
-- * 'mpfldAccountId'
--
-- * 'mpfldKey'
--
-- * 'mpfldLinkId'
--
-- * 'mpfldOauthToken'
--
-- * 'mpfldFields'
--
-- * 'mpfldAlt'
managementProfileFilterLinksDelete
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProfileFilterLinksDelete
managementProfileFilterLinksDelete pMpfldWebPropertyId_ pMpfldProfileId_ pMpfldAccountId_ pMpfldLinkId_ =
    ManagementProfileFilterLinksDelete
    { _mpfldQuotaUser = Nothing
    , _mpfldPrettyPrint = False
    , _mpfldWebPropertyId = pMpfldWebPropertyId_
    , _mpfldUserIp = Nothing
    , _mpfldProfileId = pMpfldProfileId_
    , _mpfldAccountId = pMpfldAccountId_
    , _mpfldKey = Nothing
    , _mpfldLinkId = pMpfldLinkId_
    , _mpfldOauthToken = Nothing
    , _mpfldFields = Nothing
    , _mpfldAlt = "json"
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
mpfldUserIp :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldUserIp
  = lens _mpfldUserIp (\ s a -> s{_mpfldUserIp = a})

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
mpfldKey :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldKey = lens _mpfldKey (\ s a -> s{_mpfldKey = a})

-- | ID of the profile filter link to delete.
mpfldLinkId :: Lens' ManagementProfileFilterLinksDelete' Text
mpfldLinkId
  = lens _mpfldLinkId (\ s a -> s{_mpfldLinkId = a})

-- | OAuth 2.0 token for the current user.
mpfldOauthToken :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldOauthToken
  = lens _mpfldOauthToken
      (\ s a -> s{_mpfldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfldFields :: Lens' ManagementProfileFilterLinksDelete' (Maybe Text)
mpfldFields
  = lens _mpfldFields (\ s a -> s{_mpfldFields = a})

-- | Data format for the response.
mpfldAlt :: Lens' ManagementProfileFilterLinksDelete' Text
mpfldAlt = lens _mpfldAlt (\ s a -> s{_mpfldAlt = a})

instance GoogleRequest
         ManagementProfileFilterLinksDelete' where
        type Rs ManagementProfileFilterLinksDelete' = ()
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementProfileFilterLinksDelete{..}
          = go _mpfldQuotaUser _mpfldPrettyPrint
              _mpfldWebPropertyId
              _mpfldUserIp
              _mpfldProfileId
              _mpfldAccountId
              _mpfldKey
              _mpfldLinkId
              _mpfldOauthToken
              _mpfldFields
              _mpfldAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementProfileFilterLinksDeleteAPI)
                      r
                      u

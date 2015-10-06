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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update an existing profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksUpdate@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Update
    (
    -- * REST Resource
      ManagementProFileFilterLinksUpdateResource

    -- * Creating a Request
    , managementProFileFilterLinksUpdate'
    , ManagementProFileFilterLinksUpdate'

    -- * Request Lenses
    , mpffluQuotaUser
    , mpffluPrettyPrint
    , mpffluWebPropertyId
    , mpffluUserIP
    , mpffluProFileId
    , mpffluPayload
    , mpffluAccountId
    , mpffluKey
    , mpffluLinkId
    , mpffluOAuthToken
    , mpffluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksUpdate@ which the
-- 'ManagementProFileFilterLinksUpdate'' request conforms to.
type ManagementProFileFilterLinksUpdateResource =
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
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] ProFileFilterLink :>
                                       Put '[JSON] ProFileFilterLink

-- | Update an existing profile filter link.
--
-- /See:/ 'managementProFileFilterLinksUpdate'' smart constructor.
data ManagementProFileFilterLinksUpdate' = ManagementProFileFilterLinksUpdate'
    { _mpffluQuotaUser     :: !(Maybe Text)
    , _mpffluPrettyPrint   :: !Bool
    , _mpffluWebPropertyId :: !Text
    , _mpffluUserIP        :: !(Maybe Text)
    , _mpffluProFileId     :: !Text
    , _mpffluPayload       :: !ProFileFilterLink
    , _mpffluAccountId     :: !Text
    , _mpffluKey           :: !(Maybe AuthKey)
    , _mpffluLinkId        :: !Text
    , _mpffluOAuthToken    :: !(Maybe OAuthToken)
    , _mpffluFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffluQuotaUser'
--
-- * 'mpffluPrettyPrint'
--
-- * 'mpffluWebPropertyId'
--
-- * 'mpffluUserIP'
--
-- * 'mpffluProFileId'
--
-- * 'mpffluPayload'
--
-- * 'mpffluAccountId'
--
-- * 'mpffluKey'
--
-- * 'mpffluLinkId'
--
-- * 'mpffluOAuthToken'
--
-- * 'mpffluFields'
managementProFileFilterLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFileFilterLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementProFileFilterLinksUpdate'
managementProFileFilterLinksUpdate' pMpffluWebPropertyId_ pMpffluProFileId_ pMpffluPayload_ pMpffluAccountId_ pMpffluLinkId_ =
    ManagementProFileFilterLinksUpdate'
    { _mpffluQuotaUser = Nothing
    , _mpffluPrettyPrint = False
    , _mpffluWebPropertyId = pMpffluWebPropertyId_
    , _mpffluUserIP = Nothing
    , _mpffluProFileId = pMpffluProFileId_
    , _mpffluPayload = pMpffluPayload_
    , _mpffluAccountId = pMpffluAccountId_
    , _mpffluKey = Nothing
    , _mpffluLinkId = pMpffluLinkId_
    , _mpffluOAuthToken = Nothing
    , _mpffluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpffluQuotaUser :: Lens' ManagementProFileFilterLinksUpdate' (Maybe Text)
mpffluQuotaUser
  = lens _mpffluQuotaUser
      (\ s a -> s{_mpffluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpffluPrettyPrint :: Lens' ManagementProFileFilterLinksUpdate' Bool
mpffluPrettyPrint
  = lens _mpffluPrettyPrint
      (\ s a -> s{_mpffluPrettyPrint = a})

-- | Web property Id to which profile filter link belongs
mpffluWebPropertyId :: Lens' ManagementProFileFilterLinksUpdate' Text
mpffluWebPropertyId
  = lens _mpffluWebPropertyId
      (\ s a -> s{_mpffluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpffluUserIP :: Lens' ManagementProFileFilterLinksUpdate' (Maybe Text)
mpffluUserIP
  = lens _mpffluUserIP (\ s a -> s{_mpffluUserIP = a})

-- | Profile ID to which filter link belongs
mpffluProFileId :: Lens' ManagementProFileFilterLinksUpdate' Text
mpffluProFileId
  = lens _mpffluProFileId
      (\ s a -> s{_mpffluProFileId = a})

-- | Multipart request metadata.
mpffluPayload :: Lens' ManagementProFileFilterLinksUpdate' ProFileFilterLink
mpffluPayload
  = lens _mpffluPayload
      (\ s a -> s{_mpffluPayload = a})

-- | Account ID to which profile filter link belongs.
mpffluAccountId :: Lens' ManagementProFileFilterLinksUpdate' Text
mpffluAccountId
  = lens _mpffluAccountId
      (\ s a -> s{_mpffluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpffluKey :: Lens' ManagementProFileFilterLinksUpdate' (Maybe AuthKey)
mpffluKey
  = lens _mpffluKey (\ s a -> s{_mpffluKey = a})

-- | ID of the profile filter link to be updated.
mpffluLinkId :: Lens' ManagementProFileFilterLinksUpdate' Text
mpffluLinkId
  = lens _mpffluLinkId (\ s a -> s{_mpffluLinkId = a})

-- | OAuth 2.0 token for the current user.
mpffluOAuthToken :: Lens' ManagementProFileFilterLinksUpdate' (Maybe OAuthToken)
mpffluOAuthToken
  = lens _mpffluOAuthToken
      (\ s a -> s{_mpffluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpffluFields :: Lens' ManagementProFileFilterLinksUpdate' (Maybe Text)
mpffluFields
  = lens _mpffluFields (\ s a -> s{_mpffluFields = a})

instance GoogleAuth
         ManagementProFileFilterLinksUpdate' where
        _AuthKey = mpffluKey . _Just
        _AuthToken = mpffluOAuthToken . _Just

instance GoogleRequest
         ManagementProFileFilterLinksUpdate' where
        type Rs ManagementProFileFilterLinksUpdate' =
             ProFileFilterLink
        request = requestWith analyticsRequest
        requestWith rq
          ManagementProFileFilterLinksUpdate'{..}
          = go _mpffluAccountId _mpffluWebPropertyId
              _mpffluProFileId
              _mpffluLinkId
              _mpffluQuotaUser
              (Just _mpffluPrettyPrint)
              _mpffluUserIP
              _mpffluFields
              _mpffluKey
              _mpffluOAuthToken
              (Just AltJSON)
              _mpffluPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksUpdateResource)
                      rq

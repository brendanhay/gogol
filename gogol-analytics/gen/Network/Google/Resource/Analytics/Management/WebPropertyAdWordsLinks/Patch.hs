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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing webProperty-AdWords link. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksPatch@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Patch
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksPatchResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksPatch'
    , ManagementWebPropertyAdWordsLinksPatch'

    -- * Request Lenses
    , mwpawlpQuotaUser
    , mwpawlpPrettyPrint
    , mwpawlpWebPropertyId
    , mwpawlpUserIP
    , mwpawlpPayload
    , mwpawlpAccountId
    , mwpawlpKey
    , mwpawlpWebPropertyAdWordsLinkId
    , mwpawlpOAuthToken
    , mwpawlpFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksPatch@ which the
-- 'ManagementWebPropertyAdWordsLinksPatch'' request conforms to.
type ManagementWebPropertyAdWordsLinksPatchResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] EntityAdWordsLink :>
                                   Patch '[JSON] EntityAdWordsLink

-- | Updates an existing webProperty-AdWords link. This method supports patch
-- semantics.
--
-- /See:/ 'managementWebPropertyAdWordsLinksPatch'' smart constructor.
data ManagementWebPropertyAdWordsLinksPatch' = ManagementWebPropertyAdWordsLinksPatch'
    { _mwpawlpQuotaUser                :: !(Maybe Text)
    , _mwpawlpPrettyPrint              :: !Bool
    , _mwpawlpWebPropertyId            :: !Text
    , _mwpawlpUserIP                   :: !(Maybe Text)
    , _mwpawlpPayload                  :: !EntityAdWordsLink
    , _mwpawlpAccountId                :: !Text
    , _mwpawlpKey                      :: !(Maybe AuthKey)
    , _mwpawlpWebPropertyAdWordsLinkId :: !Text
    , _mwpawlpOAuthToken               :: !(Maybe OAuthToken)
    , _mwpawlpFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawlpQuotaUser'
--
-- * 'mwpawlpPrettyPrint'
--
-- * 'mwpawlpWebPropertyId'
--
-- * 'mwpawlpUserIP'
--
-- * 'mwpawlpPayload'
--
-- * 'mwpawlpAccountId'
--
-- * 'mwpawlpKey'
--
-- * 'mwpawlpWebPropertyAdWordsLinkId'
--
-- * 'mwpawlpOAuthToken'
--
-- * 'mwpawlpFields'
managementWebPropertyAdWordsLinksPatch'
    :: Text -- ^ 'webPropertyId'
    -> EntityAdWordsLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksPatch'
managementWebPropertyAdWordsLinksPatch' pMwpawlpWebPropertyId_ pMwpawlpPayload_ pMwpawlpAccountId_ pMwpawlpWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksPatch'
    { _mwpawlpQuotaUser = Nothing
    , _mwpawlpPrettyPrint = False
    , _mwpawlpWebPropertyId = pMwpawlpWebPropertyId_
    , _mwpawlpUserIP = Nothing
    , _mwpawlpPayload = pMwpawlpPayload_
    , _mwpawlpAccountId = pMwpawlpAccountId_
    , _mwpawlpKey = Nothing
    , _mwpawlpWebPropertyAdWordsLinkId = pMwpawlpWebPropertyAdWordsLinkId_
    , _mwpawlpOAuthToken = Nothing
    , _mwpawlpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawlpQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpQuotaUser
  = lens _mwpawlpQuotaUser
      (\ s a -> s{_mwpawlpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawlpPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksPatch' Bool
mwpawlpPrettyPrint
  = lens _mwpawlpPrettyPrint
      (\ s a -> s{_mwpawlpPrettyPrint = a})

-- | Web property ID to retrieve the AdWords link for.
mwpawlpWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksPatch' Text
mwpawlpWebPropertyId
  = lens _mwpawlpWebPropertyId
      (\ s a -> s{_mwpawlpWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawlpUserIP :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpUserIP
  = lens _mwpawlpUserIP
      (\ s a -> s{_mwpawlpUserIP = a})

-- | Multipart request metadata.
mwpawlpPayload :: Lens' ManagementWebPropertyAdWordsLinksPatch' EntityAdWordsLink
mwpawlpPayload
  = lens _mwpawlpPayload
      (\ s a -> s{_mwpawlpPayload = a})

-- | ID of the account which the given web property belongs to.
mwpawlpAccountId :: Lens' ManagementWebPropertyAdWordsLinksPatch' Text
mwpawlpAccountId
  = lens _mwpawlpAccountId
      (\ s a -> s{_mwpawlpAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawlpKey :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe AuthKey)
mwpawlpKey
  = lens _mwpawlpKey (\ s a -> s{_mwpawlpKey = a})

-- | Web property-AdWords link ID.
mwpawlpWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksPatch' Text
mwpawlpWebPropertyAdWordsLinkId
  = lens _mwpawlpWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawlpWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawlpOAuthToken :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe OAuthToken)
mwpawlpOAuthToken
  = lens _mwpawlpOAuthToken
      (\ s a -> s{_mwpawlpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawlpFields :: Lens' ManagementWebPropertyAdWordsLinksPatch' (Maybe Text)
mwpawlpFields
  = lens _mwpawlpFields
      (\ s a -> s{_mwpawlpFields = a})

instance GoogleAuth
         ManagementWebPropertyAdWordsLinksPatch' where
        _AuthKey = mwpawlpKey . _Just
        _AuthToken = mwpawlpOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksPatch' where
        type Rs ManagementWebPropertyAdWordsLinksPatch' =
             EntityAdWordsLink
        request = requestWith analyticsRequest
        requestWith rq
          ManagementWebPropertyAdWordsLinksPatch'{..}
          = go _mwpawlpAccountId _mwpawlpWebPropertyId
              _mwpawlpWebPropertyAdWordsLinkId
              _mwpawlpQuotaUser
              (Just _mwpawlpPrettyPrint)
              _mwpawlpUserIP
              _mwpawlpFields
              _mwpawlpKey
              _mwpawlpOAuthToken
              (Just AltJSON)
              _mwpawlpPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksPatchResource)
                      rq

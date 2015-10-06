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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a webProperty-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksInsert@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksInsertResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksInsert'
    , ManagementWebPropertyAdWordsLinksInsert'

    -- * Request Lenses
    , mwpawliQuotaUser
    , mwpawliPrettyPrint
    , mwpawliWebPropertyId
    , mwpawliUserIP
    , mwpawliPayload
    , mwpawliAccountId
    , mwpawliKey
    , mwpawliOAuthToken
    , mwpawliFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksInsert@ which the
-- 'ManagementWebPropertyAdWordsLinksInsert'' request conforms to.
type ManagementWebPropertyAdWordsLinksInsertResource
     =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] EntityAdWordsLink :>
                                 Post '[JSON] EntityAdWordsLink

-- | Creates a webProperty-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksInsert'' smart constructor.
data ManagementWebPropertyAdWordsLinksInsert' = ManagementWebPropertyAdWordsLinksInsert'
    { _mwpawliQuotaUser     :: !(Maybe Text)
    , _mwpawliPrettyPrint   :: !Bool
    , _mwpawliWebPropertyId :: !Text
    , _mwpawliUserIP        :: !(Maybe Text)
    , _mwpawliPayload       :: !EntityAdWordsLink
    , _mwpawliAccountId     :: !Text
    , _mwpawliKey           :: !(Maybe AuthKey)
    , _mwpawliOAuthToken    :: !(Maybe OAuthToken)
    , _mwpawliFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawliQuotaUser'
--
-- * 'mwpawliPrettyPrint'
--
-- * 'mwpawliWebPropertyId'
--
-- * 'mwpawliUserIP'
--
-- * 'mwpawliPayload'
--
-- * 'mwpawliAccountId'
--
-- * 'mwpawliKey'
--
-- * 'mwpawliOAuthToken'
--
-- * 'mwpawliFields'
managementWebPropertyAdWordsLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> EntityAdWordsLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertyAdWordsLinksInsert'
managementWebPropertyAdWordsLinksInsert' pMwpawliWebPropertyId_ pMwpawliPayload_ pMwpawliAccountId_ =
    ManagementWebPropertyAdWordsLinksInsert'
    { _mwpawliQuotaUser = Nothing
    , _mwpawliPrettyPrint = False
    , _mwpawliWebPropertyId = pMwpawliWebPropertyId_
    , _mwpawliUserIP = Nothing
    , _mwpawliPayload = pMwpawliPayload_
    , _mwpawliAccountId = pMwpawliAccountId_
    , _mwpawliKey = Nothing
    , _mwpawliOAuthToken = Nothing
    , _mwpawliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawliQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliQuotaUser
  = lens _mwpawliQuotaUser
      (\ s a -> s{_mwpawliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawliPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksInsert' Bool
mwpawliPrettyPrint
  = lens _mwpawliPrettyPrint
      (\ s a -> s{_mwpawliPrettyPrint = a})

-- | Web property ID to create the link for.
mwpawliWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliWebPropertyId
  = lens _mwpawliWebPropertyId
      (\ s a -> s{_mwpawliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawliUserIP :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliUserIP
  = lens _mwpawliUserIP
      (\ s a -> s{_mwpawliUserIP = a})

-- | Multipart request metadata.
mwpawliPayload :: Lens' ManagementWebPropertyAdWordsLinksInsert' EntityAdWordsLink
mwpawliPayload
  = lens _mwpawliPayload
      (\ s a -> s{_mwpawliPayload = a})

-- | ID of the Google Analytics account to create the link for.
mwpawliAccountId :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliAccountId
  = lens _mwpawliAccountId
      (\ s a -> s{_mwpawliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawliKey :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe AuthKey)
mwpawliKey
  = lens _mwpawliKey (\ s a -> s{_mwpawliKey = a})

-- | OAuth 2.0 token for the current user.
mwpawliOAuthToken :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe OAuthToken)
mwpawliOAuthToken
  = lens _mwpawliOAuthToken
      (\ s a -> s{_mwpawliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawliFields :: Lens' ManagementWebPropertyAdWordsLinksInsert' (Maybe Text)
mwpawliFields
  = lens _mwpawliFields
      (\ s a -> s{_mwpawliFields = a})

instance GoogleAuth
         ManagementWebPropertyAdWordsLinksInsert' where
        _AuthKey = mwpawliKey . _Just
        _AuthToken = mwpawliOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksInsert' where
        type Rs ManagementWebPropertyAdWordsLinksInsert' =
             EntityAdWordsLink
        request = requestWith analyticsRequest
        requestWith rq
          ManagementWebPropertyAdWordsLinksInsert'{..}
          = go _mwpawliAccountId _mwpawliWebPropertyId
              _mwpawliQuotaUser
              (Just _mwpawliPrettyPrint)
              _mwpawliUserIP
              _mwpawliFields
              _mwpawliKey
              _mwpawliOAuthToken
              (Just AltJSON)
              _mwpawliPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy
                           ManagementWebPropertyAdWordsLinksInsertResource)
                      rq

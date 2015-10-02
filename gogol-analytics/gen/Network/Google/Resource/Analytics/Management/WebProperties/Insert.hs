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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertiesInsert@.
module Network.Google.Resource.Analytics.Management.WebProperties.Insert
    (
    -- * REST Resource
      ManagementWebPropertiesInsertResource

    -- * Creating a Request
    , managementWebPropertiesInsert'
    , ManagementWebPropertiesInsert'

    -- * Request Lenses
    , mwpiQuotaUser
    , mwpiPrettyPrint
    , mwpiUserIP
    , mwpiAccountId
    , mwpiKey
    , mwpiWebProperty
    , mwpiOAuthToken
    , mwpiFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertiesInsert@ which the
-- 'ManagementWebPropertiesInsert'' request conforms to.
type ManagementWebPropertiesInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] WebProperty :>
                             Post '[JSON] WebProperty

-- | Create a new property if the account has fewer than 20 properties. Web
-- properties are visible in the Google Analytics interface only if they
-- have at least one profile.
--
-- /See:/ 'managementWebPropertiesInsert'' smart constructor.
data ManagementWebPropertiesInsert' = ManagementWebPropertiesInsert'
    { _mwpiQuotaUser   :: !(Maybe Text)
    , _mwpiPrettyPrint :: !Bool
    , _mwpiUserIP      :: !(Maybe Text)
    , _mwpiAccountId   :: !Text
    , _mwpiKey         :: !(Maybe Key)
    , _mwpiWebProperty :: !WebProperty
    , _mwpiOAuthToken  :: !(Maybe OAuthToken)
    , _mwpiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpiQuotaUser'
--
-- * 'mwpiPrettyPrint'
--
-- * 'mwpiUserIP'
--
-- * 'mwpiAccountId'
--
-- * 'mwpiKey'
--
-- * 'mwpiWebProperty'
--
-- * 'mwpiOAuthToken'
--
-- * 'mwpiFields'
managementWebPropertiesInsert'
    :: Text -- ^ 'accountId'
    -> WebProperty -- ^ 'WebProperty'
    -> ManagementWebPropertiesInsert'
managementWebPropertiesInsert' pMwpiAccountId_ pMwpiWebProperty_ =
    ManagementWebPropertiesInsert'
    { _mwpiQuotaUser = Nothing
    , _mwpiPrettyPrint = False
    , _mwpiUserIP = Nothing
    , _mwpiAccountId = pMwpiAccountId_
    , _mwpiKey = Nothing
    , _mwpiWebProperty = pMwpiWebProperty_
    , _mwpiOAuthToken = Nothing
    , _mwpiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpiQuotaUser :: Lens' ManagementWebPropertiesInsert' (Maybe Text)
mwpiQuotaUser
  = lens _mwpiQuotaUser
      (\ s a -> s{_mwpiQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpiPrettyPrint :: Lens' ManagementWebPropertiesInsert' Bool
mwpiPrettyPrint
  = lens _mwpiPrettyPrint
      (\ s a -> s{_mwpiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpiUserIP :: Lens' ManagementWebPropertiesInsert' (Maybe Text)
mwpiUserIP
  = lens _mwpiUserIP (\ s a -> s{_mwpiUserIP = a})

-- | Account ID to create the web property for.
mwpiAccountId :: Lens' ManagementWebPropertiesInsert' Text
mwpiAccountId
  = lens _mwpiAccountId
      (\ s a -> s{_mwpiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpiKey :: Lens' ManagementWebPropertiesInsert' (Maybe Key)
mwpiKey = lens _mwpiKey (\ s a -> s{_mwpiKey = a})

-- | Multipart request metadata.
mwpiWebProperty :: Lens' ManagementWebPropertiesInsert' WebProperty
mwpiWebProperty
  = lens _mwpiWebProperty
      (\ s a -> s{_mwpiWebProperty = a})

-- | OAuth 2.0 token for the current user.
mwpiOAuthToken :: Lens' ManagementWebPropertiesInsert' (Maybe OAuthToken)
mwpiOAuthToken
  = lens _mwpiOAuthToken
      (\ s a -> s{_mwpiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpiFields :: Lens' ManagementWebPropertiesInsert' (Maybe Text)
mwpiFields
  = lens _mwpiFields (\ s a -> s{_mwpiFields = a})

instance GoogleAuth ManagementWebPropertiesInsert'
         where
        authKey = mwpiKey . _Just
        authToken = mwpiOAuthToken . _Just

instance GoogleRequest ManagementWebPropertiesInsert'
         where
        type Rs ManagementWebPropertiesInsert' = WebProperty
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertiesInsert'{..}
          = go _mwpiAccountId _mwpiQuotaUser
              (Just _mwpiPrettyPrint)
              _mwpiUserIP
              _mwpiFields
              _mwpiKey
              _mwpiOAuthToken
              (Just AltJSON)
              _mwpiWebProperty
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ManagementWebPropertiesInsertResource)
                      r
                      u

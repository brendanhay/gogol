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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an ExperienceLocale given its id. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @PlaymoviesPartnerAccountsExperienceLocalesGet@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.ExperienceLocales.Get
    (
    -- * REST Resource
      AccountsExperienceLocalesGetResource

    -- * Creating a Request
    , accountsExperienceLocalesGet'
    , AccountsExperienceLocalesGet'

    -- * Request Lenses
    , aelgXgafv
    , aelgQuotaUser
    , aelgPrettyPrint
    , aelgUploadProtocol
    , aelgPp
    , aelgAccessToken
    , aelgUploadType
    , aelgElId
    , aelgAccountId
    , aelgBearerToken
    , aelgKey
    , aelgOAuthToken
    , aelgFields
    , aelgCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @PlaymoviesPartnerAccountsExperienceLocalesGet@ which the
-- 'AccountsExperienceLocalesGet'' request conforms to.
type AccountsExperienceLocalesGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "experienceLocales" :>
             Capture "elId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ExperienceLocale

-- | Get an ExperienceLocale given its id. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsExperienceLocalesGet'' smart constructor.
data AccountsExperienceLocalesGet' = AccountsExperienceLocalesGet'
    { _aelgXgafv          :: !(Maybe Text)
    , _aelgQuotaUser      :: !(Maybe Text)
    , _aelgPrettyPrint    :: !Bool
    , _aelgUploadProtocol :: !(Maybe Text)
    , _aelgPp             :: !Bool
    , _aelgAccessToken    :: !(Maybe Text)
    , _aelgUploadType     :: !(Maybe Text)
    , _aelgElId           :: !Text
    , _aelgAccountId      :: !Text
    , _aelgBearerToken    :: !(Maybe Text)
    , _aelgKey            :: !(Maybe Key)
    , _aelgOAuthToken     :: !(Maybe OAuthToken)
    , _aelgFields         :: !(Maybe Text)
    , _aelgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsExperienceLocalesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aelgXgafv'
--
-- * 'aelgQuotaUser'
--
-- * 'aelgPrettyPrint'
--
-- * 'aelgUploadProtocol'
--
-- * 'aelgPp'
--
-- * 'aelgAccessToken'
--
-- * 'aelgUploadType'
--
-- * 'aelgElId'
--
-- * 'aelgAccountId'
--
-- * 'aelgBearerToken'
--
-- * 'aelgKey'
--
-- * 'aelgOAuthToken'
--
-- * 'aelgFields'
--
-- * 'aelgCallback'
accountsExperienceLocalesGet'
    :: Text -- ^ 'elId'
    -> Text -- ^ 'accountId'
    -> AccountsExperienceLocalesGet'
accountsExperienceLocalesGet' pAelgElId_ pAelgAccountId_ =
    AccountsExperienceLocalesGet'
    { _aelgXgafv = Nothing
    , _aelgQuotaUser = Nothing
    , _aelgPrettyPrint = True
    , _aelgUploadProtocol = Nothing
    , _aelgPp = True
    , _aelgAccessToken = Nothing
    , _aelgUploadType = Nothing
    , _aelgElId = pAelgElId_
    , _aelgAccountId = pAelgAccountId_
    , _aelgBearerToken = Nothing
    , _aelgKey = Nothing
    , _aelgOAuthToken = Nothing
    , _aelgFields = Nothing
    , _aelgCallback = Nothing
    }

-- | V1 error format.
aelgXgafv :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgXgafv
  = lens _aelgXgafv (\ s a -> s{_aelgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
aelgQuotaUser :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgQuotaUser
  = lens _aelgQuotaUser
      (\ s a -> s{_aelgQuotaUser = a})

-- | Returns response with indentations and line breaks.
aelgPrettyPrint :: Lens' AccountsExperienceLocalesGet' Bool
aelgPrettyPrint
  = lens _aelgPrettyPrint
      (\ s a -> s{_aelgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aelgUploadProtocol :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgUploadProtocol
  = lens _aelgUploadProtocol
      (\ s a -> s{_aelgUploadProtocol = a})

-- | Pretty-print response.
aelgPp :: Lens' AccountsExperienceLocalesGet' Bool
aelgPp = lens _aelgPp (\ s a -> s{_aelgPp = a})

-- | OAuth access token.
aelgAccessToken :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgAccessToken
  = lens _aelgAccessToken
      (\ s a -> s{_aelgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aelgUploadType :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgUploadType
  = lens _aelgUploadType
      (\ s a -> s{_aelgUploadType = a})

-- | REQUIRED. ExperienceLocale ID, as defined by Google.
aelgElId :: Lens' AccountsExperienceLocalesGet' Text
aelgElId = lens _aelgElId (\ s a -> s{_aelgElId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aelgAccountId :: Lens' AccountsExperienceLocalesGet' Text
aelgAccountId
  = lens _aelgAccountId
      (\ s a -> s{_aelgAccountId = a})

-- | OAuth bearer token.
aelgBearerToken :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgBearerToken
  = lens _aelgBearerToken
      (\ s a -> s{_aelgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aelgKey :: Lens' AccountsExperienceLocalesGet' (Maybe Key)
aelgKey = lens _aelgKey (\ s a -> s{_aelgKey = a})

-- | OAuth 2.0 token for the current user.
aelgOAuthToken :: Lens' AccountsExperienceLocalesGet' (Maybe OAuthToken)
aelgOAuthToken
  = lens _aelgOAuthToken
      (\ s a -> s{_aelgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aelgFields :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgFields
  = lens _aelgFields (\ s a -> s{_aelgFields = a})

-- | JSONP
aelgCallback :: Lens' AccountsExperienceLocalesGet' (Maybe Text)
aelgCallback
  = lens _aelgCallback (\ s a -> s{_aelgCallback = a})

instance GoogleAuth AccountsExperienceLocalesGet'
         where
        authKey = aelgKey . _Just
        authToken = aelgOAuthToken . _Just

instance GoogleRequest AccountsExperienceLocalesGet'
         where
        type Rs AccountsExperienceLocalesGet' =
             ExperienceLocale
        request
          = requestWithRoute defReq playMoviesPartnerURL
        requestWithRoute r u
          AccountsExperienceLocalesGet'{..}
          = go _aelgAccountId _aelgElId _aelgXgafv
              _aelgUploadProtocol
              (Just _aelgPp)
              _aelgAccessToken
              _aelgUploadType
              _aelgBearerToken
              _aelgCallback
              _aelgQuotaUser
              (Just _aelgPrettyPrint)
              _aelgFields
              _aelgKey
              _aelgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsExperienceLocalesGetResource)
                      r
                      u

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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a StoreInfo given its video id and country. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @PlaymoviesPartnerAccountsStoreInfosCountryGet@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
    (
    -- * REST Resource
      AccountsStoreInfosCountryGetResource

    -- * Creating a Request
    , accountsStoreInfosCountryGet'
    , AccountsStoreInfosCountryGet'

    -- * Request Lenses
    , asicgXgafv
    , asicgQuotaUser
    , asicgPrettyPrint
    , asicgUploadProtocol
    , asicgCountry
    , asicgPp
    , asicgAccessToken
    , asicgUploadType
    , asicgVideoId
    , asicgAccountId
    , asicgBearerToken
    , asicgKey
    , asicgOAuthToken
    , asicgFields
    , asicgCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @PlaymoviesPartnerAccountsStoreInfosCountryGet@ which the
-- 'AccountsStoreInfosCountryGet'' request conforms to.
type AccountsStoreInfosCountryGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "storeInfos" :>
             Capture "videoId" Text :>
               "country" :>
                 Capture "country" Text :>
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
                                       QueryParam "key" AuthKey :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] StoreInfo

-- | Get a StoreInfo given its video id and country. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsStoreInfosCountryGet'' smart constructor.
data AccountsStoreInfosCountryGet' = AccountsStoreInfosCountryGet'
    { _asicgXgafv          :: !(Maybe Text)
    , _asicgQuotaUser      :: !(Maybe Text)
    , _asicgPrettyPrint    :: !Bool
    , _asicgUploadProtocol :: !(Maybe Text)
    , _asicgCountry        :: !Text
    , _asicgPp             :: !Bool
    , _asicgAccessToken    :: !(Maybe Text)
    , _asicgUploadType     :: !(Maybe Text)
    , _asicgVideoId        :: !Text
    , _asicgAccountId      :: !Text
    , _asicgBearerToken    :: !(Maybe Text)
    , _asicgKey            :: !(Maybe AuthKey)
    , _asicgOAuthToken     :: !(Maybe OAuthToken)
    , _asicgFields         :: !(Maybe Text)
    , _asicgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsStoreInfosCountryGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asicgXgafv'
--
-- * 'asicgQuotaUser'
--
-- * 'asicgPrettyPrint'
--
-- * 'asicgUploadProtocol'
--
-- * 'asicgCountry'
--
-- * 'asicgPp'
--
-- * 'asicgAccessToken'
--
-- * 'asicgUploadType'
--
-- * 'asicgVideoId'
--
-- * 'asicgAccountId'
--
-- * 'asicgBearerToken'
--
-- * 'asicgKey'
--
-- * 'asicgOAuthToken'
--
-- * 'asicgFields'
--
-- * 'asicgCallback'
accountsStoreInfosCountryGet'
    :: Text -- ^ 'country'
    -> Text -- ^ 'videoId'
    -> Text -- ^ 'accountId'
    -> AccountsStoreInfosCountryGet'
accountsStoreInfosCountryGet' pAsicgCountry_ pAsicgVideoId_ pAsicgAccountId_ =
    AccountsStoreInfosCountryGet'
    { _asicgXgafv = Nothing
    , _asicgQuotaUser = Nothing
    , _asicgPrettyPrint = True
    , _asicgUploadProtocol = Nothing
    , _asicgCountry = pAsicgCountry_
    , _asicgPp = True
    , _asicgAccessToken = Nothing
    , _asicgUploadType = Nothing
    , _asicgVideoId = pAsicgVideoId_
    , _asicgAccountId = pAsicgAccountId_
    , _asicgBearerToken = Nothing
    , _asicgKey = Nothing
    , _asicgOAuthToken = Nothing
    , _asicgFields = Nothing
    , _asicgCallback = Nothing
    }

-- | V1 error format.
asicgXgafv :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgXgafv
  = lens _asicgXgafv (\ s a -> s{_asicgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
asicgQuotaUser :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgQuotaUser
  = lens _asicgQuotaUser
      (\ s a -> s{_asicgQuotaUser = a})

-- | Returns response with indentations and line breaks.
asicgPrettyPrint :: Lens' AccountsStoreInfosCountryGet' Bool
asicgPrettyPrint
  = lens _asicgPrettyPrint
      (\ s a -> s{_asicgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asicgUploadProtocol :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgUploadProtocol
  = lens _asicgUploadProtocol
      (\ s a -> s{_asicgUploadProtocol = a})

-- | REQUIRED. Edit country.
asicgCountry :: Lens' AccountsStoreInfosCountryGet' Text
asicgCountry
  = lens _asicgCountry (\ s a -> s{_asicgCountry = a})

-- | Pretty-print response.
asicgPp :: Lens' AccountsStoreInfosCountryGet' Bool
asicgPp = lens _asicgPp (\ s a -> s{_asicgPp = a})

-- | OAuth access token.
asicgAccessToken :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgAccessToken
  = lens _asicgAccessToken
      (\ s a -> s{_asicgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asicgUploadType :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgUploadType
  = lens _asicgUploadType
      (\ s a -> s{_asicgUploadType = a})

-- | REQUIRED. Video ID.
asicgVideoId :: Lens' AccountsStoreInfosCountryGet' Text
asicgVideoId
  = lens _asicgVideoId (\ s a -> s{_asicgVideoId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
asicgAccountId :: Lens' AccountsStoreInfosCountryGet' Text
asicgAccountId
  = lens _asicgAccountId
      (\ s a -> s{_asicgAccountId = a})

-- | OAuth bearer token.
asicgBearerToken :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgBearerToken
  = lens _asicgBearerToken
      (\ s a -> s{_asicgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
asicgKey :: Lens' AccountsStoreInfosCountryGet' (Maybe AuthKey)
asicgKey = lens _asicgKey (\ s a -> s{_asicgKey = a})

-- | OAuth 2.0 token for the current user.
asicgOAuthToken :: Lens' AccountsStoreInfosCountryGet' (Maybe OAuthToken)
asicgOAuthToken
  = lens _asicgOAuthToken
      (\ s a -> s{_asicgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
asicgFields :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgFields
  = lens _asicgFields (\ s a -> s{_asicgFields = a})

-- | JSONP
asicgCallback :: Lens' AccountsStoreInfosCountryGet' (Maybe Text)
asicgCallback
  = lens _asicgCallback
      (\ s a -> s{_asicgCallback = a})

instance GoogleAuth AccountsStoreInfosCountryGet'
         where
        authKey = asicgKey . _Just
        authToken = asicgOAuthToken . _Just

instance GoogleRequest AccountsStoreInfosCountryGet'
         where
        type Rs AccountsStoreInfosCountryGet' = StoreInfo
        request
          = requestWithRoute defReq playMoviesPartnerURL
        requestWithRoute r u
          AccountsStoreInfosCountryGet'{..}
          = go _asicgAccountId _asicgVideoId _asicgCountry
              _asicgXgafv
              _asicgUploadProtocol
              (Just _asicgPp)
              _asicgAccessToken
              _asicgUploadType
              _asicgBearerToken
              _asicgCallback
              _asicgQuotaUser
              (Just _asicgPrettyPrint)
              _asicgFields
              _asicgKey
              _asicgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsStoreInfosCountryGetResource)
                      r
                      u

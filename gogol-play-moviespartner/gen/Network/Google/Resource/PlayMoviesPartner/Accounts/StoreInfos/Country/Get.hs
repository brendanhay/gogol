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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a StoreInfo given its video id and country. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.storeInfos.country.get@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.StoreInfos.Country.Get
    (
    -- * REST Resource
      AccountsStoreInfosCountryGetResource

    -- * Creating a Request
    , accountsStoreInfosCountryGet
    , AccountsStoreInfosCountryGet

    -- * Request Lenses
    , asicgXgafv
    , asicgUploadProtocol
    , asicgCountry
    , asicgPp
    , asicgAccessToken
    , asicgUploadType
    , asicgVideoId
    , asicgAccountId
    , asicgBearerToken
    , asicgCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.storeInfos.country.get@ method which the
-- 'AccountsStoreInfosCountryGet' request conforms to.
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
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] StoreInfo

-- | Get a StoreInfo given its video id and country. See _Authentication and
-- Authorization rules_ and _Get methods rules_ for more information about
-- this method.
--
-- /See:/ 'accountsStoreInfosCountryGet' smart constructor.
data AccountsStoreInfosCountryGet = AccountsStoreInfosCountryGet
    { _asicgXgafv          :: !(Maybe Text)
    , _asicgUploadProtocol :: !(Maybe Text)
    , _asicgCountry        :: !Text
    , _asicgPp             :: !Bool
    , _asicgAccessToken    :: !(Maybe Text)
    , _asicgUploadType     :: !(Maybe Text)
    , _asicgVideoId        :: !Text
    , _asicgAccountId      :: !Text
    , _asicgBearerToken    :: !(Maybe Text)
    , _asicgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsStoreInfosCountryGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asicgXgafv'
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
-- * 'asicgCallback'
accountsStoreInfosCountryGet
    :: Text -- ^ 'asicgCountry'
    -> Text -- ^ 'asicgVideoId'
    -> Text -- ^ 'asicgAccountId'
    -> AccountsStoreInfosCountryGet
accountsStoreInfosCountryGet pAsicgCountry_ pAsicgVideoId_ pAsicgAccountId_ =
    AccountsStoreInfosCountryGet
    { _asicgXgafv = Nothing
    , _asicgUploadProtocol = Nothing
    , _asicgCountry = pAsicgCountry_
    , _asicgPp = True
    , _asicgAccessToken = Nothing
    , _asicgUploadType = Nothing
    , _asicgVideoId = pAsicgVideoId_
    , _asicgAccountId = pAsicgAccountId_
    , _asicgBearerToken = Nothing
    , _asicgCallback = Nothing
    }

-- | V1 error format.
asicgXgafv :: Lens' AccountsStoreInfosCountryGet (Maybe Text)
asicgXgafv
  = lens _asicgXgafv (\ s a -> s{_asicgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
asicgUploadProtocol :: Lens' AccountsStoreInfosCountryGet (Maybe Text)
asicgUploadProtocol
  = lens _asicgUploadProtocol
      (\ s a -> s{_asicgUploadProtocol = a})

-- | REQUIRED. Edit country.
asicgCountry :: Lens' AccountsStoreInfosCountryGet Text
asicgCountry
  = lens _asicgCountry (\ s a -> s{_asicgCountry = a})

-- | Pretty-print response.
asicgPp :: Lens' AccountsStoreInfosCountryGet Bool
asicgPp = lens _asicgPp (\ s a -> s{_asicgPp = a})

-- | OAuth access token.
asicgAccessToken :: Lens' AccountsStoreInfosCountryGet (Maybe Text)
asicgAccessToken
  = lens _asicgAccessToken
      (\ s a -> s{_asicgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
asicgUploadType :: Lens' AccountsStoreInfosCountryGet (Maybe Text)
asicgUploadType
  = lens _asicgUploadType
      (\ s a -> s{_asicgUploadType = a})

-- | REQUIRED. Video ID.
asicgVideoId :: Lens' AccountsStoreInfosCountryGet Text
asicgVideoId
  = lens _asicgVideoId (\ s a -> s{_asicgVideoId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
asicgAccountId :: Lens' AccountsStoreInfosCountryGet Text
asicgAccountId
  = lens _asicgAccountId
      (\ s a -> s{_asicgAccountId = a})

-- | OAuth bearer token.
asicgBearerToken :: Lens' AccountsStoreInfosCountryGet (Maybe Text)
asicgBearerToken
  = lens _asicgBearerToken
      (\ s a -> s{_asicgBearerToken = a})

-- | JSONP
asicgCallback :: Lens' AccountsStoreInfosCountryGet (Maybe Text)
asicgCallback
  = lens _asicgCallback
      (\ s a -> s{_asicgCallback = a})

instance GoogleRequest AccountsStoreInfosCountryGet
         where
        type Rs AccountsStoreInfosCountryGet = StoreInfo
        requestClient AccountsStoreInfosCountryGet{..}
          = go _asicgAccountId _asicgVideoId _asicgCountry
              _asicgXgafv
              _asicgUploadProtocol
              (Just _asicgPp)
              _asicgAccessToken
              _asicgUploadType
              _asicgBearerToken
              _asicgCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsStoreInfosCountryGetResource)
                      mempty

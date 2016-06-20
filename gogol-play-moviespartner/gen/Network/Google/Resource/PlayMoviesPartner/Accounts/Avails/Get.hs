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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an Avail given its avail group id and avail id.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.avails.get@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Avails.Get
    (
    -- * REST Resource
      AccountsAvailsGetResource

    -- * Creating a Request
    , accountsAvailsGet
    , AccountsAvailsGet

    -- * Request Lenses
    , aagXgafv
    , aagUploadProtocol
    , aagPp
    , aagAccessToken
    , aagUploadType
    , aagAvailId
    , aagAccountId
    , aagBearerToken
    , aagCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.avails.get@ method which the
-- 'AccountsAvailsGet' request conforms to.
type AccountsAvailsGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "avails" :>
             Capture "availId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Avail

-- | Get an Avail given its avail group id and avail id.
--
-- /See:/ 'accountsAvailsGet' smart constructor.
data AccountsAvailsGet = AccountsAvailsGet'
    { _aagXgafv          :: !(Maybe Text)
    , _aagUploadProtocol :: !(Maybe Text)
    , _aagPp             :: !Bool
    , _aagAccessToken    :: !(Maybe Text)
    , _aagUploadType     :: !(Maybe Text)
    , _aagAvailId        :: !Text
    , _aagAccountId      :: !Text
    , _aagBearerToken    :: !(Maybe Text)
    , _aagCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAvailsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aagXgafv'
--
-- * 'aagUploadProtocol'
--
-- * 'aagPp'
--
-- * 'aagAccessToken'
--
-- * 'aagUploadType'
--
-- * 'aagAvailId'
--
-- * 'aagAccountId'
--
-- * 'aagBearerToken'
--
-- * 'aagCallback'
accountsAvailsGet
    :: Text -- ^ 'aagAvailId'
    -> Text -- ^ 'aagAccountId'
    -> AccountsAvailsGet
accountsAvailsGet pAagAvailId_ pAagAccountId_ =
    AccountsAvailsGet'
    { _aagXgafv = Nothing
    , _aagUploadProtocol = Nothing
    , _aagPp = True
    , _aagAccessToken = Nothing
    , _aagUploadType = Nothing
    , _aagAvailId = pAagAvailId_
    , _aagAccountId = pAagAccountId_
    , _aagBearerToken = Nothing
    , _aagCallback = Nothing
    }

-- | V1 error format.
aagXgafv :: Lens' AccountsAvailsGet (Maybe Text)
aagXgafv = lens _aagXgafv (\ s a -> s{_aagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aagUploadProtocol :: Lens' AccountsAvailsGet (Maybe Text)
aagUploadProtocol
  = lens _aagUploadProtocol
      (\ s a -> s{_aagUploadProtocol = a})

-- | Pretty-print response.
aagPp :: Lens' AccountsAvailsGet Bool
aagPp = lens _aagPp (\ s a -> s{_aagPp = a})

-- | OAuth access token.
aagAccessToken :: Lens' AccountsAvailsGet (Maybe Text)
aagAccessToken
  = lens _aagAccessToken
      (\ s a -> s{_aagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aagUploadType :: Lens' AccountsAvailsGet (Maybe Text)
aagUploadType
  = lens _aagUploadType
      (\ s a -> s{_aagUploadType = a})

-- | REQUIRED. Avail ID.
aagAvailId :: Lens' AccountsAvailsGet Text
aagAvailId
  = lens _aagAvailId (\ s a -> s{_aagAvailId = a})

-- | REQUIRED. See _General rules_ for more information about this field.
aagAccountId :: Lens' AccountsAvailsGet Text
aagAccountId
  = lens _aagAccountId (\ s a -> s{_aagAccountId = a})

-- | OAuth bearer token.
aagBearerToken :: Lens' AccountsAvailsGet (Maybe Text)
aagBearerToken
  = lens _aagBearerToken
      (\ s a -> s{_aagBearerToken = a})

-- | JSONP
aagCallback :: Lens' AccountsAvailsGet (Maybe Text)
aagCallback
  = lens _aagCallback (\ s a -> s{_aagCallback = a})

instance GoogleRequest AccountsAvailsGet where
        type Rs AccountsAvailsGet = Avail
        type Scopes AccountsAvailsGet =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsAvailsGet'{..}
          = go _aagAccountId _aagAvailId _aagXgafv
              _aagUploadProtocol
              (Just _aagPp)
              _aagAccessToken
              _aagUploadType
              _aagBearerToken
              _aagCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAvailsGetResource)
                      mempty

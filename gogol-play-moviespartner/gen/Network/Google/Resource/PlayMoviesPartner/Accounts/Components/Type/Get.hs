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
-- Module      : Network.Google.Resource.PlayMoviesPartner.Accounts.Components.Type.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a Component given its id.
--
-- /See:/ <https://developers.google.com/playmoviespartner/ Google Play Movies Partner API Reference> for @playmoviespartner.accounts.components.type.get@.
module Network.Google.Resource.PlayMoviesPartner.Accounts.Components.Type.Get
    (
    -- * REST Resource
      AccountsComponentsTypeGetResource

    -- * Creating a Request
    , accountsComponentsTypeGet
    , AccountsComponentsTypeGet

    -- * Request Lenses
    , actgXgafv
    , actgUploadProtocol
    , actgPp
    , actgAccessToken
    , actgUploadType
    , actgAccountId
    , actgBearerToken
    , actgComponentId
    , actgType
    , actgCallback
    ) where

import           Network.Google.PlayMoviesPartner.Types
import           Network.Google.Prelude

-- | A resource alias for @playmoviespartner.accounts.components.type.get@ method which the
-- 'AccountsComponentsTypeGet' request conforms to.
type AccountsComponentsTypeGetResource =
     "v1" :>
       "accounts" :>
         Capture "accountId" Text :>
           "components" :>
             Capture "componentId" Text :>
               "type" :>
                 Capture "type" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] Component

-- | Get a Component given its id.
--
-- /See:/ 'accountsComponentsTypeGet' smart constructor.
data AccountsComponentsTypeGet = AccountsComponentsTypeGet'
    { _actgXgafv          :: !(Maybe Text)
    , _actgUploadProtocol :: !(Maybe Text)
    , _actgPp             :: !Bool
    , _actgAccessToken    :: !(Maybe Text)
    , _actgUploadType     :: !(Maybe Text)
    , _actgAccountId      :: !Text
    , _actgBearerToken    :: !(Maybe Text)
    , _actgComponentId    :: !Text
    , _actgType           :: !Text
    , _actgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsComponentsTypeGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgXgafv'
--
-- * 'actgUploadProtocol'
--
-- * 'actgPp'
--
-- * 'actgAccessToken'
--
-- * 'actgUploadType'
--
-- * 'actgAccountId'
--
-- * 'actgBearerToken'
--
-- * 'actgComponentId'
--
-- * 'actgType'
--
-- * 'actgCallback'
accountsComponentsTypeGet
    :: Text -- ^ 'actgAccountId'
    -> Text -- ^ 'actgComponentId'
    -> Text -- ^ 'actgType'
    -> AccountsComponentsTypeGet
accountsComponentsTypeGet pActgAccountId_ pActgComponentId_ pActgType_ =
    AccountsComponentsTypeGet'
    { _actgXgafv = Nothing
    , _actgUploadProtocol = Nothing
    , _actgPp = True
    , _actgAccessToken = Nothing
    , _actgUploadType = Nothing
    , _actgAccountId = pActgAccountId_
    , _actgBearerToken = Nothing
    , _actgComponentId = pActgComponentId_
    , _actgType = pActgType_
    , _actgCallback = Nothing
    }

-- | V1 error format.
actgXgafv :: Lens' AccountsComponentsTypeGet (Maybe Text)
actgXgafv
  = lens _actgXgafv (\ s a -> s{_actgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
actgUploadProtocol :: Lens' AccountsComponentsTypeGet (Maybe Text)
actgUploadProtocol
  = lens _actgUploadProtocol
      (\ s a -> s{_actgUploadProtocol = a})

-- | Pretty-print response.
actgPp :: Lens' AccountsComponentsTypeGet Bool
actgPp = lens _actgPp (\ s a -> s{_actgPp = a})

-- | OAuth access token.
actgAccessToken :: Lens' AccountsComponentsTypeGet (Maybe Text)
actgAccessToken
  = lens _actgAccessToken
      (\ s a -> s{_actgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
actgUploadType :: Lens' AccountsComponentsTypeGet (Maybe Text)
actgUploadType
  = lens _actgUploadType
      (\ s a -> s{_actgUploadType = a})

-- | REQUIRED. See _General rules_ for more information about this field.
actgAccountId :: Lens' AccountsComponentsTypeGet Text
actgAccountId
  = lens _actgAccountId
      (\ s a -> s{_actgAccountId = a})

-- | OAuth bearer token.
actgBearerToken :: Lens' AccountsComponentsTypeGet (Maybe Text)
actgBearerToken
  = lens _actgBearerToken
      (\ s a -> s{_actgBearerToken = a})

-- | REQUIRED. Component ID.
actgComponentId :: Lens' AccountsComponentsTypeGet Text
actgComponentId
  = lens _actgComponentId
      (\ s a -> s{_actgComponentId = a})

-- | REQUIRED. Component Type.
actgType :: Lens' AccountsComponentsTypeGet Text
actgType = lens _actgType (\ s a -> s{_actgType = a})

-- | JSONP
actgCallback :: Lens' AccountsComponentsTypeGet (Maybe Text)
actgCallback
  = lens _actgCallback (\ s a -> s{_actgCallback = a})

instance GoogleRequest AccountsComponentsTypeGet
         where
        type Rs AccountsComponentsTypeGet = Component
        type Scopes AccountsComponentsTypeGet =
             '["https://www.googleapis.com/auth/playmovies_partner.readonly"]
        requestClient AccountsComponentsTypeGet'{..}
          = go _actgAccountId _actgComponentId _actgType
              _actgXgafv
              _actgUploadProtocol
              (Just _actgPp)
              _actgAccessToken
              _actgUploadType
              _actgBearerToken
              _actgCallback
              (Just AltJSON)
              playMoviesPartnerService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsComponentsTypeGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accounts.get@.
module Network.Google.Resource.DFAReporting.Accounts.Get
    (
    -- * REST Resource
      AccountsGetResource

    -- * Creating a Request
    , accountsGet
    , AccountsGet

    -- * Request Lenses
    , aggXgafv
    , aggUploadProtocol
    , aggAccessToken
    , aggUploadType
    , aggProFileId
    , aggId
    , aggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.get@ method which the
-- 'AccountsGet' request conforms to.
type AccountsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accounts" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Account

-- | Gets one account by ID.
--
-- /See:/ 'accountsGet' smart constructor.
data AccountsGet =
  AccountsGet'
    { _aggXgafv :: !(Maybe Xgafv)
    , _aggUploadProtocol :: !(Maybe Text)
    , _aggAccessToken :: !(Maybe Text)
    , _aggUploadType :: !(Maybe Text)
    , _aggProFileId :: !(Textual Int64)
    , _aggId :: !(Textual Int64)
    , _aggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggXgafv'
--
-- * 'aggUploadProtocol'
--
-- * 'aggAccessToken'
--
-- * 'aggUploadType'
--
-- * 'aggProFileId'
--
-- * 'aggId'
--
-- * 'aggCallback'
accountsGet
    :: Int64 -- ^ 'aggProFileId'
    -> Int64 -- ^ 'aggId'
    -> AccountsGet
accountsGet pAggProFileId_ pAggId_ =
  AccountsGet'
    { _aggXgafv = Nothing
    , _aggUploadProtocol = Nothing
    , _aggAccessToken = Nothing
    , _aggUploadType = Nothing
    , _aggProFileId = _Coerce # pAggProFileId_
    , _aggId = _Coerce # pAggId_
    , _aggCallback = Nothing
    }


-- | V1 error format.
aggXgafv :: Lens' AccountsGet (Maybe Xgafv)
aggXgafv = lens _aggXgafv (\ s a -> s{_aggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aggUploadProtocol :: Lens' AccountsGet (Maybe Text)
aggUploadProtocol
  = lens _aggUploadProtocol
      (\ s a -> s{_aggUploadProtocol = a})

-- | OAuth access token.
aggAccessToken :: Lens' AccountsGet (Maybe Text)
aggAccessToken
  = lens _aggAccessToken
      (\ s a -> s{_aggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aggUploadType :: Lens' AccountsGet (Maybe Text)
aggUploadType
  = lens _aggUploadType
      (\ s a -> s{_aggUploadType = a})

-- | User profile ID associated with this request.
aggProFileId :: Lens' AccountsGet Int64
aggProFileId
  = lens _aggProFileId (\ s a -> s{_aggProFileId = a})
      . _Coerce

-- | Account ID.
aggId :: Lens' AccountsGet Int64
aggId
  = lens _aggId (\ s a -> s{_aggId = a}) . _Coerce

-- | JSONP
aggCallback :: Lens' AccountsGet (Maybe Text)
aggCallback
  = lens _aggCallback (\ s a -> s{_aggCallback = a})

instance GoogleRequest AccountsGet where
        type Rs AccountsGet = Account
        type Scopes AccountsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountsGet'{..}
          = go _aggProFileId _aggId _aggXgafv
              _aggUploadProtocol
              _aggAccessToken
              _aggUploadType
              _aggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsGetResource)
                      mempty

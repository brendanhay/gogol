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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one subaccount by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.subaccounts.get@.
module Network.Google.Resource.DFAReporting.SubAccounts.Get
    (
    -- * REST Resource
      SubAccountsGetResource

    -- * Creating a Request
    , subAccountsGet
    , SubAccountsGet

    -- * Request Lenses
    , sagXgafv
    , sagUploadProtocol
    , sagAccessToken
    , sagUploadType
    , sagProFileId
    , sagId
    , sagCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.get@ method which the
-- 'SubAccountsGet' request conforms to.
type SubAccountsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "subaccounts" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] SubAccount

-- | Gets one subaccount by ID.
--
-- /See:/ 'subAccountsGet' smart constructor.
data SubAccountsGet =
  SubAccountsGet'
    { _sagXgafv :: !(Maybe Xgafv)
    , _sagUploadProtocol :: !(Maybe Text)
    , _sagAccessToken :: !(Maybe Text)
    , _sagUploadType :: !(Maybe Text)
    , _sagProFileId :: !(Textual Int64)
    , _sagId :: !(Textual Int64)
    , _sagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubAccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sagXgafv'
--
-- * 'sagUploadProtocol'
--
-- * 'sagAccessToken'
--
-- * 'sagUploadType'
--
-- * 'sagProFileId'
--
-- * 'sagId'
--
-- * 'sagCallback'
subAccountsGet
    :: Int64 -- ^ 'sagProFileId'
    -> Int64 -- ^ 'sagId'
    -> SubAccountsGet
subAccountsGet pSagProFileId_ pSagId_ =
  SubAccountsGet'
    { _sagXgafv = Nothing
    , _sagUploadProtocol = Nothing
    , _sagAccessToken = Nothing
    , _sagUploadType = Nothing
    , _sagProFileId = _Coerce # pSagProFileId_
    , _sagId = _Coerce # pSagId_
    , _sagCallback = Nothing
    }


-- | V1 error format.
sagXgafv :: Lens' SubAccountsGet (Maybe Xgafv)
sagXgafv = lens _sagXgafv (\ s a -> s{_sagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sagUploadProtocol :: Lens' SubAccountsGet (Maybe Text)
sagUploadProtocol
  = lens _sagUploadProtocol
      (\ s a -> s{_sagUploadProtocol = a})

-- | OAuth access token.
sagAccessToken :: Lens' SubAccountsGet (Maybe Text)
sagAccessToken
  = lens _sagAccessToken
      (\ s a -> s{_sagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sagUploadType :: Lens' SubAccountsGet (Maybe Text)
sagUploadType
  = lens _sagUploadType
      (\ s a -> s{_sagUploadType = a})

-- | User profile ID associated with this request.
sagProFileId :: Lens' SubAccountsGet Int64
sagProFileId
  = lens _sagProFileId (\ s a -> s{_sagProFileId = a})
      . _Coerce

-- | Subaccount ID.
sagId :: Lens' SubAccountsGet Int64
sagId
  = lens _sagId (\ s a -> s{_sagId = a}) . _Coerce

-- | JSONP
sagCallback :: Lens' SubAccountsGet (Maybe Text)
sagCallback
  = lens _sagCallback (\ s a -> s{_sagCallback = a})

instance GoogleRequest SubAccountsGet where
        type Rs SubAccountsGet = SubAccount
        type Scopes SubAccountsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SubAccountsGet'{..}
          = go _sagProFileId _sagId _sagXgafv
              _sagUploadProtocol
              _sagAccessToken
              _sagUploadType
              _sagCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SubAccountsGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.subaccounts.insert@.
module Network.Google.Resource.DFAReporting.SubAccounts.Insert
    (
    -- * REST Resource
      SubAccountsInsertResource

    -- * Creating a Request
    , subAccountsInsert
    , SubAccountsInsert

    -- * Request Lenses
    , saiXgafv
    , saiUploadProtocol
    , saiAccessToken
    , saiUploadType
    , saiProFileId
    , saiPayload
    , saiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.insert@ method which the
-- 'SubAccountsInsert' request conforms to.
type SubAccountsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "subaccounts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SubAccount :> Post '[JSON] SubAccount

-- | Inserts a new subaccount.
--
-- /See:/ 'subAccountsInsert' smart constructor.
data SubAccountsInsert =
  SubAccountsInsert'
    { _saiXgafv :: !(Maybe Xgafv)
    , _saiUploadProtocol :: !(Maybe Text)
    , _saiAccessToken :: !(Maybe Text)
    , _saiUploadType :: !(Maybe Text)
    , _saiProFileId :: !(Textual Int64)
    , _saiPayload :: !SubAccount
    , _saiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubAccountsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saiXgafv'
--
-- * 'saiUploadProtocol'
--
-- * 'saiAccessToken'
--
-- * 'saiUploadType'
--
-- * 'saiProFileId'
--
-- * 'saiPayload'
--
-- * 'saiCallback'
subAccountsInsert
    :: Int64 -- ^ 'saiProFileId'
    -> SubAccount -- ^ 'saiPayload'
    -> SubAccountsInsert
subAccountsInsert pSaiProFileId_ pSaiPayload_ =
  SubAccountsInsert'
    { _saiXgafv = Nothing
    , _saiUploadProtocol = Nothing
    , _saiAccessToken = Nothing
    , _saiUploadType = Nothing
    , _saiProFileId = _Coerce # pSaiProFileId_
    , _saiPayload = pSaiPayload_
    , _saiCallback = Nothing
    }


-- | V1 error format.
saiXgafv :: Lens' SubAccountsInsert (Maybe Xgafv)
saiXgafv = lens _saiXgafv (\ s a -> s{_saiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
saiUploadProtocol :: Lens' SubAccountsInsert (Maybe Text)
saiUploadProtocol
  = lens _saiUploadProtocol
      (\ s a -> s{_saiUploadProtocol = a})

-- | OAuth access token.
saiAccessToken :: Lens' SubAccountsInsert (Maybe Text)
saiAccessToken
  = lens _saiAccessToken
      (\ s a -> s{_saiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
saiUploadType :: Lens' SubAccountsInsert (Maybe Text)
saiUploadType
  = lens _saiUploadType
      (\ s a -> s{_saiUploadType = a})

-- | User profile ID associated with this request.
saiProFileId :: Lens' SubAccountsInsert Int64
saiProFileId
  = lens _saiProFileId (\ s a -> s{_saiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
saiPayload :: Lens' SubAccountsInsert SubAccount
saiPayload
  = lens _saiPayload (\ s a -> s{_saiPayload = a})

-- | JSONP
saiCallback :: Lens' SubAccountsInsert (Maybe Text)
saiCallback
  = lens _saiCallback (\ s a -> s{_saiCallback = a})

instance GoogleRequest SubAccountsInsert where
        type Rs SubAccountsInsert = SubAccount
        type Scopes SubAccountsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SubAccountsInsert'{..}
          = go _saiProFileId _saiXgafv _saiUploadProtocol
              _saiAccessToken
              _saiUploadType
              _saiCallback
              (Just AltJSON)
              _saiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy SubAccountsInsertResource)
                      mempty

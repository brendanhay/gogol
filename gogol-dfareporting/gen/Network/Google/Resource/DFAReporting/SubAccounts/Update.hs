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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.subaccounts.update@.
module Network.Google.Resource.DFAReporting.SubAccounts.Update
    (
    -- * REST Resource
      SubAccountsUpdateResource

    -- * Creating a Request
    , subAccountsUpdate
    , SubAccountsUpdate

    -- * Request Lenses
    , sauXgafv
    , sauUploadProtocol
    , sauAccessToken
    , sauUploadType
    , sauProFileId
    , sauPayload
    , sauCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.update@ method which the
-- 'SubAccountsUpdate' request conforms to.
type SubAccountsUpdateResource =
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
                           ReqBody '[JSON] SubAccount :> Put '[JSON] SubAccount

-- | Updates an existing subaccount.
--
-- /See:/ 'subAccountsUpdate' smart constructor.
data SubAccountsUpdate =
  SubAccountsUpdate'
    { _sauXgafv :: !(Maybe Xgafv)
    , _sauUploadProtocol :: !(Maybe Text)
    , _sauAccessToken :: !(Maybe Text)
    , _sauUploadType :: !(Maybe Text)
    , _sauProFileId :: !(Textual Int64)
    , _sauPayload :: !SubAccount
    , _sauCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubAccountsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sauXgafv'
--
-- * 'sauUploadProtocol'
--
-- * 'sauAccessToken'
--
-- * 'sauUploadType'
--
-- * 'sauProFileId'
--
-- * 'sauPayload'
--
-- * 'sauCallback'
subAccountsUpdate
    :: Int64 -- ^ 'sauProFileId'
    -> SubAccount -- ^ 'sauPayload'
    -> SubAccountsUpdate
subAccountsUpdate pSauProFileId_ pSauPayload_ =
  SubAccountsUpdate'
    { _sauXgafv = Nothing
    , _sauUploadProtocol = Nothing
    , _sauAccessToken = Nothing
    , _sauUploadType = Nothing
    , _sauProFileId = _Coerce # pSauProFileId_
    , _sauPayload = pSauPayload_
    , _sauCallback = Nothing
    }


-- | V1 error format.
sauXgafv :: Lens' SubAccountsUpdate (Maybe Xgafv)
sauXgafv = lens _sauXgafv (\ s a -> s{_sauXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sauUploadProtocol :: Lens' SubAccountsUpdate (Maybe Text)
sauUploadProtocol
  = lens _sauUploadProtocol
      (\ s a -> s{_sauUploadProtocol = a})

-- | OAuth access token.
sauAccessToken :: Lens' SubAccountsUpdate (Maybe Text)
sauAccessToken
  = lens _sauAccessToken
      (\ s a -> s{_sauAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sauUploadType :: Lens' SubAccountsUpdate (Maybe Text)
sauUploadType
  = lens _sauUploadType
      (\ s a -> s{_sauUploadType = a})

-- | User profile ID associated with this request.
sauProFileId :: Lens' SubAccountsUpdate Int64
sauProFileId
  = lens _sauProFileId (\ s a -> s{_sauProFileId = a})
      . _Coerce

-- | Multipart request metadata.
sauPayload :: Lens' SubAccountsUpdate SubAccount
sauPayload
  = lens _sauPayload (\ s a -> s{_sauPayload = a})

-- | JSONP
sauCallback :: Lens' SubAccountsUpdate (Maybe Text)
sauCallback
  = lens _sauCallback (\ s a -> s{_sauCallback = a})

instance GoogleRequest SubAccountsUpdate where
        type Rs SubAccountsUpdate = SubAccount
        type Scopes SubAccountsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SubAccountsUpdate'{..}
          = go _sauProFileId _sauXgafv _sauUploadProtocol
              _sauAccessToken
              _sauUploadType
              _sauCallback
              (Just AltJSON)
              _sauPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy SubAccountsUpdateResource)
                      mempty

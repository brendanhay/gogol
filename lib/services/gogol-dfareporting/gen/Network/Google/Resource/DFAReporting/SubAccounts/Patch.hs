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
-- Module      : Network.Google.Resource.DFAReporting.SubAccounts.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.subaccounts.patch@.
module Network.Google.Resource.DFAReporting.SubAccounts.Patch
    (
    -- * REST Resource
      SubAccountsPatchResource

    -- * Creating a Request
    , subAccountsPatch
    , SubAccountsPatch

    -- * Request Lenses
    , sapXgafv
    , sapUploadProtocol
    , sapAccessToken
    , sapUploadType
    , sapProFileId
    , sapPayload
    , sapId
    , sapCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.subaccounts.patch@ method which the
-- 'SubAccountsPatch' request conforms to.
type SubAccountsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "subaccounts" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] SubAccount :>
                               Patch '[JSON] SubAccount

-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ 'subAccountsPatch' smart constructor.
data SubAccountsPatch =
  SubAccountsPatch'
    { _sapXgafv :: !(Maybe Xgafv)
    , _sapUploadProtocol :: !(Maybe Text)
    , _sapAccessToken :: !(Maybe Text)
    , _sapUploadType :: !(Maybe Text)
    , _sapProFileId :: !(Textual Int64)
    , _sapPayload :: !SubAccount
    , _sapId :: !(Textual Int64)
    , _sapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubAccountsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sapXgafv'
--
-- * 'sapUploadProtocol'
--
-- * 'sapAccessToken'
--
-- * 'sapUploadType'
--
-- * 'sapProFileId'
--
-- * 'sapPayload'
--
-- * 'sapId'
--
-- * 'sapCallback'
subAccountsPatch
    :: Int64 -- ^ 'sapProFileId'
    -> SubAccount -- ^ 'sapPayload'
    -> Int64 -- ^ 'sapId'
    -> SubAccountsPatch
subAccountsPatch pSapProFileId_ pSapPayload_ pSapId_ =
  SubAccountsPatch'
    { _sapXgafv = Nothing
    , _sapUploadProtocol = Nothing
    , _sapAccessToken = Nothing
    , _sapUploadType = Nothing
    , _sapProFileId = _Coerce # pSapProFileId_
    , _sapPayload = pSapPayload_
    , _sapId = _Coerce # pSapId_
    , _sapCallback = Nothing
    }


-- | V1 error format.
sapXgafv :: Lens' SubAccountsPatch (Maybe Xgafv)
sapXgafv = lens _sapXgafv (\ s a -> s{_sapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sapUploadProtocol :: Lens' SubAccountsPatch (Maybe Text)
sapUploadProtocol
  = lens _sapUploadProtocol
      (\ s a -> s{_sapUploadProtocol = a})

-- | OAuth access token.
sapAccessToken :: Lens' SubAccountsPatch (Maybe Text)
sapAccessToken
  = lens _sapAccessToken
      (\ s a -> s{_sapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sapUploadType :: Lens' SubAccountsPatch (Maybe Text)
sapUploadType
  = lens _sapUploadType
      (\ s a -> s{_sapUploadType = a})

-- | User profile ID associated with this request.
sapProFileId :: Lens' SubAccountsPatch Int64
sapProFileId
  = lens _sapProFileId (\ s a -> s{_sapProFileId = a})
      . _Coerce

-- | Multipart request metadata.
sapPayload :: Lens' SubAccountsPatch SubAccount
sapPayload
  = lens _sapPayload (\ s a -> s{_sapPayload = a})

-- | Subaccount ID.
sapId :: Lens' SubAccountsPatch Int64
sapId
  = lens _sapId (\ s a -> s{_sapId = a}) . _Coerce

-- | JSONP
sapCallback :: Lens' SubAccountsPatch (Maybe Text)
sapCallback
  = lens _sapCallback (\ s a -> s{_sapCallback = a})

instance GoogleRequest SubAccountsPatch where
        type Rs SubAccountsPatch = SubAccount
        type Scopes SubAccountsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SubAccountsPatch'{..}
          = go _sapProFileId (Just _sapId) _sapXgafv
              _sapUploadProtocol
              _sapAccessToken
              _sapUploadType
              _sapCallback
              (Just AltJSON)
              _sapPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy SubAccountsPatchResource)
                      mempty

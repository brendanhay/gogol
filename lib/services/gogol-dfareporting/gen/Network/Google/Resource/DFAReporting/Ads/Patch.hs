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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing ad. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.ads.patch@.
module Network.Google.Resource.DFAReporting.Ads.Patch
    (
    -- * REST Resource
      AdsPatchResource

    -- * Creating a Request
    , adsPatch
    , AdsPatch

    -- * Request Lenses
    , adsdXgafv
    , adsdUploadProtocol
    , adsdAccessToken
    , adsdUploadType
    , adsdProFileId
    , adsdPayload
    , adsdId
    , adsdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.patch@ method which the
-- 'AdsPatch' request conforms to.
type AdsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Ad :> Patch '[JSON] Ad

-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ 'adsPatch' smart constructor.
data AdsPatch =
  AdsPatch'
    { _adsdXgafv :: !(Maybe Xgafv)
    , _adsdUploadProtocol :: !(Maybe Text)
    , _adsdAccessToken :: !(Maybe Text)
    , _adsdUploadType :: !(Maybe Text)
    , _adsdProFileId :: !(Textual Int64)
    , _adsdPayload :: !Ad
    , _adsdId :: !(Textual Int64)
    , _adsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsdXgafv'
--
-- * 'adsdUploadProtocol'
--
-- * 'adsdAccessToken'
--
-- * 'adsdUploadType'
--
-- * 'adsdProFileId'
--
-- * 'adsdPayload'
--
-- * 'adsdId'
--
-- * 'adsdCallback'
adsPatch
    :: Int64 -- ^ 'adsdProFileId'
    -> Ad -- ^ 'adsdPayload'
    -> Int64 -- ^ 'adsdId'
    -> AdsPatch
adsPatch pAdsdProFileId_ pAdsdPayload_ pAdsdId_ =
  AdsPatch'
    { _adsdXgafv = Nothing
    , _adsdUploadProtocol = Nothing
    , _adsdAccessToken = Nothing
    , _adsdUploadType = Nothing
    , _adsdProFileId = _Coerce # pAdsdProFileId_
    , _adsdPayload = pAdsdPayload_
    , _adsdId = _Coerce # pAdsdId_
    , _adsdCallback = Nothing
    }


-- | V1 error format.
adsdXgafv :: Lens' AdsPatch (Maybe Xgafv)
adsdXgafv
  = lens _adsdXgafv (\ s a -> s{_adsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adsdUploadProtocol :: Lens' AdsPatch (Maybe Text)
adsdUploadProtocol
  = lens _adsdUploadProtocol
      (\ s a -> s{_adsdUploadProtocol = a})

-- | OAuth access token.
adsdAccessToken :: Lens' AdsPatch (Maybe Text)
adsdAccessToken
  = lens _adsdAccessToken
      (\ s a -> s{_adsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adsdUploadType :: Lens' AdsPatch (Maybe Text)
adsdUploadType
  = lens _adsdUploadType
      (\ s a -> s{_adsdUploadType = a})

-- | User profile ID associated with this request.
adsdProFileId :: Lens' AdsPatch Int64
adsdProFileId
  = lens _adsdProFileId
      (\ s a -> s{_adsdProFileId = a})
      . _Coerce

-- | Multipart request metadata.
adsdPayload :: Lens' AdsPatch Ad
adsdPayload
  = lens _adsdPayload (\ s a -> s{_adsdPayload = a})

-- | Ad ID.
adsdId :: Lens' AdsPatch Int64
adsdId
  = lens _adsdId (\ s a -> s{_adsdId = a}) . _Coerce

-- | JSONP
adsdCallback :: Lens' AdsPatch (Maybe Text)
adsdCallback
  = lens _adsdCallback (\ s a -> s{_adsdCallback = a})

instance GoogleRequest AdsPatch where
        type Rs AdsPatch = Ad
        type Scopes AdsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdsPatch'{..}
          = go _adsdProFileId (Just _adsdId) _adsdXgafv
              _adsdUploadProtocol
              _adsdAccessToken
              _adsdUploadType
              _adsdCallback
              (Just AltJSON)
              _adsdPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsPatchResource)
                      mempty

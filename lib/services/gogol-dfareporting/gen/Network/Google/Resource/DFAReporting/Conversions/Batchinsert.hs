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
-- Module      : Network.Google.Resource.DFAReporting.Conversions.Batchinsert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts conversions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.conversions.batchinsert@.
module Network.Google.Resource.DFAReporting.Conversions.Batchinsert
    (
    -- * REST Resource
      ConversionsBatchinsertResource

    -- * Creating a Request
    , conversionsBatchinsert
    , ConversionsBatchinsert

    -- * Request Lenses
    , cbXgafv
    , cbUploadProtocol
    , cbAccessToken
    , cbUploadType
    , cbProFileId
    , cbPayload
    , cbCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.conversions.batchinsert@ method which the
-- 'ConversionsBatchinsert' request conforms to.
type ConversionsBatchinsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "conversions" :>
               "batchinsert" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ConversionsBatchInsertRequest :>
                               Post '[JSON] ConversionsBatchInsertResponse

-- | Inserts conversions.
--
-- /See:/ 'conversionsBatchinsert' smart constructor.
data ConversionsBatchinsert =
  ConversionsBatchinsert'
    { _cbXgafv :: !(Maybe Xgafv)
    , _cbUploadProtocol :: !(Maybe Text)
    , _cbAccessToken :: !(Maybe Text)
    , _cbUploadType :: !(Maybe Text)
    , _cbProFileId :: !(Textual Int64)
    , _cbPayload :: !ConversionsBatchInsertRequest
    , _cbCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionsBatchinsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbXgafv'
--
-- * 'cbUploadProtocol'
--
-- * 'cbAccessToken'
--
-- * 'cbUploadType'
--
-- * 'cbProFileId'
--
-- * 'cbPayload'
--
-- * 'cbCallback'
conversionsBatchinsert
    :: Int64 -- ^ 'cbProFileId'
    -> ConversionsBatchInsertRequest -- ^ 'cbPayload'
    -> ConversionsBatchinsert
conversionsBatchinsert pCbProFileId_ pCbPayload_ =
  ConversionsBatchinsert'
    { _cbXgafv = Nothing
    , _cbUploadProtocol = Nothing
    , _cbAccessToken = Nothing
    , _cbUploadType = Nothing
    , _cbProFileId = _Coerce # pCbProFileId_
    , _cbPayload = pCbPayload_
    , _cbCallback = Nothing
    }


-- | V1 error format.
cbXgafv :: Lens' ConversionsBatchinsert (Maybe Xgafv)
cbXgafv = lens _cbXgafv (\ s a -> s{_cbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cbUploadProtocol :: Lens' ConversionsBatchinsert (Maybe Text)
cbUploadProtocol
  = lens _cbUploadProtocol
      (\ s a -> s{_cbUploadProtocol = a})

-- | OAuth access token.
cbAccessToken :: Lens' ConversionsBatchinsert (Maybe Text)
cbAccessToken
  = lens _cbAccessToken
      (\ s a -> s{_cbAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cbUploadType :: Lens' ConversionsBatchinsert (Maybe Text)
cbUploadType
  = lens _cbUploadType (\ s a -> s{_cbUploadType = a})

-- | User profile ID associated with this request.
cbProFileId :: Lens' ConversionsBatchinsert Int64
cbProFileId
  = lens _cbProFileId (\ s a -> s{_cbProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
cbPayload :: Lens' ConversionsBatchinsert ConversionsBatchInsertRequest
cbPayload
  = lens _cbPayload (\ s a -> s{_cbPayload = a})

-- | JSONP
cbCallback :: Lens' ConversionsBatchinsert (Maybe Text)
cbCallback
  = lens _cbCallback (\ s a -> s{_cbCallback = a})

instance GoogleRequest ConversionsBatchinsert where
        type Rs ConversionsBatchinsert =
             ConversionsBatchInsertResponse
        type Scopes ConversionsBatchinsert =
             '["https://www.googleapis.com/auth/ddmconversions"]
        requestClient ConversionsBatchinsert'{..}
          = go _cbProFileId _cbXgafv _cbUploadProtocol
              _cbAccessToken
              _cbUploadType
              _cbCallback
              (Just AltJSON)
              _cbPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionsBatchinsertResource)
                      mempty

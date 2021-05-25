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
-- Module      : Network.Google.Resource.DFAReporting.Conversions.Batchupdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates existing conversions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.conversions.batchupdate@.
module Network.Google.Resource.DFAReporting.Conversions.Batchupdate
    (
    -- * REST Resource
      ConversionsBatchupdateResource

    -- * Creating a Request
    , conversionsBatchupdate
    , ConversionsBatchupdate

    -- * Request Lenses
    , conXgafv
    , conUploadProtocol
    , conAccessToken
    , conUploadType
    , conProFileId
    , conPayload
    , conCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.conversions.batchupdate@ method which the
-- 'ConversionsBatchupdate' request conforms to.
type ConversionsBatchupdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "conversions" :>
               "batchupdate" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ConversionsBatchUpdateRequest :>
                               Post '[JSON] ConversionsBatchUpdateResponse

-- | Updates existing conversions.
--
-- /See:/ 'conversionsBatchupdate' smart constructor.
data ConversionsBatchupdate =
  ConversionsBatchupdate'
    { _conXgafv :: !(Maybe Xgafv)
    , _conUploadProtocol :: !(Maybe Text)
    , _conAccessToken :: !(Maybe Text)
    , _conUploadType :: !(Maybe Text)
    , _conProFileId :: !(Textual Int64)
    , _conPayload :: !ConversionsBatchUpdateRequest
    , _conCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionsBatchupdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'conXgafv'
--
-- * 'conUploadProtocol'
--
-- * 'conAccessToken'
--
-- * 'conUploadType'
--
-- * 'conProFileId'
--
-- * 'conPayload'
--
-- * 'conCallback'
conversionsBatchupdate
    :: Int64 -- ^ 'conProFileId'
    -> ConversionsBatchUpdateRequest -- ^ 'conPayload'
    -> ConversionsBatchupdate
conversionsBatchupdate pConProFileId_ pConPayload_ =
  ConversionsBatchupdate'
    { _conXgafv = Nothing
    , _conUploadProtocol = Nothing
    , _conAccessToken = Nothing
    , _conUploadType = Nothing
    , _conProFileId = _Coerce # pConProFileId_
    , _conPayload = pConPayload_
    , _conCallback = Nothing
    }


-- | V1 error format.
conXgafv :: Lens' ConversionsBatchupdate (Maybe Xgafv)
conXgafv = lens _conXgafv (\ s a -> s{_conXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
conUploadProtocol :: Lens' ConversionsBatchupdate (Maybe Text)
conUploadProtocol
  = lens _conUploadProtocol
      (\ s a -> s{_conUploadProtocol = a})

-- | OAuth access token.
conAccessToken :: Lens' ConversionsBatchupdate (Maybe Text)
conAccessToken
  = lens _conAccessToken
      (\ s a -> s{_conAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
conUploadType :: Lens' ConversionsBatchupdate (Maybe Text)
conUploadType
  = lens _conUploadType
      (\ s a -> s{_conUploadType = a})

-- | User profile ID associated with this request.
conProFileId :: Lens' ConversionsBatchupdate Int64
conProFileId
  = lens _conProFileId (\ s a -> s{_conProFileId = a})
      . _Coerce

-- | Multipart request metadata.
conPayload :: Lens' ConversionsBatchupdate ConversionsBatchUpdateRequest
conPayload
  = lens _conPayload (\ s a -> s{_conPayload = a})

-- | JSONP
conCallback :: Lens' ConversionsBatchupdate (Maybe Text)
conCallback
  = lens _conCallback (\ s a -> s{_conCallback = a})

instance GoogleRequest ConversionsBatchupdate where
        type Rs ConversionsBatchupdate =
             ConversionsBatchUpdateResponse
        type Scopes ConversionsBatchupdate =
             '["https://www.googleapis.com/auth/ddmconversions"]
        requestClient ConversionsBatchupdate'{..}
          = go _conProFileId _conXgafv _conUploadProtocol
              _conAccessToken
              _conUploadType
              _conCallback
              (Just AltJSON)
              _conPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionsBatchupdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.CustomEvents.Batchinsert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts custom events.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.customEvents.batchinsert@.
module Network.Google.Resource.DFAReporting.CustomEvents.Batchinsert
    (
    -- * REST Resource
      CustomEventsBatchinsertResource

    -- * Creating a Request
    , customEventsBatchinsert
    , CustomEventsBatchinsert

    -- * Request Lenses
    , cebXgafv
    , cebUploadProtocol
    , cebAccessToken
    , cebUploadType
    , cebProFileId
    , cebPayload
    , cebCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.customEvents.batchinsert@ method which the
-- 'CustomEventsBatchinsert' request conforms to.
type CustomEventsBatchinsertResource =
     "dfareporting" :>
       "v3.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "customEvents" :>
               "batchinsert" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CustomEventsBatchInsertRequest :>
                               Post '[JSON] CustomEventsBatchInsertResponse

-- | Inserts custom events.
--
-- /See:/ 'customEventsBatchinsert' smart constructor.
data CustomEventsBatchinsert =
  CustomEventsBatchinsert'
    { _cebXgafv :: !(Maybe Xgafv)
    , _cebUploadProtocol :: !(Maybe Text)
    , _cebAccessToken :: !(Maybe Text)
    , _cebUploadType :: !(Maybe Text)
    , _cebProFileId :: !(Textual Int64)
    , _cebPayload :: !CustomEventsBatchInsertRequest
    , _cebCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomEventsBatchinsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cebXgafv'
--
-- * 'cebUploadProtocol'
--
-- * 'cebAccessToken'
--
-- * 'cebUploadType'
--
-- * 'cebProFileId'
--
-- * 'cebPayload'
--
-- * 'cebCallback'
customEventsBatchinsert
    :: Int64 -- ^ 'cebProFileId'
    -> CustomEventsBatchInsertRequest -- ^ 'cebPayload'
    -> CustomEventsBatchinsert
customEventsBatchinsert pCebProFileId_ pCebPayload_ =
  CustomEventsBatchinsert'
    { _cebXgafv = Nothing
    , _cebUploadProtocol = Nothing
    , _cebAccessToken = Nothing
    , _cebUploadType = Nothing
    , _cebProFileId = _Coerce # pCebProFileId_
    , _cebPayload = pCebPayload_
    , _cebCallback = Nothing
    }


-- | V1 error format.
cebXgafv :: Lens' CustomEventsBatchinsert (Maybe Xgafv)
cebXgafv = lens _cebXgafv (\ s a -> s{_cebXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cebUploadProtocol :: Lens' CustomEventsBatchinsert (Maybe Text)
cebUploadProtocol
  = lens _cebUploadProtocol
      (\ s a -> s{_cebUploadProtocol = a})

-- | OAuth access token.
cebAccessToken :: Lens' CustomEventsBatchinsert (Maybe Text)
cebAccessToken
  = lens _cebAccessToken
      (\ s a -> s{_cebAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cebUploadType :: Lens' CustomEventsBatchinsert (Maybe Text)
cebUploadType
  = lens _cebUploadType
      (\ s a -> s{_cebUploadType = a})

-- | User profile ID associated with this request.
cebProFileId :: Lens' CustomEventsBatchinsert Int64
cebProFileId
  = lens _cebProFileId (\ s a -> s{_cebProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cebPayload :: Lens' CustomEventsBatchinsert CustomEventsBatchInsertRequest
cebPayload
  = lens _cebPayload (\ s a -> s{_cebPayload = a})

-- | JSONP
cebCallback :: Lens' CustomEventsBatchinsert (Maybe Text)
cebCallback
  = lens _cebCallback (\ s a -> s{_cebCallback = a})

instance GoogleRequest CustomEventsBatchinsert where
        type Rs CustomEventsBatchinsert =
             CustomEventsBatchInsertResponse
        type Scopes CustomEventsBatchinsert =
             '["https://www.googleapis.com/auth/ddmconversions"]
        requestClient CustomEventsBatchinsert'{..}
          = go _cebProFileId _cebXgafv _cebUploadProtocol
              _cebAccessToken
              _cebUploadType
              _cebCallback
              (Just AltJSON)
              _cebPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomEventsBatchinsertResource)
                      mempty

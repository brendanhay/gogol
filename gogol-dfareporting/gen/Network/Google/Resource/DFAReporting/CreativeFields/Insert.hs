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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.insert@.
module Network.Google.Resource.DFAReporting.CreativeFields.Insert
    (
    -- * REST Resource
      CreativeFieldsInsertResource

    -- * Creating a Request
    , creativeFieldsInsert
    , CreativeFieldsInsert

    -- * Request Lenses
    , cfiXgafv
    , cfiUploadProtocol
    , cfiAccessToken
    , cfiUploadType
    , cfiProFileId
    , cfiPayload
    , cfiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.insert@ method which the
-- 'CreativeFieldsInsert' request conforms to.
type CreativeFieldsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CreativeField :>
                             Post '[JSON] CreativeField

-- | Inserts a new creative field.
--
-- /See:/ 'creativeFieldsInsert' smart constructor.
data CreativeFieldsInsert =
  CreativeFieldsInsert'
    { _cfiXgafv :: !(Maybe Xgafv)
    , _cfiUploadProtocol :: !(Maybe Text)
    , _cfiAccessToken :: !(Maybe Text)
    , _cfiUploadType :: !(Maybe Text)
    , _cfiProFileId :: !(Textual Int64)
    , _cfiPayload :: !CreativeField
    , _cfiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfiXgafv'
--
-- * 'cfiUploadProtocol'
--
-- * 'cfiAccessToken'
--
-- * 'cfiUploadType'
--
-- * 'cfiProFileId'
--
-- * 'cfiPayload'
--
-- * 'cfiCallback'
creativeFieldsInsert
    :: Int64 -- ^ 'cfiProFileId'
    -> CreativeField -- ^ 'cfiPayload'
    -> CreativeFieldsInsert
creativeFieldsInsert pCfiProFileId_ pCfiPayload_ =
  CreativeFieldsInsert'
    { _cfiXgafv = Nothing
    , _cfiUploadProtocol = Nothing
    , _cfiAccessToken = Nothing
    , _cfiUploadType = Nothing
    , _cfiProFileId = _Coerce # pCfiProFileId_
    , _cfiPayload = pCfiPayload_
    , _cfiCallback = Nothing
    }


-- | V1 error format.
cfiXgafv :: Lens' CreativeFieldsInsert (Maybe Xgafv)
cfiXgafv = lens _cfiXgafv (\ s a -> s{_cfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfiUploadProtocol :: Lens' CreativeFieldsInsert (Maybe Text)
cfiUploadProtocol
  = lens _cfiUploadProtocol
      (\ s a -> s{_cfiUploadProtocol = a})

-- | OAuth access token.
cfiAccessToken :: Lens' CreativeFieldsInsert (Maybe Text)
cfiAccessToken
  = lens _cfiAccessToken
      (\ s a -> s{_cfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfiUploadType :: Lens' CreativeFieldsInsert (Maybe Text)
cfiUploadType
  = lens _cfiUploadType
      (\ s a -> s{_cfiUploadType = a})

-- | User profile ID associated with this request.
cfiProFileId :: Lens' CreativeFieldsInsert Int64
cfiProFileId
  = lens _cfiProFileId (\ s a -> s{_cfiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cfiPayload :: Lens' CreativeFieldsInsert CreativeField
cfiPayload
  = lens _cfiPayload (\ s a -> s{_cfiPayload = a})

-- | JSONP
cfiCallback :: Lens' CreativeFieldsInsert (Maybe Text)
cfiCallback
  = lens _cfiCallback (\ s a -> s{_cfiCallback = a})

instance GoogleRequest CreativeFieldsInsert where
        type Rs CreativeFieldsInsert = CreativeField
        type Scopes CreativeFieldsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsInsert'{..}
          = go _cfiProFileId _cfiXgafv _cfiUploadProtocol
              _cfiAccessToken
              _cfiUploadType
              _cfiCallback
              (Just AltJSON)
              _cfiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsInsertResource)
                      mempty

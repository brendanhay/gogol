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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.insert@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Insert
    (
    -- * REST Resource
      CreativeFieldValuesInsertResource

    -- * Creating a Request
    , creativeFieldValuesInsert
    , CreativeFieldValuesInsert

    -- * Request Lenses
    , cfviCreativeFieldId
    , cfviXgafv
    , cfviUploadProtocol
    , cfviAccessToken
    , cfviUploadType
    , cfviProFileId
    , cfviPayload
    , cfviCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.insert@ method which the
-- 'CreativeFieldValuesInsert' request conforms to.
type CreativeFieldValuesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "creativeFieldId" (Textual Int64) :>
                 "creativeFieldValues" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CreativeFieldValue :>
                                 Post '[JSON] CreativeFieldValue

-- | Inserts a new creative field value.
--
-- /See:/ 'creativeFieldValuesInsert' smart constructor.
data CreativeFieldValuesInsert =
  CreativeFieldValuesInsert'
    { _cfviCreativeFieldId :: !(Textual Int64)
    , _cfviXgafv :: !(Maybe Xgafv)
    , _cfviUploadProtocol :: !(Maybe Text)
    , _cfviAccessToken :: !(Maybe Text)
    , _cfviUploadType :: !(Maybe Text)
    , _cfviProFileId :: !(Textual Int64)
    , _cfviPayload :: !CreativeFieldValue
    , _cfviCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldValuesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfviCreativeFieldId'
--
-- * 'cfviXgafv'
--
-- * 'cfviUploadProtocol'
--
-- * 'cfviAccessToken'
--
-- * 'cfviUploadType'
--
-- * 'cfviProFileId'
--
-- * 'cfviPayload'
--
-- * 'cfviCallback'
creativeFieldValuesInsert
    :: Int64 -- ^ 'cfviCreativeFieldId'
    -> Int64 -- ^ 'cfviProFileId'
    -> CreativeFieldValue -- ^ 'cfviPayload'
    -> CreativeFieldValuesInsert
creativeFieldValuesInsert pCfviCreativeFieldId_ pCfviProFileId_ pCfviPayload_ =
  CreativeFieldValuesInsert'
    { _cfviCreativeFieldId = _Coerce # pCfviCreativeFieldId_
    , _cfviXgafv = Nothing
    , _cfviUploadProtocol = Nothing
    , _cfviAccessToken = Nothing
    , _cfviUploadType = Nothing
    , _cfviProFileId = _Coerce # pCfviProFileId_
    , _cfviPayload = pCfviPayload_
    , _cfviCallback = Nothing
    }


-- | Creative field ID for this creative field value.
cfviCreativeFieldId :: Lens' CreativeFieldValuesInsert Int64
cfviCreativeFieldId
  = lens _cfviCreativeFieldId
      (\ s a -> s{_cfviCreativeFieldId = a})
      . _Coerce

-- | V1 error format.
cfviXgafv :: Lens' CreativeFieldValuesInsert (Maybe Xgafv)
cfviXgafv
  = lens _cfviXgafv (\ s a -> s{_cfviXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfviUploadProtocol :: Lens' CreativeFieldValuesInsert (Maybe Text)
cfviUploadProtocol
  = lens _cfviUploadProtocol
      (\ s a -> s{_cfviUploadProtocol = a})

-- | OAuth access token.
cfviAccessToken :: Lens' CreativeFieldValuesInsert (Maybe Text)
cfviAccessToken
  = lens _cfviAccessToken
      (\ s a -> s{_cfviAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfviUploadType :: Lens' CreativeFieldValuesInsert (Maybe Text)
cfviUploadType
  = lens _cfviUploadType
      (\ s a -> s{_cfviUploadType = a})

-- | User profile ID associated with this request.
cfviProFileId :: Lens' CreativeFieldValuesInsert Int64
cfviProFileId
  = lens _cfviProFileId
      (\ s a -> s{_cfviProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cfviPayload :: Lens' CreativeFieldValuesInsert CreativeFieldValue
cfviPayload
  = lens _cfviPayload (\ s a -> s{_cfviPayload = a})

-- | JSONP
cfviCallback :: Lens' CreativeFieldValuesInsert (Maybe Text)
cfviCallback
  = lens _cfviCallback (\ s a -> s{_cfviCallback = a})

instance GoogleRequest CreativeFieldValuesInsert
         where
        type Rs CreativeFieldValuesInsert =
             CreativeFieldValue
        type Scopes CreativeFieldValuesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldValuesInsert'{..}
          = go _cfviProFileId _cfviCreativeFieldId _cfviXgafv
              _cfviUploadProtocol
              _cfviAccessToken
              _cfviUploadType
              _cfviCallback
              (Just AltJSON)
              _cfviPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesInsertResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.update@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Update
    (
    -- * REST Resource
      CreativeFieldValuesUpdateResource

    -- * Creating a Request
    , creativeFieldValuesUpdate
    , CreativeFieldValuesUpdate

    -- * Request Lenses
    , cfvuCreativeFieldId
    , cfvuXgafv
    , cfvuUploadProtocol
    , cfvuAccessToken
    , cfvuUploadType
    , cfvuProFileId
    , cfvuPayload
    , cfvuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.update@ method which the
-- 'CreativeFieldValuesUpdate' request conforms to.
type CreativeFieldValuesUpdateResource =
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
                                 Put '[JSON] CreativeFieldValue

-- | Updates an existing creative field value.
--
-- /See:/ 'creativeFieldValuesUpdate' smart constructor.
data CreativeFieldValuesUpdate =
  CreativeFieldValuesUpdate'
    { _cfvuCreativeFieldId :: !(Textual Int64)
    , _cfvuXgafv :: !(Maybe Xgafv)
    , _cfvuUploadProtocol :: !(Maybe Text)
    , _cfvuAccessToken :: !(Maybe Text)
    , _cfvuUploadType :: !(Maybe Text)
    , _cfvuProFileId :: !(Textual Int64)
    , _cfvuPayload :: !CreativeFieldValue
    , _cfvuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldValuesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvuCreativeFieldId'
--
-- * 'cfvuXgafv'
--
-- * 'cfvuUploadProtocol'
--
-- * 'cfvuAccessToken'
--
-- * 'cfvuUploadType'
--
-- * 'cfvuProFileId'
--
-- * 'cfvuPayload'
--
-- * 'cfvuCallback'
creativeFieldValuesUpdate
    :: Int64 -- ^ 'cfvuCreativeFieldId'
    -> Int64 -- ^ 'cfvuProFileId'
    -> CreativeFieldValue -- ^ 'cfvuPayload'
    -> CreativeFieldValuesUpdate
creativeFieldValuesUpdate pCfvuCreativeFieldId_ pCfvuProFileId_ pCfvuPayload_ =
  CreativeFieldValuesUpdate'
    { _cfvuCreativeFieldId = _Coerce # pCfvuCreativeFieldId_
    , _cfvuXgafv = Nothing
    , _cfvuUploadProtocol = Nothing
    , _cfvuAccessToken = Nothing
    , _cfvuUploadType = Nothing
    , _cfvuProFileId = _Coerce # pCfvuProFileId_
    , _cfvuPayload = pCfvuPayload_
    , _cfvuCallback = Nothing
    }


-- | Creative field ID for this creative field value.
cfvuCreativeFieldId :: Lens' CreativeFieldValuesUpdate Int64
cfvuCreativeFieldId
  = lens _cfvuCreativeFieldId
      (\ s a -> s{_cfvuCreativeFieldId = a})
      . _Coerce

-- | V1 error format.
cfvuXgafv :: Lens' CreativeFieldValuesUpdate (Maybe Xgafv)
cfvuXgafv
  = lens _cfvuXgafv (\ s a -> s{_cfvuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfvuUploadProtocol :: Lens' CreativeFieldValuesUpdate (Maybe Text)
cfvuUploadProtocol
  = lens _cfvuUploadProtocol
      (\ s a -> s{_cfvuUploadProtocol = a})

-- | OAuth access token.
cfvuAccessToken :: Lens' CreativeFieldValuesUpdate (Maybe Text)
cfvuAccessToken
  = lens _cfvuAccessToken
      (\ s a -> s{_cfvuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfvuUploadType :: Lens' CreativeFieldValuesUpdate (Maybe Text)
cfvuUploadType
  = lens _cfvuUploadType
      (\ s a -> s{_cfvuUploadType = a})

-- | User profile ID associated with this request.
cfvuProFileId :: Lens' CreativeFieldValuesUpdate Int64
cfvuProFileId
  = lens _cfvuProFileId
      (\ s a -> s{_cfvuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cfvuPayload :: Lens' CreativeFieldValuesUpdate CreativeFieldValue
cfvuPayload
  = lens _cfvuPayload (\ s a -> s{_cfvuPayload = a})

-- | JSONP
cfvuCallback :: Lens' CreativeFieldValuesUpdate (Maybe Text)
cfvuCallback
  = lens _cfvuCallback (\ s a -> s{_cfvuCallback = a})

instance GoogleRequest CreativeFieldValuesUpdate
         where
        type Rs CreativeFieldValuesUpdate =
             CreativeFieldValue
        type Scopes CreativeFieldValuesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldValuesUpdate'{..}
          = go _cfvuProFileId _cfvuCreativeFieldId _cfvuXgafv
              _cfvuUploadProtocol
              _cfvuAccessToken
              _cfvuUploadType
              _cfvuCallback
              (Just AltJSON)
              _cfvuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesUpdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.update@.
module Network.Google.Resource.DFAReporting.CreativeFields.Update
    (
    -- * REST Resource
      CreativeFieldsUpdateResource

    -- * Creating a Request
    , creativeFieldsUpdate
    , CreativeFieldsUpdate

    -- * Request Lenses
    , cfuXgafv
    , cfuUploadProtocol
    , cfuAccessToken
    , cfuUploadType
    , cfuProFileId
    , cfuPayload
    , cfuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.update@ method which the
-- 'CreativeFieldsUpdate' request conforms to.
type CreativeFieldsUpdateResource =
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
                             Put '[JSON] CreativeField

-- | Updates an existing creative field.
--
-- /See:/ 'creativeFieldsUpdate' smart constructor.
data CreativeFieldsUpdate =
  CreativeFieldsUpdate'
    { _cfuXgafv :: !(Maybe Xgafv)
    , _cfuUploadProtocol :: !(Maybe Text)
    , _cfuAccessToken :: !(Maybe Text)
    , _cfuUploadType :: !(Maybe Text)
    , _cfuProFileId :: !(Textual Int64)
    , _cfuPayload :: !CreativeField
    , _cfuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfuXgafv'
--
-- * 'cfuUploadProtocol'
--
-- * 'cfuAccessToken'
--
-- * 'cfuUploadType'
--
-- * 'cfuProFileId'
--
-- * 'cfuPayload'
--
-- * 'cfuCallback'
creativeFieldsUpdate
    :: Int64 -- ^ 'cfuProFileId'
    -> CreativeField -- ^ 'cfuPayload'
    -> CreativeFieldsUpdate
creativeFieldsUpdate pCfuProFileId_ pCfuPayload_ =
  CreativeFieldsUpdate'
    { _cfuXgafv = Nothing
    , _cfuUploadProtocol = Nothing
    , _cfuAccessToken = Nothing
    , _cfuUploadType = Nothing
    , _cfuProFileId = _Coerce # pCfuProFileId_
    , _cfuPayload = pCfuPayload_
    , _cfuCallback = Nothing
    }


-- | V1 error format.
cfuXgafv :: Lens' CreativeFieldsUpdate (Maybe Xgafv)
cfuXgafv = lens _cfuXgafv (\ s a -> s{_cfuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfuUploadProtocol :: Lens' CreativeFieldsUpdate (Maybe Text)
cfuUploadProtocol
  = lens _cfuUploadProtocol
      (\ s a -> s{_cfuUploadProtocol = a})

-- | OAuth access token.
cfuAccessToken :: Lens' CreativeFieldsUpdate (Maybe Text)
cfuAccessToken
  = lens _cfuAccessToken
      (\ s a -> s{_cfuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfuUploadType :: Lens' CreativeFieldsUpdate (Maybe Text)
cfuUploadType
  = lens _cfuUploadType
      (\ s a -> s{_cfuUploadType = a})

-- | User profile ID associated with this request.
cfuProFileId :: Lens' CreativeFieldsUpdate Int64
cfuProFileId
  = lens _cfuProFileId (\ s a -> s{_cfuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
cfuPayload :: Lens' CreativeFieldsUpdate CreativeField
cfuPayload
  = lens _cfuPayload (\ s a -> s{_cfuPayload = a})

-- | JSONP
cfuCallback :: Lens' CreativeFieldsUpdate (Maybe Text)
cfuCallback
  = lens _cfuCallback (\ s a -> s{_cfuCallback = a})

instance GoogleRequest CreativeFieldsUpdate where
        type Rs CreativeFieldsUpdate = CreativeField
        type Scopes CreativeFieldsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsUpdate'{..}
          = go _cfuProFileId _cfuXgafv _cfuUploadProtocol
              _cfuAccessToken
              _cfuUploadType
              _cfuCallback
              (Just AltJSON)
              _cfuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsUpdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing creative field value.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFieldValues.delete@.
module Network.Google.Resource.DFAReporting.CreativeFieldValues.Delete
    (
    -- * REST Resource
      CreativeFieldValuesDeleteResource

    -- * Creating a Request
    , creativeFieldValuesDelete
    , CreativeFieldValuesDelete

    -- * Request Lenses
    , cfvdCreativeFieldId
    , cfvdXgafv
    , cfvdUploadProtocol
    , cfvdAccessToken
    , cfvdUploadType
    , cfvdProFileId
    , cfvdId
    , cfvdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFieldValues.delete@ method which the
-- 'CreativeFieldValuesDelete' request conforms to.
type CreativeFieldValuesDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "creativeFieldId" (Textual Int64) :>
                 "creativeFieldValues" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing creative field value.
--
-- /See:/ 'creativeFieldValuesDelete' smart constructor.
data CreativeFieldValuesDelete =
  CreativeFieldValuesDelete'
    { _cfvdCreativeFieldId :: !(Textual Int64)
    , _cfvdXgafv :: !(Maybe Xgafv)
    , _cfvdUploadProtocol :: !(Maybe Text)
    , _cfvdAccessToken :: !(Maybe Text)
    , _cfvdUploadType :: !(Maybe Text)
    , _cfvdProFileId :: !(Textual Int64)
    , _cfvdId :: !(Textual Int64)
    , _cfvdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldValuesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfvdCreativeFieldId'
--
-- * 'cfvdXgafv'
--
-- * 'cfvdUploadProtocol'
--
-- * 'cfvdAccessToken'
--
-- * 'cfvdUploadType'
--
-- * 'cfvdProFileId'
--
-- * 'cfvdId'
--
-- * 'cfvdCallback'
creativeFieldValuesDelete
    :: Int64 -- ^ 'cfvdCreativeFieldId'
    -> Int64 -- ^ 'cfvdProFileId'
    -> Int64 -- ^ 'cfvdId'
    -> CreativeFieldValuesDelete
creativeFieldValuesDelete pCfvdCreativeFieldId_ pCfvdProFileId_ pCfvdId_ =
  CreativeFieldValuesDelete'
    { _cfvdCreativeFieldId = _Coerce # pCfvdCreativeFieldId_
    , _cfvdXgafv = Nothing
    , _cfvdUploadProtocol = Nothing
    , _cfvdAccessToken = Nothing
    , _cfvdUploadType = Nothing
    , _cfvdProFileId = _Coerce # pCfvdProFileId_
    , _cfvdId = _Coerce # pCfvdId_
    , _cfvdCallback = Nothing
    }


-- | Creative field ID for this creative field value.
cfvdCreativeFieldId :: Lens' CreativeFieldValuesDelete Int64
cfvdCreativeFieldId
  = lens _cfvdCreativeFieldId
      (\ s a -> s{_cfvdCreativeFieldId = a})
      . _Coerce

-- | V1 error format.
cfvdXgafv :: Lens' CreativeFieldValuesDelete (Maybe Xgafv)
cfvdXgafv
  = lens _cfvdXgafv (\ s a -> s{_cfvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfvdUploadProtocol :: Lens' CreativeFieldValuesDelete (Maybe Text)
cfvdUploadProtocol
  = lens _cfvdUploadProtocol
      (\ s a -> s{_cfvdUploadProtocol = a})

-- | OAuth access token.
cfvdAccessToken :: Lens' CreativeFieldValuesDelete (Maybe Text)
cfvdAccessToken
  = lens _cfvdAccessToken
      (\ s a -> s{_cfvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfvdUploadType :: Lens' CreativeFieldValuesDelete (Maybe Text)
cfvdUploadType
  = lens _cfvdUploadType
      (\ s a -> s{_cfvdUploadType = a})

-- | User profile ID associated with this request.
cfvdProFileId :: Lens' CreativeFieldValuesDelete Int64
cfvdProFileId
  = lens _cfvdProFileId
      (\ s a -> s{_cfvdProFileId = a})
      . _Coerce

-- | Creative Field Value ID
cfvdId :: Lens' CreativeFieldValuesDelete Int64
cfvdId
  = lens _cfvdId (\ s a -> s{_cfvdId = a}) . _Coerce

-- | JSONP
cfvdCallback :: Lens' CreativeFieldValuesDelete (Maybe Text)
cfvdCallback
  = lens _cfvdCallback (\ s a -> s{_cfvdCallback = a})

instance GoogleRequest CreativeFieldValuesDelete
         where
        type Rs CreativeFieldValuesDelete = ()
        type Scopes CreativeFieldValuesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldValuesDelete'{..}
          = go _cfvdProFileId _cfvdCreativeFieldId _cfvdId
              _cfvdXgafv
              _cfvdUploadProtocol
              _cfvdAccessToken
              _cfvdUploadType
              _cfvdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldValuesDeleteResource)
                      mempty

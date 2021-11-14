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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.creativeFields.delete@.
module Network.Google.Resource.DFAReporting.CreativeFields.Delete
    (
    -- * REST Resource
      CreativeFieldsDeleteResource

    -- * Creating a Request
    , creativeFieldsDelete
    , CreativeFieldsDelete

    -- * Request Lenses
    , cfdXgafv
    , cfdUploadProtocol
    , cfdAccessToken
    , cfdUploadType
    , cfdProFileId
    , cfdId
    , cfdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.delete@ method which the
-- 'CreativeFieldsDelete' request conforms to.
type CreativeFieldsDeleteResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing creative field.
--
-- /See:/ 'creativeFieldsDelete' smart constructor.
data CreativeFieldsDelete =
  CreativeFieldsDelete'
    { _cfdXgafv :: !(Maybe Xgafv)
    , _cfdUploadProtocol :: !(Maybe Text)
    , _cfdAccessToken :: !(Maybe Text)
    , _cfdUploadType :: !(Maybe Text)
    , _cfdProFileId :: !(Textual Int64)
    , _cfdId :: !(Textual Int64)
    , _cfdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreativeFieldsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdXgafv'
--
-- * 'cfdUploadProtocol'
--
-- * 'cfdAccessToken'
--
-- * 'cfdUploadType'
--
-- * 'cfdProFileId'
--
-- * 'cfdId'
--
-- * 'cfdCallback'
creativeFieldsDelete
    :: Int64 -- ^ 'cfdProFileId'
    -> Int64 -- ^ 'cfdId'
    -> CreativeFieldsDelete
creativeFieldsDelete pCfdProFileId_ pCfdId_ =
  CreativeFieldsDelete'
    { _cfdXgafv = Nothing
    , _cfdUploadProtocol = Nothing
    , _cfdAccessToken = Nothing
    , _cfdUploadType = Nothing
    , _cfdProFileId = _Coerce # pCfdProFileId_
    , _cfdId = _Coerce # pCfdId_
    , _cfdCallback = Nothing
    }


-- | V1 error format.
cfdXgafv :: Lens' CreativeFieldsDelete (Maybe Xgafv)
cfdXgafv = lens _cfdXgafv (\ s a -> s{_cfdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cfdUploadProtocol :: Lens' CreativeFieldsDelete (Maybe Text)
cfdUploadProtocol
  = lens _cfdUploadProtocol
      (\ s a -> s{_cfdUploadProtocol = a})

-- | OAuth access token.
cfdAccessToken :: Lens' CreativeFieldsDelete (Maybe Text)
cfdAccessToken
  = lens _cfdAccessToken
      (\ s a -> s{_cfdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cfdUploadType :: Lens' CreativeFieldsDelete (Maybe Text)
cfdUploadType
  = lens _cfdUploadType
      (\ s a -> s{_cfdUploadType = a})

-- | User profile ID associated with this request.
cfdProFileId :: Lens' CreativeFieldsDelete Int64
cfdProFileId
  = lens _cfdProFileId (\ s a -> s{_cfdProFileId = a})
      . _Coerce

-- | Creative Field ID
cfdId :: Lens' CreativeFieldsDelete Int64
cfdId
  = lens _cfdId (\ s a -> s{_cfdId = a}) . _Coerce

-- | JSONP
cfdCallback :: Lens' CreativeFieldsDelete (Maybe Text)
cfdCallback
  = lens _cfdCallback (\ s a -> s{_cfdCallback = a})

instance GoogleRequest CreativeFieldsDelete where
        type Rs CreativeFieldsDelete = ()
        type Scopes CreativeFieldsDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsDelete'{..}
          = go _cfdProFileId _cfdId _cfdXgafv
              _cfdUploadProtocol
              _cfdAccessToken
              _cfdUploadType
              _cfdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsDeleteResource)
                      mempty

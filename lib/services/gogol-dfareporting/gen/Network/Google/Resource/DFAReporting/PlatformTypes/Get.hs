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
-- Module      : Network.Google.Resource.DFAReporting.PlatformTypes.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one platform type by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.platformTypes.get@.
module Network.Google.Resource.DFAReporting.PlatformTypes.Get
    (
    -- * REST Resource
      PlatformTypesGetResource

    -- * Creating a Request
    , platformTypesGet
    , PlatformTypesGet

    -- * Request Lenses
    , ptgXgafv
    , ptgUploadProtocol
    , ptgAccessToken
    , ptgUploadType
    , ptgProFileId
    , ptgId
    , ptgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.platformTypes.get@ method which the
-- 'PlatformTypesGet' request conforms to.
type PlatformTypesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "platformTypes" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] PlatformType

-- | Gets one platform type by ID.
--
-- /See:/ 'platformTypesGet' smart constructor.
data PlatformTypesGet =
  PlatformTypesGet'
    { _ptgXgafv :: !(Maybe Xgafv)
    , _ptgUploadProtocol :: !(Maybe Text)
    , _ptgAccessToken :: !(Maybe Text)
    , _ptgUploadType :: !(Maybe Text)
    , _ptgProFileId :: !(Textual Int64)
    , _ptgId :: !(Textual Int64)
    , _ptgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlatformTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgXgafv'
--
-- * 'ptgUploadProtocol'
--
-- * 'ptgAccessToken'
--
-- * 'ptgUploadType'
--
-- * 'ptgProFileId'
--
-- * 'ptgId'
--
-- * 'ptgCallback'
platformTypesGet
    :: Int64 -- ^ 'ptgProFileId'
    -> Int64 -- ^ 'ptgId'
    -> PlatformTypesGet
platformTypesGet pPtgProFileId_ pPtgId_ =
  PlatformTypesGet'
    { _ptgXgafv = Nothing
    , _ptgUploadProtocol = Nothing
    , _ptgAccessToken = Nothing
    , _ptgUploadType = Nothing
    , _ptgProFileId = _Coerce # pPtgProFileId_
    , _ptgId = _Coerce # pPtgId_
    , _ptgCallback = Nothing
    }


-- | V1 error format.
ptgXgafv :: Lens' PlatformTypesGet (Maybe Xgafv)
ptgXgafv = lens _ptgXgafv (\ s a -> s{_ptgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptgUploadProtocol :: Lens' PlatformTypesGet (Maybe Text)
ptgUploadProtocol
  = lens _ptgUploadProtocol
      (\ s a -> s{_ptgUploadProtocol = a})

-- | OAuth access token.
ptgAccessToken :: Lens' PlatformTypesGet (Maybe Text)
ptgAccessToken
  = lens _ptgAccessToken
      (\ s a -> s{_ptgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptgUploadType :: Lens' PlatformTypesGet (Maybe Text)
ptgUploadType
  = lens _ptgUploadType
      (\ s a -> s{_ptgUploadType = a})

-- | User profile ID associated with this request.
ptgProFileId :: Lens' PlatformTypesGet Int64
ptgProFileId
  = lens _ptgProFileId (\ s a -> s{_ptgProFileId = a})
      . _Coerce

-- | Platform type ID.
ptgId :: Lens' PlatformTypesGet Int64
ptgId
  = lens _ptgId (\ s a -> s{_ptgId = a}) . _Coerce

-- | JSONP
ptgCallback :: Lens' PlatformTypesGet (Maybe Text)
ptgCallback
  = lens _ptgCallback (\ s a -> s{_ptgCallback = a})

instance GoogleRequest PlatformTypesGet where
        type Rs PlatformTypesGet = PlatformType
        type Scopes PlatformTypesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlatformTypesGet'{..}
          = go _ptgProFileId _ptgId _ptgXgafv
              _ptgUploadProtocol
              _ptgAccessToken
              _ptgUploadType
              _ptgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlatformTypesGetResource)
                      mempty

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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one size by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sizes.get@.
module Network.Google.Resource.DFAReporting.Sizes.Get
    (
    -- * REST Resource
      SizesGetResource

    -- * Creating a Request
    , sizesGet
    , SizesGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgProFileId
    , sgId
    , sgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sizes.get@ method which the
-- 'SizesGet' request conforms to.
type SizesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sizes" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Size

-- | Gets one size by ID.
--
-- /See:/ 'sizesGet' smart constructor.
data SizesGet =
  SizesGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken :: !(Maybe Text)
    , _sgUploadType :: !(Maybe Text)
    , _sgProFileId :: !(Textual Int64)
    , _sgId :: !(Textual Int64)
    , _sgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SizesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgProFileId'
--
-- * 'sgId'
--
-- * 'sgCallback'
sizesGet
    :: Int64 -- ^ 'sgProFileId'
    -> Int64 -- ^ 'sgId'
    -> SizesGet
sizesGet pSgProFileId_ pSgId_ =
  SizesGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgProFileId = _Coerce # pSgProFileId_
    , _sgId = _Coerce # pSgId_
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' SizesGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SizesGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' SizesGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SizesGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | User profile ID associated with this request.
sgProFileId :: Lens' SizesGet Int64
sgProFileId
  = lens _sgProFileId (\ s a -> s{_sgProFileId = a}) .
      _Coerce

-- | Size ID.
sgId :: Lens' SizesGet Int64
sgId = lens _sgId (\ s a -> s{_sgId = a}) . _Coerce

-- | JSONP
sgCallback :: Lens' SizesGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest SizesGet where
        type Rs SizesGet = Size
        type Scopes SizesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SizesGet'{..}
          = go _sgProFileId _sgId _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesGetResource)
                      mempty

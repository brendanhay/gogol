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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new size.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sizes.insert@.
module Network.Google.Resource.DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertResource

    -- * Creating a Request
    , sizesInsert
    , SizesInsert

    -- * Request Lenses
    , siXgafv
    , siUploadProtocol
    , siAccessToken
    , siUploadType
    , siProFileId
    , siPayload
    , siCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sizes.insert@ method which the
-- 'SizesInsert' request conforms to.
type SizesInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sizes" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Size :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert' smart constructor.
data SizesInsert =
  SizesInsert'
    { _siXgafv :: !(Maybe Xgafv)
    , _siUploadProtocol :: !(Maybe Text)
    , _siAccessToken :: !(Maybe Text)
    , _siUploadType :: !(Maybe Text)
    , _siProFileId :: !(Textual Int64)
    , _siPayload :: !Size
    , _siCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SizesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siXgafv'
--
-- * 'siUploadProtocol'
--
-- * 'siAccessToken'
--
-- * 'siUploadType'
--
-- * 'siProFileId'
--
-- * 'siPayload'
--
-- * 'siCallback'
sizesInsert
    :: Int64 -- ^ 'siProFileId'
    -> Size -- ^ 'siPayload'
    -> SizesInsert
sizesInsert pSiProFileId_ pSiPayload_ =
  SizesInsert'
    { _siXgafv = Nothing
    , _siUploadProtocol = Nothing
    , _siAccessToken = Nothing
    , _siUploadType = Nothing
    , _siProFileId = _Coerce # pSiProFileId_
    , _siPayload = pSiPayload_
    , _siCallback = Nothing
    }


-- | V1 error format.
siXgafv :: Lens' SizesInsert (Maybe Xgafv)
siXgafv = lens _siXgafv (\ s a -> s{_siXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
siUploadProtocol :: Lens' SizesInsert (Maybe Text)
siUploadProtocol
  = lens _siUploadProtocol
      (\ s a -> s{_siUploadProtocol = a})

-- | OAuth access token.
siAccessToken :: Lens' SizesInsert (Maybe Text)
siAccessToken
  = lens _siAccessToken
      (\ s a -> s{_siAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
siUploadType :: Lens' SizesInsert (Maybe Text)
siUploadType
  = lens _siUploadType (\ s a -> s{_siUploadType = a})

-- | User profile ID associated with this request.
siProFileId :: Lens' SizesInsert Int64
siProFileId
  = lens _siProFileId (\ s a -> s{_siProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
siPayload :: Lens' SizesInsert Size
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | JSONP
siCallback :: Lens' SizesInsert (Maybe Text)
siCallback
  = lens _siCallback (\ s a -> s{_siCallback = a})

instance GoogleRequest SizesInsert where
        type Rs SizesInsert = Size
        type Scopes SizesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SizesInsert'{..}
          = go _siProFileId _siXgafv _siUploadProtocol
              _siAccessToken
              _siUploadType
              _siCallback
              (Just AltJSON)
              _siPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesInsertResource)
                      mempty

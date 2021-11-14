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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of sizes, possibly filtered. Retrieved sizes are
-- globally unique and may include values not currently in use by your
-- account. Due to this, the list of sizes returned by this method may
-- differ from the list seen in the Trafficking UI.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.sizes.list@.
module Network.Google.Resource.DFAReporting.Sizes.List
    (
    -- * REST Resource
      SizesListResource

    -- * Creating a Request
    , sizesList
    , SizesList

    -- * Request Lenses
    , slXgafv
    , slHeight
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slIds
    , slWidth
    , slProFileId
    , slIabStandard
    , slCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.sizes.list@ method which the
-- 'SizesList' request conforms to.
type SizesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sizes" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "height" (Textual Int32) :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "width" (Textual Int32) :>
                             QueryParam "iabStandard" Bool :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] SizesListResponse

-- | Retrieves a list of sizes, possibly filtered. Retrieved sizes are
-- globally unique and may include values not currently in use by your
-- account. Due to this, the list of sizes returned by this method may
-- differ from the list seen in the Trafficking UI.
--
-- /See:/ 'sizesList' smart constructor.
data SizesList =
  SizesList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slHeight :: !(Maybe (Textual Int32))
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slIds :: !(Maybe [Textual Int64])
    , _slWidth :: !(Maybe (Textual Int32))
    , _slProFileId :: !(Textual Int64)
    , _slIabStandard :: !(Maybe Bool)
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SizesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slHeight'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slIds'
--
-- * 'slWidth'
--
-- * 'slProFileId'
--
-- * 'slIabStandard'
--
-- * 'slCallback'
sizesList
    :: Int64 -- ^ 'slProFileId'
    -> SizesList
sizesList pSlProFileId_ =
  SizesList'
    { _slXgafv = Nothing
    , _slHeight = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slIds = Nothing
    , _slWidth = Nothing
    , _slProFileId = _Coerce # pSlProFileId_
    , _slIabStandard = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' SizesList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Select only sizes with this height.
slHeight :: Lens' SizesList (Maybe Int32)
slHeight
  = lens _slHeight (\ s a -> s{_slHeight = a}) .
      mapping _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' SizesList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' SizesList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' SizesList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Select only sizes with these IDs.
slIds :: Lens' SizesList [Int64]
slIds
  = lens _slIds (\ s a -> s{_slIds = a}) . _Default .
      _Coerce

-- | Select only sizes with this width.
slWidth :: Lens' SizesList (Maybe Int32)
slWidth
  = lens _slWidth (\ s a -> s{_slWidth = a}) .
      mapping _Coerce

-- | User profile ID associated with this request.
slProFileId :: Lens' SizesList Int64
slProFileId
  = lens _slProFileId (\ s a -> s{_slProFileId = a}) .
      _Coerce

-- | Select only IAB standard sizes.
slIabStandard :: Lens' SizesList (Maybe Bool)
slIabStandard
  = lens _slIabStandard
      (\ s a -> s{_slIabStandard = a})

-- | JSONP
slCallback :: Lens' SizesList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest SizesList where
        type Rs SizesList = SizesListResponse
        type Scopes SizesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SizesList'{..}
          = go _slProFileId _slXgafv _slHeight
              _slUploadProtocol
              _slAccessToken
              _slUploadType
              (_slIds ^. _Default)
              _slWidth
              _slIabStandard
              _slCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesListResource)
                      mempty

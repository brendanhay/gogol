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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of sizes, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sizes.list@.
module Network.Google.Resource.DFAReporting.Sizes.List
    (
    -- * REST Resource
      SizesListResource

    -- * Creating a Request
    , sizesList
    , SizesList

    -- * Request Lenses
    , slHeight
    , slIds
    , slWidth
    , slProFileId
    , slIabStandard
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sizes.list@ method which the
-- 'SizesList' request conforms to.
type SizesListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sizes" :>
               QueryParam "height" (Textual Int32) :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "width" (Textual Int32) :>
                     QueryParam "iabStandard" Bool :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] SizesListResponse

-- | Retrieves a list of sizes, possibly filtered.
--
-- /See:/ 'sizesList' smart constructor.
data SizesList = SizesList
    { _slHeight      :: !(Maybe (Textual Int32))
    , _slIds         :: !(Maybe [Textual Int64])
    , _slWidth       :: !(Maybe (Textual Int32))
    , _slProFileId   :: !(Textual Int64)
    , _slIabStandard :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slHeight'
--
-- * 'slIds'
--
-- * 'slWidth'
--
-- * 'slProFileId'
--
-- * 'slIabStandard'
sizesList
    :: Int64 -- ^ 'slProFileId'
    -> SizesList
sizesList pSlProFileId_ =
    SizesList
    { _slHeight = Nothing
    , _slIds = Nothing
    , _slWidth = Nothing
    , _slProFileId = _Coerce # pSlProFileId_
    , _slIabStandard = Nothing
    }

-- | Select only sizes with this height.
slHeight :: Lens' SizesList (Maybe Int32)
slHeight
  = lens _slHeight (\ s a -> s{_slHeight = a}) .
      mapping _Coerce

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

instance GoogleRequest SizesList where
        type Rs SizesList = SizesListResponse
        type Scopes SizesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SizesList{..}
          = go _slProFileId _slHeight (_slIds ^. _Default)
              _slWidth
              _slIabStandard
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SizesListResource)
                      mempty

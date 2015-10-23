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
-- Module      : Network.Google.Resource.FusionTables.Style.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of styles.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.list@.
module Network.Google.Resource.FusionTables.Style.List
    (
    -- * REST Resource
      StyleListResource

    -- * Creating a Request
    , styleList
    , StyleList

    -- * Request Lenses
    , slPageToken
    , slTableId
    , slMaxResults
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.style.list@ method which the
-- 'StyleList' request conforms to.
type StyleListResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "styles" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (JSONText Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] StyleSettingList

-- | Retrieves a list of styles.
--
-- /See:/ 'styleList' smart constructor.
data StyleList = StyleList
    { _slPageToken  :: !(Maybe Text)
    , _slTableId    :: !Text
    , _slMaxResults :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slPageToken'
--
-- * 'slTableId'
--
-- * 'slMaxResults'
styleList
    :: Text -- ^ 'slTableId'
    -> StyleList
styleList pSlTableId_ =
    StyleList
    { _slPageToken = Nothing
    , _slTableId = pSlTableId_
    , _slMaxResults = Nothing
    }

-- | Continuation token specifying which result page to return. Optional.
slPageToken :: Lens' StyleList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Table whose styles are being listed
slTableId :: Lens' StyleList Text
slTableId
  = lens _slTableId (\ s a -> s{_slTableId = a})

-- | Maximum number of styles to return. Optional. Default is 5.
slMaxResults :: Lens' StyleList (Maybe Word32)
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . mapping _Coerce

instance GoogleRequest StyleList where
        type Rs StyleList = StyleSettingList
        requestClient StyleList{..}
          = go _slTableId _slPageToken _slMaxResults
              (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy StyleListResource)
                      mempty

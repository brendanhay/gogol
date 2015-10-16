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
-- Module      : Network.Google.Resource.FusionTables.Style.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesStyleDelete@.
module Network.Google.Resource.FusionTables.Style.Delete
    (
    -- * REST Resource
      StyleDeleteResource

    -- * Creating a Request
    , styleDelete'
    , StyleDelete'

    -- * Request Lenses
    , sdStyleId
    , sdTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesStyleDelete@ method which the
-- 'StyleDelete'' request conforms to.
type StyleDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "styles" :>
           Capture "styleId" Int32 :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a style.
--
-- /See:/ 'styleDelete'' smart constructor.
data StyleDelete' = StyleDelete'
    { _sdStyleId :: !Int32
    , _sdTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdStyleId'
--
-- * 'sdTableId'
styleDelete'
    :: Int32 -- ^ 'styleId'
    -> Text -- ^ 'tableId'
    -> StyleDelete'
styleDelete' pSdStyleId_ pSdTableId_ =
    StyleDelete'
    { _sdStyleId = pSdStyleId_
    , _sdTableId = pSdTableId_
    }

-- | Identifier (within a table) for the style being deleted
sdStyleId :: Lens' StyleDelete' Int32
sdStyleId
  = lens _sdStyleId (\ s a -> s{_sdStyleId = a})

-- | Table from which the style is being deleted
sdTableId :: Lens' StyleDelete' Text
sdTableId
  = lens _sdTableId (\ s a -> s{_sdTableId = a})

instance GoogleRequest StyleDelete' where
        type Rs StyleDelete' = ()
        requestClient StyleDelete'{..}
          = go _sdTableId _sdStyleId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy StyleDeleteResource)
                      mempty

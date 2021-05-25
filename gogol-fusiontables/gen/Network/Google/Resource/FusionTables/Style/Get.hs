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
-- Module      : Network.Google.Resource.FusionTables.Style.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.get@.
module Network.Google.Resource.FusionTables.Style.Get
    (
    -- * REST Resource
      StyleGetResource

    -- * Creating a Request
    , styleGet
    , StyleGet

    -- * Request Lenses
    , sgStyleId
    , sgTableId
    ) where

import Network.Google.FusionTables.Types
import Network.Google.Prelude

-- | A resource alias for @fusiontables.style.get@ method which the
-- 'StyleGet' request conforms to.
type StyleGetResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "styles" :>
               Capture "styleId" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] StyleSetting

-- | Gets a specific style.
--
-- /See:/ 'styleGet' smart constructor.
data StyleGet =
  StyleGet'
    { _sgStyleId :: !(Textual Int32)
    , _sgTableId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StyleGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgStyleId'
--
-- * 'sgTableId'
styleGet
    :: Int32 -- ^ 'sgStyleId'
    -> Text -- ^ 'sgTableId'
    -> StyleGet
styleGet pSgStyleId_ pSgTableId_ =
  StyleGet' {_sgStyleId = _Coerce # pSgStyleId_, _sgTableId = pSgTableId_}


-- | Identifier (integer) for a specific style in a table
sgStyleId :: Lens' StyleGet Int32
sgStyleId
  = lens _sgStyleId (\ s a -> s{_sgStyleId = a}) .
      _Coerce

-- | Table to which the requested style belongs
sgTableId :: Lens' StyleGet Text
sgTableId
  = lens _sgTableId (\ s a -> s{_sgTableId = a})

instance GoogleRequest StyleGet where
        type Rs StyleGet = StyleSetting
        type Scopes StyleGet =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient StyleGet'{..}
          = go _sgTableId _sgStyleId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy StyleGetResource)
                      mempty

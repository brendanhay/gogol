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
-- Module      : Network.Google.Resource.FusionTables.Style.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing style. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.patch@.
module Network.Google.Resource.FusionTables.Style.Patch
    (
    -- * REST Resource
      StylePatchResource

    -- * Creating a Request
    , stylePatch
    , StylePatch

    -- * Request Lenses
    , spPayload
    , spStyleId
    , spTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.style.patch@ method which the
-- 'StylePatch' request conforms to.
type StylePatchResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "styles" :>
               Capture "styleId" (Textual Int32) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] StyleSetting :>
                     Patch '[JSON] StyleSetting

-- | Updates an existing style. This method supports patch semantics.
--
-- /See:/ 'stylePatch' smart constructor.
data StylePatch = StylePatch
    { _spPayload :: !StyleSetting
    , _spStyleId :: !(Textual Int32)
    , _spTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StylePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spPayload'
--
-- * 'spStyleId'
--
-- * 'spTableId'
stylePatch
    :: StyleSetting -- ^ 'spPayload'
    -> Int32 -- ^ 'spStyleId'
    -> Text -- ^ 'spTableId'
    -> StylePatch
stylePatch pSpPayload_ pSpStyleId_ pSpTableId_ =
    StylePatch
    { _spPayload = pSpPayload_
    , _spStyleId = _Coerce # pSpStyleId_
    , _spTableId = pSpTableId_
    }

-- | Multipart request metadata.
spPayload :: Lens' StylePatch StyleSetting
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Identifier (within a table) for the style being updated.
spStyleId :: Lens' StylePatch Int32
spStyleId
  = lens _spStyleId (\ s a -> s{_spStyleId = a}) .
      _Coerce

-- | Table whose style is being updated.
spTableId :: Lens' StylePatch Text
spTableId
  = lens _spTableId (\ s a -> s{_spTableId = a})

instance GoogleRequest StylePatch where
        type Rs StylePatch = StyleSetting
        requestClient StylePatch{..}
          = go _spTableId _spStyleId (Just AltJSON) _spPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy StylePatchResource)
                      mempty

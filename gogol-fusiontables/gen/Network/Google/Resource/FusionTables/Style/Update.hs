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
-- Module      : Network.Google.Resource.FusionTables.Style.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.update@.
module Network.Google.Resource.FusionTables.Style.Update
    (
    -- * REST Resource
      StyleUpdateResource

    -- * Creating a Request
    , styleUpdate
    , StyleUpdate

    -- * Request Lenses
    , suPayload
    , suStyleId
    , suTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.style.update@ method which the
-- 'StyleUpdate' request conforms to.
type StyleUpdateResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "styles" :>
               Capture "styleId" Int32 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] StyleSetting :>
                     Put '[JSON] StyleSetting

-- | Updates an existing style.
--
-- /See:/ 'styleUpdate' smart constructor.
data StyleUpdate = StyleUpdate
    { _suPayload :: !StyleSetting
    , _suStyleId :: !Int32
    , _suTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StyleUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suPayload'
--
-- * 'suStyleId'
--
-- * 'suTableId'
styleUpdate
    :: StyleSetting -- ^ 'suPayload'
    -> Int32 -- ^ 'suStyleId'
    -> Text -- ^ 'suTableId'
    -> StyleUpdate
styleUpdate pSuPayload_ pSuStyleId_ pSuTableId_ =
    StyleUpdate
    { _suPayload = pSuPayload_
    , _suStyleId = pSuStyleId_
    , _suTableId = pSuTableId_
    }

-- | Multipart request metadata.
suPayload :: Lens' StyleUpdate StyleSetting
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | Identifier (within a table) for the style being updated.
suStyleId :: Lens' StyleUpdate Int32
suStyleId
  = lens _suStyleId (\ s a -> s{_suStyleId = a})

-- | Table whose style is being updated.
suTableId :: Lens' StyleUpdate Text
suTableId
  = lens _suTableId (\ s a -> s{_suTableId = a})

instance GoogleRequest StyleUpdate where
        type Rs StyleUpdate = StyleSetting
        requestClient StyleUpdate{..}
          = go _suTableId _suStyleId (Just AltJSON) _suPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy StyleUpdateResource)
                      mempty

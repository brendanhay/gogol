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
-- Module      : Network.Google.Resource.FusionTables.Style.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new style for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.insert@.
module Network.Google.Resource.FusionTables.Style.Insert
    (
    -- * REST Resource
      StyleInsertResource

    -- * Creating a Request
    , styleInsert
    , StyleInsert

    -- * Request Lenses
    , siPayload
    , siTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.style.insert@ method which the
-- 'StyleInsert' request conforms to.
type StyleInsertResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "styles" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] StyleSetting :>
                   Post '[JSON] StyleSetting

-- | Adds a new style for the table.
--
-- /See:/ 'styleInsert' smart constructor.
data StyleInsert =
  StyleInsert'
    { _siPayload :: !StyleSetting
    , _siTableId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StyleInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPayload'
--
-- * 'siTableId'
styleInsert
    :: StyleSetting -- ^ 'siPayload'
    -> Text -- ^ 'siTableId'
    -> StyleInsert
styleInsert pSiPayload_ pSiTableId_ =
  StyleInsert' {_siPayload = pSiPayload_, _siTableId = pSiTableId_}

-- | Multipart request metadata.
siPayload :: Lens' StyleInsert StyleSetting
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Table for which a new style is being added
siTableId :: Lens' StyleInsert Text
siTableId
  = lens _siTableId (\ s a -> s{_siTableId = a})

instance GoogleRequest StyleInsert where
        type Rs StyleInsert = StyleSetting
        type Scopes StyleInsert =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient StyleInsert'{..}
          = go _siTableId (Just AltJSON) _siPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy StyleInsertResource)
                      mempty

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
-- Module      : Network.Google.Resource.FusionTables.Template.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new template for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateInsert@.
module Network.Google.Resource.FusionTables.Template.Insert
    (
    -- * REST Resource
      TemplateInsertResource

    -- * Creating a Request
    , templateInsert'
    , TemplateInsert'

    -- * Request Lenses
    , tiPayload
    , tiTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateInsert@ method which the
-- 'TemplateInsert'' request conforms to.
type TemplateInsertResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Template :> Post '[JSON] Template

-- | Creates a new template for the table.
--
-- /See:/ 'templateInsert'' smart constructor.
data TemplateInsert' = TemplateInsert'
    { _tiPayload :: !Template
    , _tiTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPayload'
--
-- * 'tiTableId'
templateInsert'
    :: Template -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TemplateInsert'
templateInsert' pTiPayload_ pTiTableId_ =
    TemplateInsert'
    { _tiPayload = pTiPayload_
    , _tiTableId = pTiTableId_
    }

-- | Multipart request metadata.
tiPayload :: Lens' TemplateInsert' Template
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | Table for which a new template is being created
tiTableId :: Lens' TemplateInsert' Text
tiTableId
  = lens _tiTableId (\ s a -> s{_tiTableId = a})

instance GoogleRequest TemplateInsert' where
        type Rs TemplateInsert' = Template
        requestClient TemplateInsert'{..}
          = go _tiTableId (Just AltJSON) _tiPayload
              fusionTables
          where go
                  = buildClient (Proxy :: Proxy TemplateInsertResource)
                      mempty

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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new template for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.insert@.
module Network.Google.Resource.FusionTables.Template.Insert
    (
    -- * REST Resource
      TemplateInsertResource

    -- * Creating a Request
    , templateInsert
    , TemplateInsert

    -- * Request Lenses
    , temPayload
    , temTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.template.insert@ method which the
-- 'TemplateInsert' request conforms to.
type TemplateInsertResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "templates" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Template :> Post '[JSON] Template

-- | Creates a new template for the table.
--
-- /See:/ 'templateInsert' smart constructor.
data TemplateInsert = TemplateInsert'
    { _temPayload :: !Template
    , _temTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temPayload'
--
-- * 'temTableId'
templateInsert
    :: Template -- ^ 'temPayload'
    -> Text -- ^ 'temTableId'
    -> TemplateInsert
templateInsert pTemPayload_ pTemTableId_ =
    TemplateInsert'
    { _temPayload = pTemPayload_
    , _temTableId = pTemTableId_
    }

-- | Multipart request metadata.
temPayload :: Lens' TemplateInsert Template
temPayload
  = lens _temPayload (\ s a -> s{_temPayload = a})

-- | Table for which a new template is being created
temTableId :: Lens' TemplateInsert Text
temTableId
  = lens _temTableId (\ s a -> s{_temTableId = a})

instance GoogleRequest TemplateInsert where
        type Rs TemplateInsert = Template
        type Scopes TemplateInsert =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient TemplateInsert'{..}
          = go _temTableId (Just AltJSON) _temPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateInsertResource)
                      mempty

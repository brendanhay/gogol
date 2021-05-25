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
-- Module      : Network.Google.Resource.FusionTables.Template.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.delete@.
module Network.Google.Resource.FusionTables.Template.Delete
    (
    -- * REST Resource
      TemplateDeleteResource

    -- * Creating a Request
    , templateDelete
    , TemplateDelete

    -- * Request Lenses
    , tTemplateId
    , tTableId
    ) where

import Network.Google.FusionTables.Types
import Network.Google.Prelude

-- | A resource alias for @fusiontables.template.delete@ method which the
-- 'TemplateDelete' request conforms to.
type TemplateDeleteResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "templates" :>
               Capture "templateId" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a template
--
-- /See:/ 'templateDelete' smart constructor.
data TemplateDelete =
  TemplateDelete'
    { _tTemplateId :: !(Textual Int32)
    , _tTableId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TemplateDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTemplateId'
--
-- * 'tTableId'
templateDelete
    :: Int32 -- ^ 'tTemplateId'
    -> Text -- ^ 'tTableId'
    -> TemplateDelete
templateDelete pTTemplateId_ pTTableId_ =
  TemplateDelete'
    {_tTemplateId = _Coerce # pTTemplateId_, _tTableId = pTTableId_}


-- | Identifier for the template which is being deleted
tTemplateId :: Lens' TemplateDelete Int32
tTemplateId
  = lens _tTemplateId (\ s a -> s{_tTemplateId = a}) .
      _Coerce

-- | Table from which the template is being deleted
tTableId :: Lens' TemplateDelete Text
tTableId = lens _tTableId (\ s a -> s{_tTableId = a})

instance GoogleRequest TemplateDelete where
        type Rs TemplateDelete = ()
        type Scopes TemplateDelete =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient TemplateDelete'{..}
          = go _tTableId _tTemplateId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateDeleteResource)
                      mempty

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
-- Module      : Network.Google.Resource.FusionTables.Template.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific template by its id
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.get@.
module Network.Google.Resource.FusionTables.Template.Get
    (
    -- * REST Resource
      TemplateGetResource

    -- * Creating a Request
    , templateGet
    , TemplateGet

    -- * Request Lenses
    , temeTemplateId
    , temeTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.template.get@ method which the
-- 'TemplateGet' request conforms to.
type TemplateGetResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "templates" :>
               Capture "templateId" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Template

-- | Retrieves a specific template by its id
--
-- /See:/ 'templateGet' smart constructor.
data TemplateGet =
  TemplateGet'
    { _temeTemplateId :: !(Textual Int32)
    , _temeTableId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TemplateGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temeTemplateId'
--
-- * 'temeTableId'
templateGet
    :: Int32 -- ^ 'temeTemplateId'
    -> Text -- ^ 'temeTableId'
    -> TemplateGet
templateGet pTemeTemplateId_ pTemeTableId_ =
  TemplateGet'
    {_temeTemplateId = _Coerce # pTemeTemplateId_, _temeTableId = pTemeTableId_}


-- | Identifier for the template that is being requested
temeTemplateId :: Lens' TemplateGet Int32
temeTemplateId
  = lens _temeTemplateId
      (\ s a -> s{_temeTemplateId = a})
      . _Coerce

-- | Table to which the template belongs
temeTableId :: Lens' TemplateGet Text
temeTableId
  = lens _temeTableId (\ s a -> s{_temeTableId = a})

instance GoogleRequest TemplateGet where
        type Rs TemplateGet = Template
        type Scopes TemplateGet =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient TemplateGet'{..}
          = go _temeTableId _temeTemplateId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateGetResource)
                      mempty

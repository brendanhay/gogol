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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific template by its id
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateGet@.
module Network.Google.Resource.FusionTables.Template.Get
    (
    -- * REST Resource
      TemplateGetResource

    -- * Creating a Request
    , templateGet'
    , TemplateGet'

    -- * Request Lenses
    , tggTemplateId
    , tggTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateGet@ method which the
-- 'TemplateGet'' request conforms to.
type TemplateGetResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Template

-- | Retrieves a specific template by its id
--
-- /See:/ 'templateGet'' smart constructor.
data TemplateGet' = TemplateGet'
    { _tggTemplateId :: !Int32
    , _tggTableId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tggTemplateId'
--
-- * 'tggTableId'
templateGet'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateGet'
templateGet' pTggTemplateId_ pTggTableId_ =
    TemplateGet'
    { _tggTemplateId = pTggTemplateId_
    , _tggTableId = pTggTableId_
    }

-- | Identifier for the template that is being requested
tggTemplateId :: Lens' TemplateGet' Int32
tggTemplateId
  = lens _tggTemplateId
      (\ s a -> s{_tggTemplateId = a})

-- | Table to which the template belongs
tggTableId :: Lens' TemplateGet' Text
tggTableId
  = lens _tggTableId (\ s a -> s{_tggTableId = a})

instance GoogleRequest TemplateGet' where
        type Rs TemplateGet' = Template
        requestClient TemplateGet'{..}
          = go _tggTableId _tggTemplateId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateGetResource)
                      mempty

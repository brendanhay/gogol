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
-- Module      : Network.Google.Resource.FusionTables.Template.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplatePatch@.
module Network.Google.Resource.FusionTables.Template.Patch
    (
    -- * REST Resource
      TemplatePatchResource

    -- * Creating a Request
    , templatePatch'
    , TemplatePatch'

    -- * Request Lenses
    , tpTemplateId
    , tpPayload
    , tpTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplatePatch@ method which the
-- 'TemplatePatch'' request conforms to.
type TemplatePatchResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Template :> Patch '[JSON] Template

-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ 'templatePatch'' smart constructor.
data TemplatePatch' = TemplatePatch'
    { _tpTemplateId :: !Int32
    , _tpPayload    :: !Template
    , _tpTableId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplatePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpTemplateId'
--
-- * 'tpPayload'
--
-- * 'tpTableId'
templatePatch'
    :: Int32 -- ^ 'templateId'
    -> Template -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TemplatePatch'
templatePatch' pTpTemplateId_ pTpPayload_ pTpTableId_ =
    TemplatePatch'
    { _tpTemplateId = pTpTemplateId_
    , _tpPayload = pTpPayload_
    , _tpTableId = pTpTableId_
    }

-- | Identifier for the template that is being updated
tpTemplateId :: Lens' TemplatePatch' Int32
tpTemplateId
  = lens _tpTemplateId (\ s a -> s{_tpTemplateId = a})

-- | Multipart request metadata.
tpPayload :: Lens' TemplatePatch' Template
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | Table to which the updated template belongs
tpTableId :: Lens' TemplatePatch' Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

instance GoogleRequest TemplatePatch' where
        type Rs TemplatePatch' = Template
        requestClient TemplatePatch'{..}
          = go _tpTableId _tpTemplateId (Just AltJSON)
              _tpPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplatePatchResource)
                      mempty
